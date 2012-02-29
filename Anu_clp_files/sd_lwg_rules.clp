(deffacts dummy_sd_lwg_facts
(Head-Level-Mother-Daughters)
(Node-Category)
(parserid-word)
(parser_id-root-category-suffix-number)
)

(deffunction string_to_integer (?parser_id)
; Removes the first characterfrom the input symbol which is assumed to contain digits only from the second position onward; length should be less than 10000]
 (string-to-field (sub-string 2 10000 ?parser_id)))

(deffunction my_string_cmp (?str1 ?str2)
   (bind ?n1 (string-to-field (sub-string 2 (length ?str1) ?str1)))
   (bind ?n2 (string-to-field (sub-string 2 (length ?str2) ?str2)))
   (> ?n1 ?n2))
;=====================================  Parser Correction Rules =========================================================
;This rule removes the node SBAR whose daughter is S in the cases of causative verbs. The SBAR node should not be present gramatically in the parse.
;She made the girl feed the child.
;Added by Shirisha Manju (29-10-11)
(defrule remove_sbar_from_causitive
(declare (salience 1600))
?f0<-(Head-Level-Mother-Daughters ?h&get|got|gets|getting|have|had|has|having|make|makes|making|made ?l ?Mot $?d ?Sb)
(Node-Category ?Sb SBAR)
?f1<-(Head-Level-Mother-Daughters ? ? ?Sb ?S)
(Node-Category ?S S)
=>
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?h ?l ?Mot $?d ?S))
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (29-10-11)
;The mother calmed the angry son.The jet zoomed across the sky.
;This rule makes VBN as VBD in the sentences where Stanford parser incorrectly makes VBD as VBN.
;Who translated the sentence for the student? The snake who swallowed the rat hissed loudly.
(defrule make_VBN_as_VBD
(declare (salience 1600))
(Head-Level-Mother-Daughters ? ? ?S $? ?VP)
(Node-Category ?S S|SQ)
(Node-Category ?VP VP)
?f0<-(Head-Level-Mother-Daughters ?h ?l ?VP ?VBN $?d)
?f1<-(Node-Category ?VBN VBN)
?f2<-(Head-Level-Mother-Daughters ?h1 ?l1 ?VBN ?id)
(not (daughter ? ?v));.Have you ever seen the Pacific?
=>
	(retract ?f0 ?f1 ?f2)
	(assert (Head-Level-Mother-Daughters ?h ?l ?VP VBD $?d))
	(assert (Head-Level-Mother-Daughters ?h1 ?l1 VBD ?id))
	(assert (Node-Category VBD VBD))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (19-01-12) (suggested by Sukhada)
;Let her go to the market. Let us go to the market.
(defrule Let_rule
(declare (salience 1580))
?f<-(Head-Level-Mother-Daughters Let ?lvl ?Mot ?VB $?daut ?S)
(and (Node-Category  ?Mot    VP)(Node-Category  ?VB    VB)(Node-Category  ?S  S))
?f1<-(Head-Level-Mother-Daughters  ?  ?  ?S ?NP ?VP)
(and (Node-Category  ?NP  NP)(Node-Category  ?VP  VP))
=>
        (retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters Let ?lvl ?Mot ?VB $?daut ?NP ?VP))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (19-01-12) (suggested by Sukhada)
;Let them do the work.
(defrule Let_rule1
(declare (salience 1580))
?f<-(Head-Level-Mother-Daughters Let ?lvl ?Mot ?VB $?daut ?Sbar)
(and (Node-Category  ?Mot    VP)(Node-Category  ?VB    VB)(Node-Category  ?Sbar  SBAR))
?f1<-(Head-Level-Mother-Daughters  ?  ?  ?Sbar ?S)
?f2<-(Head-Level-Mother-Daughters  ?  ?  ?S ?NP ?VP)
(and (Node-Category  ?NP  NP)(Node-Category  ?VP  VP))
=>
        (retract ?f ?f1 ?f2)
        (assert (Head-Level-Mother-Daughters Let ?lvl ?Mot ?VB $?daut ?NP ?VP))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (29-10-11)
;These smugglers are to be captured. Broken windows need to be replaced. 
;That is the way business used to be done and that is the way business needs to be done.
(defrule TO_rule
(declare (salience 1580))
?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot ?verb ?S $?pos)
(Node-Category  ?Mot  VP)
(Node-Category  ?S    S)
(parserid-word  ?pid  ?head)
(parser_id-root-category-suffix-number ?pid be|have|need|use $?)
(Head-Level-Mother-Daughters to ? ?S $? ?VP)
(Head-Level-Mother-Daughters ? ? ?VP $? ?TO $? ?VP1)
(Node-Category  ?VP1  VP)
?f2<-(Head-Level-Mother-Daughters be ? ?VP1 $?daut)
?f3<-(Head-Level-Mother-Daughters to ? ?TO ?id)
(Node-Category  ?VP1    ?suf&MD|VB|VBN|VBZ|VBD|VBP|VBG|RB|VP)
=>
        (retract ?f1 ?f2 ?f3)
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot ?verb ?id $?daut $?pos))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (16-01-12)
;A fat boy had to eat fruits. 
(defrule had_rule
(declare (salience 1580))
?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot ?verb ?S $?pos)
(Node-Category  ?Mot  VP)
(Node-Category  ?S    S)
(parserid-word  ?pid  ?head)
(parser_id-root-category-suffix-number ?pid have $?)
(Head-Level-Mother-Daughters to ? ?S $? ?VP)
(Head-Level-Mother-Daughters to ? ?VP $? ?TO $? ?VP1)
(Node-Category  ?VP1  VP)
?f2<-(Head-Level-Mother-Daughters ? ? ?VP1 $?daut)
?f3<-(Head-Level-Mother-Daughters to ? ?TO ?id)
(Node-Category  ?VP1    ?suf&MD|VB|VBN|VBZ|VBD|VBP|VBG|RB|VP)
=>
        (retract ?f1 ?f2 ?f3)
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot ?verb ?id $?daut $?pos))
)


;==================================================  LWG rules  =========================================================
;Added by Shirisha Manju (24-02-12)
(defrule replace_aux
(declare (salience 1561))
?f<-(Head-Level-Mother-Daughters ?h ?l ?VP $?a ?VP1)
(and (Node-Category ?VP VP)(Node-Category ?VP1 VP))
?f1<-(Head-Level-Mother-Daughters ?h1 ?l1 ?VP1 $?a1 ?c ?VP2)
(Node-Category ?VP2 VP)
(not (Node-Category ?c CC));He may drink milk or eat apples.
=>
	(retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters ?h1 ?l1 ?VP $?a $?a1 ?c ?VP2))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (24-02-12)
(defrule get_aux
(declare (salience 1560))
?f<-(Head-Level-Mother-Daughters ?h ?l ?VP ?aux $?a ?VP1)
(and (Node-Category ?VP VP)(Node-Category ?VP1 VP))
(Head-Level-Mother-Daughters ?h1 ?l1 ?VP1 $?d ?CC $?d1)
(Node-Category ?CC CC)
?f1<-(Head-Level-Mother-Daughters ? ? ?aux ?aid)
?f0<-(aux_grp $?ids)
=>
	(retract ?f ?f0 ?f1)
	(assert (Head-Level-Mother-Daughters ?h ?l ?VP $?a ?VP1))
	(assert (aux_grp $?ids ?aid))
	(assert (aux_grp-head_VP ?aid ?VP1))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (25-02-12)	
(defrule retract_aux_VP
(declare (salience 1540))
(aux_grp-head_VP ? ?VP1)
?f<-(Head-Level-Mother-Daughters ?h ?l ?VP ?VP1)
(Node-Category ?VP VP)
=>
	(retract ?f)
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (24-02-12)
;The royal hospital was founded in 1682 by charles ii and houses the chelsea pensioners( distinguished ex-servicemen) who you will probably see strolling around the streets of chelsea in their bright red coats and tricorn hats.
(defrule split_Conj_VP
(declare (salience 1530))
?f0<-(Head-Level-Mother-Daughters ?h ?l ?VP $?d ?CC $?d1 ?VP1)
(and (Node-Category ?VP VP)(Node-Category ?CC CC))
(Node-Category ?VP1 VP|VBN)
=>
	(retract ?f0)
	(assert (Head-Level-Mother-Daughters ?h ?l ?VP $?d))
	(assert (Head-Level-Mother-Daughters ?h ?l ?VP $?d1 ?VP1))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju  (14-02-12)
;Your mother was clearly not impressed by our behaviour in the restaurant.
;Do not shut the door. Do not send the message by radio.
(defrule get_lwg_group_with_RB
(declare (salience 1526))
?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?V $?pos ?VP)
(Node-Category  ?Mot    VP|SQ)
(Node-Category  ?V     RB)
(Node-Category  ?VP    VP)
?f2<-(Head-Level-Mother-Daughters ?h&not ? ?V ?id)
=>
        (retract ?f1 ?f2)
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?id $?pos ?VP))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (27-02-12)
(defrule relace_verb
(declare (salience 1525))
?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?V)
(and (Node-Category  ?Mot    VP|SQ)(Node-Category  ?V    VP))
?f<-(Head-Level-Mother-Daughters ?h ?l ?V $?dau)
=>
	(retract ?f ?f1)
	(assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre  $?dau))
)
;------------------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju
(defrule get_lwg_group
(declare (salience 1520))
?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?V $?pos)
(Node-Category  ?Mot    VP|SQ)
(Node-Category  ?V     ?suf&VBG|VBD|VBN|MD|VB|VBZ|VBP)
?f2<-(Head-Level-Mother-Daughters ? ? ?V $?daut)
(not (Head-Level-Mother-Daughters to|To $? ?Mot)) ; Ex: She had gotten her family to go against convention. 
=>
       	(retract ?f1 ?f2)
       	(assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre $?daut $?pos))
 	(if (eq ?suf VBG ) then
                (assert (id-node-suf $?daut VBG ing))
        else (if (eq ?suf VBN ) then
		(assert (id-node-suf $?daut VBN  en))
             else (if (eq ?suf VBD ) then
			(assert (id-node-suf $?daut  VBD  ed))
                  else  (if (eq ?suf VBP ) then
				(assert (id-node-suf $?daut  VBP  0))
        	          else  (if (eq ?suf VB )  then
					(assert (id-node-suf $?daut  VB  0))
				else (if (eq ?suf VBZ ) then
                        	        (assert (id-node-suf $?daut  VBZ  s))
				     )     
			     	)
                        )
                  )
             )
        )
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju 
(defrule get_lwg
(declare (salience 1500))
?f1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?daut)
(Node-Category  ?Mot    VP|SQ)
(not (Head-Level-Mother-Daughters to $? ?Mot)) ;He persuaded them to go.
(not (Mother ?Mot))
=>
        (bind $?lwg (create$ ))
        (loop-for-count (?i 1 (length $?daut))
                (bind ?j (nth$ ?i $?daut))
                (if (numberp (string_to_integer ?j)) then
                    (bind $?lwg (sort my_string_cmp (create$ $?lwg ?j)))
                )
        )
        (assert (root-verbchunk-tam-parser_chunkids  root - $?lwg - $?lwg - $?lwg))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (24-02-12)
;She might have been reading and writing the book.
(defrule get_lwg_with_aux
(declare (salience 1400))
?f0<-(aux_grp - $?ids)
?f2<-(aux_grp-head_VP $? ?VP)
(Head-Level-Mother-Daughters ? ? ?VP $?vids)
?f1<-(root-verbchunk-tam-parser_chunkids root - $?d ?h - $?d ?h - $?d ?h)
(test (neq (length $?ids) 0))
(test (or (member$ $?d $?vids) (eq ?h $?vids)))
=>
	(retract ?f1)
  	(assert (root-verbchunk-tam-parser_chunkids root - $?ids $?d ?h - $?ids $?d ?h - $?ids $?d ?h))	
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (25-10-11)
;He persuaded them to go.
(defrule remove_S_node_from_lwg
(declare (salience 1350))
?f0<-(root-verbchunk-tam-parser_chunkids  ?root - $?pre ?S $?po - $?pre ?S $?po - $?pre ?S $?po)
(Node-Category ?S S)
=>
        (if (and (eq (length $?pre) 0) (eq (length $?po) 0)) then ;The leopard seizes its kill and begins to eat.
                (retract ?f0)
        else
                (retract ?f0)
                (assert (root-verbchunk-tam-parser_chunkids  ?root - $?pre $?po - $?pre $?po - $?pre $?po))
        )
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (28-10-11) Suggested by Sukhada
;He made a mistake in inviting John. 
;The glass house built on the lines of the crystal palace in london is the main attraction in this huge park.
(defrule remove_VBG_and_VBN_nodes_from_lwg
(declare (salience 1350))
?f0<-(root-verbchunk-tam-parser_chunkids  ?root - ?id - ?id - ?id)
(id-node-suf ?id VBG|VBN ?)
=>
                (retract ?f0)
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (29-10-11)
;She is making the girl feed the child.
(defrule get_lwg_for_causitive
(declare (salience 1330))
(Head-Level-Mother-Daughters ?h ?l ?Mot $? ?id $? ?S)
(Node-Category ?Mot VP)
(Node-Category ?S S)
(parserid-word ?id ?w&get|make|have|making|made)
(Head-Level-Mother-Daughters ?h1 ? ?S $? ?VP)
(Node-Category ?VP VP)
(parserid-word ?id1 ?h1)
?f0<-(root-verbchunk-tam-parser_chunkids ?r1 - ?id1 - ?id1 - ?id1)
?f1<-(root-verbchunk-tam-parser_chunkids ?r - $?d ?id - $?d ?id - $?d ?id)
=>
        (retract ?f0 ?f1)
        (assert (root-verbchunk-tam-parser_chunkids  ?r - $?d ?id ?id1 - $?d ?id ?id1 - $?d ?id ?id1))
        (assert (causitive_verb ?id1))
)
;------------------------------------------------------------------------------------------------------------------------
; get words for lwg ids " had to eat "
;Added by Shirisha Manju (20-10-11)
(defrule get_chk_and_tam
(declare (salience 1300))
?f0<-(root-verbchunk-tam-parser_chunkids  ?root - $?pre ?pid $?po - $?pre ?pid $?po - $?ids)
(parserid-word ?pid ?w)
=>
       (retract ?f0)
       (bind ?w (lowcase ?w))
       (if (eq (length $?ids) 1) then
               (assert (root-verbchunk-tam-parser_chunkids ?root ?w  ?w  $?ids))
       else
               (assert (root-verbchunk-tam-parser_chunkids  ?root - $?pre ?w $?po - $?pre ?w $?po - $?ids))
       )
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (29-10-11)
;She is making the girl feed the child.  => is making feed => is_making_
(defrule get_chk_and_tam_for_causitive
(declare (salience 1250))
?f0<-(root-verbchunk-tam-parser_chunkids  ?root - $?vc - $?tam - $?ids ?id)
(causitive_verb ?id)
=>
        (retract ?f0)
        (bind ?len (length $?vc))
        (bind ?v (str-cat (nth$ 1 $?vc) "_"))
        (bind ?t (str-cat (nth$ 1 $?vc) "_"))
        (loop-for-count (?j 2 (- ?len 1))
                (bind ?v (str-cat ?v (nth$ ?j $?vc) "_"))
        )
        (loop-for-count (?j 2 (- ?len 2))
                (bind ?t (str-cat ?t (nth$ ?j $?vc) "_"))
        )
        (assert (root-verbchunk-tam-parser_chunkids  ?root ?v ?t $?ids ?id))
)
;------------------------------------------------------------------------------------------------------------------------
;add "_" between the words of lwg ids "had_to_eat"
;Added by Shirisha Manju (20-10-11)
(defrule get_chk_and_tam1
(declare (salience 1200))
?f0<-(root-verbchunk-tam-parser_chunkids  ?root - $?vc - $?tam - $?ids)
(test (neq (length $?ids) 1))
=>
        (retract ?f0)
        (bind ?len (length $?vc))
        (bind ?v (str-cat (nth$ 1 $?vc) "_"))
        (loop-for-count (?j 2 (- ?len 1))
                (bind ?v (str-cat ?v (nth$ ?j $?vc) "_"))
        )
        (assert (root-verbchunk-tam-parser_chunkids  ?root ?v ?v $?ids))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (29-10-11)
;She is making the girl feed the child.
(defrule phrase_causitive_lwg
(declare (salience 1150))
?f0<-(root-verbchunk-tam-parser_chunkids  ?  ?vc  ?tam  $?ids ?id ?id1)
(causitive_verb ?id1)
(parserid-word ?id1 ?w1)
(id-node-suf ?id ?n ?suf)
?f1<-(parser_id-root-category-suffix-number  ?id  ?root $?)
?f2<-(parser_id-root-category-suffix-number ?id1 ?root1 $?)
=>
        (retract ?f0 ?f1 ?f2)
        (bind ?v (string-to-field (str-cat ?vc ?w1)))
        (bind ?t (string-to-field (str-cat ?tam ?suf)))
        (bind ?r (string-to-field (str-cat ?root"_"?root1)))
        (if (neq (length $?ids) 0) then
                (assert (root-verbchunk-tam-parser_chunkids  ?r ?v ?t $?ids ?id ?id1))
                (assert (verb_type-verb-causative_verb-tam causative ?id ?id1 ?t))
        else
                (assert (root-verbchunk-tam-parser_chunkids  ?r ?v tam_to_be_decided $?ids ?id ?id1))
                (assert (verb_type-verb-causative_verb-tam causative ?id ?id1 tam_to_be_decided))
        )
)
;------------------------------------------------------------------------------------------------------------------------
; get lwg with suf " had_to_0"
;Added by Shirisha Manju (20-10-11)
(defrule phrase_lwg
(declare (salience 1100))
?f0<-(root-verbchunk-tam-parser_chunkids  ?  ?vc  ?tam  $?ids ?id)
(parserid-word ?id ?w)
(id-node-suf ?id ?n ?suf)
?f1<-(parser_id-root-category-suffix-number  ?id  ?root $?)
=>
        (retract ?f0 ?f1)
        (if (neq (length $?ids) 0) then
                (bind ?v (string-to-field (str-cat ?vc ?w)))
                (bind ?t (string-to-field (str-cat ?tam ?suf)))
                (assert (root-verbchunk-tam-parser_chunkids  ?root ?v ?t $?ids ?id))
        else
                (assert (root-verbchunk-tam-parser_chunkids root_to_be_decided ?vc tam_to_be_decided $?ids ?id))
        )
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (21-10-11)
;Do not waste electricity. Do not shut the door. 
(defrule imper_rule
(declare (salience 6))
(Head-Level-Mother-Daughters ? ? ?ROOT ?S)
(Node-Category ?ROOT ROOT)
(Node-Category ?S S)
(Head-Level-Mother-Daughters ? ? ?S ?VP $?)
(Node-Category ?VP VP)
(Head-Level-Mother-Daughters ?h&~Let ? ?VP ?id $?) ;Let her go to the market.
?f<-(root-verbchunk-tam-parser_chunkids ?root ?vc ?tam  ?id $?ids)
(not (imper_decided ?id))
(not (Head-Level-Mother-Daughters ? ? SBAR ?S))
(test (neq (length $?ids) 0))
=>
	(retract ?f)
	(bind ?index (str-index "_" ?tam))
	(bind ?tam (sym-cat "imper_" (sub-string (+ ?index 1) 1000 ?tam)))
	(assert (root-verbchunk-tam-parser_chunkids ?root ?vc ?tam  ?id $?ids))
	(assert (imper_decided ?id))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (25-10-11)
;Do this in your room.
(defrule imper_rule1
(declare (salience 4))
(Head-Level-Mother-Daughters ? ? ?ROOT ?S)
(Node-Category ?ROOT ROOT)
(Node-Category ?S S)
(Head-Level-Mother-Daughters ? ? ?S ?VP $?)
(Node-Category ?VP VP)
(Head-Level-Mother-Daughters ? ? ?VP ?id $?)
?f<-(root-verbchunk-tam-parser_chunkids ?root ?vc ?tam  ?id)
(not (imper_decided ?id))
=>
        (retract ?f)
        (assert (root-verbchunk-tam-parser_chunkids ?root ?vc imper  ?id))
        (assert (imper_decided ?id))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (29-10-11)
;Please enclose a curriculum vitae with your letter of application. 
(defrule imper_rule2
(declare (salience 4))
(Head-Level-Mother-Daughters ? ? ?ROOT ?S)
(and (Node-Category ?ROOT ROOT) (Node-Category ?S S))
(Head-Level-Mother-Daughters ? ? ?S ?INTJ ?VP1 $?)
(and (Node-Category ?VP1 VP)(Node-Category ?INTJ INTJ))
(Head-Level-Mother-Daughters ? ? ?VP1 ?id $?)
?f<-(root-verbchunk-tam-parser_chunkids ?root ?vc ?tam  ?id)
(not (imper_decided ?id))
=>
        (retract ?f)
        (assert (root-verbchunk-tam-parser_chunkids ?root ?vc imper  ?id))
        (assert (imper_decided ?id))
)
;------------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (21-10-11)
;Ex:- What did he eat? How did John do it?
 (defrule q_tam
 (declare (salience 3))
 ?f<-(root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk ?tam ?head $?ids)
 (parser_id-root-category-suffix-number  ?head  ?root1 verb ?suf ?)
 (parserid-word ?head does|do|did|Did)
 (parserid-word P1 Does|Do|Did|Why|What|Where|Whose|How|who|When|Are|Am|Is) 
 (not (q_tam_modified ?head))
 (not (imper_decided ?head))
 =>
        (retract ?f)
        (bind ?vrb_chunk1 (explode$ (str-cat "q_" ?vrb_chunk )))
        (assert (root-verbchunk-tam-parser_chunkids ?root ?vrb_chunk1 ?suf ?head $?ids))
        (assert (q_tam_modified ?head))
 )
;------------------------------------------------------------------------------------------------------------------------
