(defglobal ?*e_const_file* = e_const_fp)
(defglobal ?*node_fp1_file* = node_fp1)
(defglobal ?*count* = 0)

(defrule rel_c_order
(declare (salience 35))
?f0<-(Head-Level-Mother-Daughters  Sen  3  S1  ?X $?d ?Y ?CC $?d1 ?CC1)
(Head-Level-Mother-Daughters  *  3  ?CC )
(Head-Level-Mother-Daughters  *  3  ?CC1)
(Node-Category ?CC CC)
(Node-Category ?CC1 CC)
?f1<-(Head-Level-Mother-Daughters ? ? ?X $? ?xid)
(Head-Level-Mother-Daughters ? ? ?Y ?yid $?)
(test (and (eq (numberp ?xid) TRUE)(eq (numberp ?yid) TRUE)))
(not (id_got_ordered ?xid))
=>
	(assert (ordered_relative_clause))
	(if (eq (+ ?xid 1) ?yid) then
		(retract ?f0)
		(assert (Head-Level-Mother-Daughters  Sen  3  S1 ?X  ?Y  $?d ?CC $?d1 ?CC1))
		(assert (id_got_ordered ?xid))
        )
)
;-----------------------------------------------------------------------------------------------------------------
; Generating constituents in english word order
; Added by Shirisha Manju (12-08-11) Suggested by Sukhada
(defrule cons_eng_order
(declare (salience 25))
?f0<-(Head-Level-Mother-Daughters  Sen  ?l  ?S $?d ?X $?d1 ?y $?d2)
?f1<-(Head-Level-Mother-Daughters ? ? ?X $? ?xid)
(Head-Level-Mother-Daughters ? ? ?y ?yid $?)
(not (id_got_ordered ?xid))
(test (and (eq (numberp ?xid) TRUE)(eq (numberp ?yid) TRUE))) ;He heard the sound of rain from the kitchen.
(not (ordered_relative_clause))
(not (ordered_switch))
=>
	(if (eq (+ ?xid 1) ?yid) then
		(retract ?f0)
		(assert (Head-Level-Mother-Daughters  Sen  ?l  ?S $?d ?X  ?y $?d1 $?d2))
		(assert (id_got_ordered ?xid))
	)
)
;-----------------------------------------------------------------------------------------------------------------
;The mystery of the Nixon tapes was never solved.
(defrule cons_eng_order1
(declare (salience 20))
?f0<-(Head-Level-Mother-Daughters  Sen  ?l  ?S $?d ?X $?d1 ?Y $?d2)
?f2<-(Head-Level-Mother-Daughters ? ? ?X $? ?xid $?)
?f1<-(Head-Level-Mother-Daughters ? ? ?Y ?Y1 $?)
(Head-Level-Mother-Daughters ? ? ?Y1 $? ?yid $?ids)
(not (id_got_ordered ?yid))
(test (and (eq (numberp ?xid) TRUE)(eq (numberp ?yid) TRUE))) 
(not (ordered_relative_clause))
(not (ordered_switch))
=>
	(printout t ?xid" " ?yid crlf)
        (if (> ?xid ?yid) then
                (retract ?f0)
                (assert (Head-Level-Mother-Daughters  Sen  ?l  ?S $?d ?Y  ?X $?d1 $?d2))
		(assert (id_got_ordered ?yid))
        )
)
;-----------------------------------------------------------------------------------------------------------------
(defrule control_rule
(declare (salience 19))		
=>
	(undefrule cons_eng_order)
	(undefrule cons_eng_order1)
	(undefrule rel_c_order) 
)
;-----------------------------------------------------------------------------------------------------------------
;The dog who chased me was black. 
;Added by Shirisha Manju (26-08-11) Suggested by Sukhada
(defrule make_sbar_for_rel_c
(declare (salience 18))
?f0<-(Head-Level-Mother-Daughters Sen 3 S1 $?d ?NP $?d1 ?CC ?NP1 $?d2 ?CC1)
(Head-Level-Mother-Daughters  *  3  ?CC )
(Head-Level-Mother-Daughters  *  3  ?CC1)
(Node-Category   ?CC CC)
(Node-Category   ?CC1 CC)
?f1<-(Head-Level-Mother-Daughters ?h ?l ?NP $?n ?id)
(tran-word-wc-typ-form-h_id-comp  3    ?h    1    ?typ   $?)
(Head-Level-Mother-Daughters ?h1 ?l ?NP1 $?n1)
(tran-word-wc-typ-form-h_id-comp  3    ?h1    1    ?typ   $?)
=>
	(retract ?f0 ?f1)
	(bind ?*count* (+ ?*count* 1))
        (bind ?sbar (explode$ (str-cat SBAR "c" ?*count*)))
	(assert (Head-Level-Mother-Daughters Sen 3 S1 $?d ?NP $?d1))
	(assert (Head-Level-Mother-Daughters ?h ?l ?NP $?n ?id ?sbar))
	(assert (Head-Level-Mother-Daughters ?h ?l ?sbar ?NP1 $?d2))
	(assert (Node-Category ?sbar SBAR))
	(assert (ordered_relative_clause))
)
;-----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (29-08-11)
;You are lucky I am here. 
(defrule make_SBAR_for_switch
(declare (salience 30))
?f0<-(Head-Level-Mother-Daughters  ?h ?l  ?mot $?d ?CC $?d1)
?f1<-(Head-Level-Mother-Daughters *|that ?l1 ?CC $?c)
(Node-Category ?CC CC)
?f2<-(tran-word-wc-typ-form-h_id-comp  ?l1  *|that   20    103    19    $?)
=>
        (retract ?f0 ?f1 ?f2)
        (bind ?*count* (+ ?*count* 1))
        (bind ?sbar (explode$ (str-cat SBAR "c" ?*count* )))
        (bind ?S (explode$ (str-cat S "c" ?*count* )))
        (assert (Head-Level-Mother-Daughters ?h ?l  ?mot $?d ?sbar ))
        (assert (Head-Level-Mother-Daughters ?h ?l1 ?sbar ?S ))
        (assert (Head-Level-Mother-Daughters ?h ?l ?S $?c $?d1))
	(assert (Node-Category ?sbar SBAR))
        (assert (Node-Category ?S S))
	(assert (ordered_switch))
)
;-----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (30-08-11)
;Be careful, she said.
;When Mrs. Chitnis discovered that her husband was an adulterer she divorced him.
(defrule make_S_for_comma
(declare (salience 30))
?f0<-(Head-Level-Mother-Daughters  ?h  3  ?mot $?s ?CC $?s1)
?f1<-(Head-Level-Mother-Daughters  ,|*  3  ?CC)
(tran-word-wc-typ-form-h_id-comp  3   ,|*    20    888    $?)
=>
        (retract ?f0 ?f1)
        (bind ?*count* (+ ?*count* 1))
        (bind ?S (explode$ (str-cat S "c" ?*count* )))
        (bind ?S1 (explode$ (str-cat S "c1" ?*count* )))
        (assert (Head-Level-Mother-Daughters ?h  3 ?mot ?S  ?S1))
        (assert (Head-Level-Mother-Daughters ?h  3 ?S $?s))
        (assert (Head-Level-Mother-Daughters ?h  3 ?S1 $?s1))
        (assert (Node-Category ?S S))
        (assert (Node-Category ?S1 S))
)
;-----------------------------------------------------------------------------------------------------------------
;Are you afraid of spiders?
;(defrule modify_SQ
;(declare (salience 30))
;?f2<-(Head-Level-Mother-Daughters  Root  3  ROOT1	S1)
;?f0<-(Head-Level-Mother-Daughters  Sen  3  S1	SQ1 ?VP $?d)
;?f1<-(Head-Level-Mother-Daughters  ?h  ?l  SQ1 $?s)
;?f3<-(Head-Level-Mother-Daughters  ?h1  ?l1  ?VP	$?v)
;=>
;        (retract ?f0 ?f1 ?f2 ?f3)
;	(assert (Head-Level-Mother-Daughters  Root  3  ROOT1 SQ1))
;;	(assert (Head-Level-Mother-Daughters  Sen  3  SQ1))
;   	(assert (Head-Level-Mother-Daughters  ?h  ?l  SQ1 $?v $?d))
;)
;-----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (12-08-11) Suggested by Sukhada
(defrule split_VP
(declare (salience 16))
?f0<-(Head-Level-Mother-Daughters  ?w1  ?l  ?S $?d ?VP $?d1)
?f1<-(Head-Level-Mother-Daughters  ?w  ?l1  ?VP  $?da)
(Node-Category ?VP VP)
(not (Mother ?VP))
(not (VP_splitted_by_split_VP_conj ?VP));He may drink milk or eat apples.
=>
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters  ?w1 ?l ?S $?d ?VP))
        (assert (Head-Level-Mother-Daughters  ?w  ?l1 ?VP $?da $?d1))
	(assert (Mother ?VP))
)
;-----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (23-08-11)
;He told me why he was here and what he was doing.
(defrule VP_for_and
(declare (salience 17))
?f1<-(Head-Level-Mother-Daughters Sen 3  S1	$?d ?VP)
?f0<-(Head-Level-Mother-Daughters ?h ?l ?VP $?v ?CC $?v1)
(Head-Level-Mother-Daughters  and  ?l  ?CC     $?c)
(Node-Category ?VP VP)
(not (Mother ?CC))
=>
       	(retract ?f0 ?f1)
       	(bind ?*count* (+ ?*count* 1))
       	(bind ?vp (explode$ (str-cat VP "c" ?*count*)))
	(assert (Head-Level-Mother-Daughters Sen 3  S1     $?d ?vp))
	(assert (Head-Level-Mother-Daughters ?h ?l ?vp ?VP ?CC $?v1))
	(assert (Head-Level-Mother-Daughters ?h ?l ?VP $?v))
       	(assert (Node-Category ?vp VP)) 
	(assert (Mother ?CC))
)
;-----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (13-08-11)
; He may drink milk or eat apples.
(defrule split_VP_conj
(declare (salience 14))
?f0<-(Head-Level-Mother-Daughters  ?head ?l  ?VP  $?d ?CC $?d1)
(Head-Level-Mother-Daughters ?h ? ?VP $?)
(Node-Category ?CC CC)
(Node-Category ?VP VP)
(not (Mother ?CC))
(not (VP_splitted_by_split_VP_conj ?vp))
(not (Head-Level-Mother-Daughters * 3 ?CC));When Mrs. Chitnis discovered that her husband was an adulterer she divorced him. 
=>
	(retract ?f0)
	(bind ?*count* (+ ?*count* 1))
	(bind ?vp (explode$ (str-cat ?VP "c" ?*count*)))
	(assert (Head-Level-Mother-Daughters ?head ?l  ?VP ?vp ?CC $?d1))
	(assert (Head-Level-Mother-Daughters ?h ?l ?vp $?d))
	(assert (Node-Category ?vp VP))
	(assert (Mother ?CC))
	(assert (VP_splitted_by_split_VP_conj ?vp))
)
;-----------------------------------------------------------------------------------------------------------------
;Failure to comply may result in dismissal.
(defrule make_TO
(declare (salience 13))
?f1<-(Head-Level-Mother-Daughters Sen 3 ?m $?c ?NP ?VP)
?f2<-(Head-Level-Mother-Daughters ?h ?nl ?NP $?npd ?id)
(test (eq (numberp ?id) TRUE))
?f0<-(Head-Level-Mother-Daughters  ?w1  ?l  ?VP =(+ ?id 1) ?verb $?d ?VP1)
(Res_id-WC-Word-Anu_id  ?  12 to  =(+ ?id 1))
(Res_id-WC-Word-Anu_id  ?  2  ?v  ?verb)
(Node-Category ?VP VP)
(Node-Category ?VP1 VP)
=>
	(retract ?f0 ?f1 ?f2)
	(bind ?*count* (+ ?*count* 1))
        (bind ?TO (explode$ (str-cat TO "c" ?*count*)))
        (bind ?vp (explode$ (str-cat VP "c" ?*count*)))
	(bind ?np (explode$ (str-cat NP "c" ?*count*)))
	(assert (Head-Level-Mother-Daughters  ?w1 ?l ?VP ?TO  ?vp))
        (assert (Head-Level-Mother-Daughters  to  ?l ?TO =(+ ?id 1)))
	(assert (Head-Level-Mother-Daughters  ?v ?l ?vp ?verb ?np))
	(assert (Head-Level-Mother-Daughters  ?v ?l ?np $?d ))
	(assert (Head-Level-Mother-Daughters Sen 3 ?m $?c ?NP ?VP1))
	(assert (Head-Level-Mother-Daughters ?h ?nl ?NP $?npd ?id ?VP))
 	(assert (Node-Category ?TO TO))
	(assert (Node-Category ?vp VP))
	(assert (Node-Category ?np NP))
 )

;---------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (20-08-11) Suggested by Sukhada
;But my efforts to win his heart have failed.
(defrule make_S_for_TO
(declare (salience 12))
?f2<-(Head-Level-Mother-Daughters ?h1 ?nl ?NP $?npd ?VP)
(Head-Level-Mother-Daughters ?h ?l ?VP ?TO $?d ?VP1)
(Node-Category ?VP VP)
(Node-Category ?TO TO)
(not (Mother ?TO))
=>
        (retract ?f2)
	(bind ?*count* (+ ?*count* 1))
	(bind ?s (explode$ (str-cat S "c" ?*count*)))
	(assert (Head-Level-Mother-Daughters ?h1 ?nl ?NP $?npd ?s))
        (assert (Head-Level-Mother-Daughters  ?h ?l ?s ?VP))
	(assert (Node-Category ?s S))
	(assert (Mother ?TO))
)
;-----------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju (23-08-11) Suggested by Sukhada
; John is less fat than Tom.
(defrule modify_VP
(declare (salience 12))
?f0<-(Head-Level-Mother-Daughters  ?h ?l  ?ADJP  $?d ?id $?d1)
(Node-Category ?ADJP ADJP)
(test (eq (numberp ?id) TRUE))
(Res_id-WC-Word-Anu_id  ?  ? than  ?id)
=>
	(retract ?f0)
	(bind ?*count* (+ ?*count* 1))
	(bind ?pp (explode$ (str-cat PP "c" ?*count*)))
	(assert (Head-Level-Mother-Daughters  ?h ?l  ?ADJP  $?d	?pp))
	(assert (Head-Level-Mother-Daughters  ?h ?l ?pp ?id $?d1))	
	(assert (Node-Category ?pp PP))
)
;-----------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju (13-08-11) Suggested by Sukhada
; He has been frequently coming. Our team was easily beaten in the competition.
(defrule make_ADVP
(declare (salience 10))
?f0<-(Head-Level-Mother-Daughters  ?head ?l  ?VP  $?pre ?id $?d)
?f1<-(Res_id-WC-Word-Anu_id 	?pid 3|6	?w  ?id)
(test (neq ?head how))
(not (Node-Category ?VP ADVP))
=>
	(retract ?f0 ?f1)
	(bind ?*count* (+ ?*count* 1))
	(bind ?phrase (explode$ (str-cat ADVP "c" ?*count* ))) ;There is a dog and a cat here.
	(assert (Head-Level-Mother-Daughters	?head ?l  ?VP $?pre  ?phrase $?d))
	(assert (Head-Level-Mother-Daughters  ?w  ?l ?phrase ?id))
	(assert (Node-Category ?phrase ADVP))
)
;-----------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju (18-08-11) Suggested by Sukhada
; Go straight and take a right turn.
(defrule make_ADVP1
(declare (salience 11))
?f2<-(Head-Level-Mother-Daughters ?h ?l1  ?VP	$?d ?NP)
?f0<-(Head-Level-Mother-Daughters  ?head ?l  ?NP        ?id)
?f1<-(Res_id-WC-Word-Anu_id     ?pid 3|6        ?w  ?id)
=>
        (retract ?f0 ?f1 ?f2)
        (bind ?*count* (+ ?*count* 1))
        (bind ?phrase (explode$ (str-cat ADVP "c" ?*count* )))
        (assert (Head-Level-Mother-Daughters    ?h ?l ?VP  $?d ?phrase))
	(assert (Head-Level-Mother-Daughters  ?w  ?l ?phrase ?id))
        (assert (Node-Category ?phrase ADVP))
)
;----------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju (19-08-11)
;John is quite certainly a better choice. He is apparently an expert on dogs.
(defrule merge_ADVP
(declare (salience 10))
?f0<-(Head-Level-Mother-Daughters  ?h ?l  ?Mot $?d ?ADVP ?ADVP1 $?d1)
?f1<-(Head-Level-Mother-Daughters ? ? ?ADVP $?a)
?f2<-(Head-Level-Mother-Daughters ?head ? ?ADVP1 $?a1)
(Node-Category ?ADVP ADVP)
(Node-Category ?ADVP1 ADVP)
=>
        (retract ?f0 ?f1 ?f2)
        (bind ?*count* (+ ?*count* 1))
        (bind ?advp (explode$ (str-cat ADVP "c" ?*count* )))
        (assert (Head-Level-Mother-Daughters  ?h ?l ?Mot $?d ?advp $?d1))
        (assert (Head-Level-Mother-Daughters  ?head  ?l ?advp $?a $?a1))
        (assert (Node-Category ?advp ADVP))
)
;----------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (16-08-11)
 ;All our sisters are coming. All his books are good.
 (defrule make_PDT
 (declare (salience 10))
 ?f0<-(Head-Level-Mother-Daughters  ?head ?l  ?NP ?id ?id1 $?d)
 (Node-Category ?NP NP)
 ?f1<-(Res_id-WC-Word-Anu_id   ?pid 15  ?w&all|both  ?id) 
 ?f2<-(Res_id-WC-Word-Anu_id   ?pid1 15  ?wrd&his|her|my|your|our|its|their  ?id1)
 =>
	(retract ?f0 ?f1 ?f2)
        (bind ?*count* (+ ?*count* 1))
	(bind ?phrase (explode$ (str-cat PDT "c" ?*count* )))
	(bind ?phrase1 (explode$ (str-cat PRP$ "c" ?*count* )))
	(assert (Head-Level-Mother-Daughters  ?head ?l  ?NP  ?phrase  ?phrase1 $?d))
        (assert (Head-Level-Mother-Daughters  ?w  ?l ?phrase ?id))
	(assert (Head-Level-Mother-Daughters  ?wrd  ?l ?phrase1 ?id1))
        (assert (Node-Category ?phrase PDT))
	(assert (Node-Category ?phrase1 PRP$))
 )
;-----------------------------------------------------------------------------------------------------------------
 ; Added by Shirisha Manju (16-08-11) Suggested by Sukhada
 ; Both of her parents are from India.
 (defrule make_PP
 (declare (salience 10))
 ?f0<-(Head-Level-Mother-Daughters  ?head ?l  ?NP $?ids ?id $?d)
 (Node-Category ?NP NP)
 ?f1<-(Res_id-WC-Word-Anu_id   ?pid ?wc&11|13  ?w  ?id)
 (test (neq (length $?ids) 0))
 =>
	(retract ?f0 ?f1)
	(bind ?*count* (+ ?*count* 1))
        (bind ?phrase (explode$ (str-cat PP "c" ?*count* )))
	(bind ?phrase1 (explode$ (str-cat NP "c" ?*count*)))
	(bind ?phrase2 (explode$ (str-cat NP "c1" ?*count*)))
	(assert (Head-Level-Mother-Daughters  ?head ?l  ?NP  ?phrase1 ?phrase ))
        (assert (Head-Level-Mother-Daughters  ?w  ?l ?phrase ?id ?phrase2))
	(assert (Head-Level-Mother-Daughters  ?head ?l ?phrase2  $?d))
	(assert (Head-Level-Mother-Daughters  ?head ?l ?phrase1  $?ids))
	(assert (Node-Category ?phrase PP))
	(assert (Node-Category ?phrase2 NP))
        (assert (Node-Category ?phrase1 NP))
 )
;-----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (27-08-11) (suggested by Sukhada)
;She is even more intelligent than her sister.
(defrule make_NP
(declare (salience 9))
?f0<-(Head-Level-Mother-Daughters  ?h ?l  ?PP   ?id $?d)
(Node-Category ?PP PP)
(test (eq (numberp ?id) TRUE))
?f1<-(Res_id-WC-Word-Anu_id   ?pid 19  ?w  ?id)
=>
	(retract ?f0 ?f1)
        (bind ?*count* (+ ?*count* 1))	
	(bind ?np (explode$ (str-cat NP "c" ?*count*)))
	(assert (Head-Level-Mother-Daughters  ?h ?l  ?PP ?id ?np))
	(assert (Head-Level-Mother-Daughters  ?h ?l  ?np $?d))
	(assert (Node-Category ?np NP))
)
;-----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (19-08-11) Suggested by Sukhada
;How much money did you earn? How much do you swim? 
(defrule make_WHNP
(declare (salience 10))
?f1<-(Head-Level-Mother-Daughters  Sen  ?l1 $?c  ?Mot  $?c1 ?vp)
?f0<-(Head-Level-Mother-Daughters  ?h ?l  ?Mot  $?d ?id $?d1)
(Node-Category ?Mot CC)
(Node-Category ?vp VP)
(Res_id-WC-Word-Anu_id   ?pid ?wc  $?words  $?ids)
(test (and (member$ ?id $?ids)(member$  how $?words)))
=>
	(retract ?f0 ?f1)
	(bind ?*count* (+ ?*count* 1))
	(bind ?whnp (explode$ (str-cat WHNP "c" ?*count* )))
	(bind ?sbar (explode$ (str-cat SBAR "c" ?*count* )))
	(bind ?S (explode$ (str-cat S "c" ?*count* )))
	(assert (Head-Level-Mother-Daughters Sen ?l1 $?c ?sbar $?c1))
	(assert (Head-Level-Mother-Daughters ?h ?l ?sbar ?whnp ?S ))
	(assert (Head-Level-Mother-Daughters how ?l ?whnp ?id))
	(assert (Head-Level-Mother-Daughters ?h ?l ?S $?d1 ?vp))
	(assert (Node-Category ?whnp WHNP))
	(assert (Node-Category ?sbar SBAR))
	(assert (Node-Category ?S S))
)
;-----------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (25-08-11) Suggested by Sukhada
;There was a problem, but we solved it.
(defrule make_SBAR
(declare (salience 10))
?f0<-(Head-Level-Mother-Daughters  ?h ?l  ?mot $?d ?CC $?d1)
?f1<-(Head-Level-Mother-Daughters ?h1 ?l1 ?CC ?id $?c)
(Node-Category ?CC CC)
(test (eq (numberp ?id) TRUE))
(Res_id-WC-Word-Anu_id   ?pid 19  $?word  $?ids) ;She sold the house even though it was against his wishes.
(test (member$ ?id $?ids))
=>
	(retract ?f0 ?f1)
        (bind ?*count* (+ ?*count* 1))
	(bind ?sbar (explode$ (str-cat SBAR "c" ?*count* )))
        (bind ?S (explode$ (str-cat S "c" ?*count* )))
	(assert (Head-Level-Mother-Daughters ?h ?l  ?mot $?d ?sbar ))
	(assert (Head-Level-Mother-Daughters ?h1 ?l1 ?sbar ?S ))
	(assert (Head-Level-Mother-Daughters ?h ?l ?S ?id $?c $?d1))
	(assert (Node-Category ?sbar SBAR))
        (assert (Node-Category ?S S))
)
;-----------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju (17-08-11) Suggested by Sukhada
;It does not matter what Ted does. 
(defrule remove_repeated_fact
(declare (salience 8))
?f0<-(Head-Level-Mother-Daughters  ?head ?l  ?NP ?id)
?f1<-(Head-Level-Mother-Daughters  ?h ?l1  ?NP1 $?ids ?id $?d)
(test (neq ?head ?h))
=>
	(retract ?f1)
	(assert	(Head-Level-Mother-Daughters  ?h ?l1  ?NP1 $?ids $?d))
	(assert (Mother ?h))
)
;-----------------------------------------------------------------------------------------------------------------
;A slow, balmy breeze from the south engulfed everyone in the audience. ---Punctuation mark
;Since I know English, he spoke to me. ---- bos
;Added by Shirisha Manju (17-08-11)
(defrule remove_punct_id
(declare (salience 8))
?f0<-(Head-Level-Mother-Daughters  ?h ?l  ?m	$?id1 ?pid $?id2)
(or (Res_id-WC-Word-Anu_id   ?id 20  Punctuation mark ?)(Res_id-WC-Word-Anu_id   ?id 20  bos ?))
(test (eq (string-to-field (str-cat "P" ?id)) ?pid))
=>
	(retract ?f0)
	(assert (Head-Level-Mother-Daughters  ?h ?l  ?m  $?id1 $?id2))
)
;-----------------------------------------------------------------------------------------------------------------	
(defrule print_cons
(declare (salience 5))
?f0<-(Head-Level-Mother-Daughters ?h ?l ?mot $?ids)
=>
	(retract ?f0 )
	(printout ?*e_const_file* "(Head-Level-Mother-Daughters  " ?h " "?l"  "?mot"	"(implode$ $?ids) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------
(defrule print_node
(declare (salience 4))
?f<-(Node-Category ?node ?cat)
=>
	(retract ?f)
	(printout ?*node_fp1_file* "(Node-Category   " ?node " "?cat ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------
(defrule close_e_const
(declare (salience -5))
=>
	(close ?*e_const_file*)
	(close ?*node_fp1_file*)
)
;-----------------------------------------------------------------------------------------------------------------
