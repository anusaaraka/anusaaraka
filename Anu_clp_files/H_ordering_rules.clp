(deftemplate pada_info (slot group_head_id (default 0))(slot group_cat (default 0))(multislot group_ids (default 0))(slot vibakthi (default 0))(slot gender (default 0))(slot number (default 0))(slot case (default 0))(slot person (default 0))(slot H_tam (default 0))(slot tam_source (default 0))(slot preceeding_part_of_verb (default 0)) (multislot preposition (default 0))(slot Hin_position (default 0))(slot pada_head (default 0)))

(defglobal ?*order_debug-file* = order_debug)
(defglobal ?*count*  = 0) 

(deffunction reverse ($?a)
(if (eq (length ?a) 0) then ?a
 else
(create$ (reverse (rest$ ?a)) (first$ ?a))))

(deffunction reverse_daughters ($?a)
(if (< (length ?a) 2) then ?a
 else
(create$ (first$ ?a) (reverse (rest$ ?a)))))
;-----------------------------------------------------------------------------------------------------------------------
(defrule print_for_debugging1
(declare (salience 1501))
=>
(bind ?*count* (+ ?*count* 1))
(printout ?*order_debug-file* "(debug_info  "?*count*" Removing auxillary verbs from the sentence)" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule replace_aux_with_head_VP
(declare (salience 1500))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot ?VB $?daut ?VP)
?f1<-(Head-Level-Mother-Daughters ? ? ?VP $?daut1 ?VP1)
(Node-Category  ?Mot    VP|SQ)
(Node-Category  ?VB     MD|VB|VBN|VBZ|VBD|VBP|VBG|RB|TO)
(Node-Category  ?VP     VP)
(Node-Category  ?VP1    ?CAT)
(not (Mother  ?Mot));Is that the film in which he kills his mother? 
=>
        (bind ?*count* (+ ?*count* 1))
        (if (eq ?CAT VP) then
	(retract ?f ?f1)
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?daut $?daut1 ?VP1))
        (printout ?*order_debug-file* "(rule_name - replace_aux_with_head_VP  " ?*count* " " crlf 
                          "             Before    - "?head" "?lvl"  "?Mot"  "?VB" "(implode$ $?daut)" "?VP"  "crlf
                          "             After     - "?head" "?lvl"  "?Mot"  "(implode$ $?daut)"  "(implode$ $?daut1)" "?VP1 ")" crlf)
        else
        (retract ?f)
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?daut ?VP))
        (printout ?*order_debug-file* "(rule_name - replace_aux_with_head_VP " ?*count* " "crlf
                          "             Before    - "?head" "?lvl"  "?Mot"  "?VB" "(implode$ $?daut)" "?VP"  "crlf
                          "             After     - "?head" "?lvl"  "?Mot"  "(implode$ $?daut)" "?VP ")"crlf)
        )
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (23-02-12)
;Broken windows need to be replaced.A fat boy had to do various exercises.
(defrule replace_aux_with_head_VP1
(declare (salience 1500))
?f<-(Head-Level-Mother-Daughters ?h&need|are|be|have|had ?lvl ?VP ?VB ?S)
(Node-Category  ?VP    VP)
(Node-Category  ?VB    VBP|VBD|VBG)
(Node-Category  ?S    S)
=>
	(retract ?f)
	(assert (Head-Level-Mother-Daughters ?h ?lvl ?VP ?S))
 )
;-----------------------------------------------------------------------------------------------------------------------
 ;In Kashmir, fishing is a good business and the ideal season is from April to October. Added by Sukhada (12-9-11)
(defrule from_to_PPs
(declare (salience 1450))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?d1 ?PP1 ?PP2 $?d2)
(Head-Level-Mother-Daughters from ? ?PP1 $?d3)
(Head-Level-Mother-Daughters to ? ?PP2 $?d4)
(Node-Category  ?PP1    PP)
(Node-Category  ?PP2    PP)
(not (Mother  ?PP1))
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f)
	(bind ?FromToPP (explode$ (str-cat FromToPP "c" ?*count* )))
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?d1  ?FromToPP $?d2))
	(assert (Head-Level-Mother-Daughters from ?lvl ?FromToPP ?PP1 ?PP2 ))
	(assert (Node-Category ?FromToPP FromToPP))
	(assert (Mother  ?PP1))
        (printout ?*order_debug-file* "(rule_name - from_to_PPs  " ?*count* " " crlf
                          "             Before    - "?head" "?lvl"  "?Mot"  "(implode$ $?d1)" "?PP1" "?PP2" "(implode$ $?d2) crlf
                          "             After     - "?head" "?lvl"  "?Mot"  "(implode$ $?d1)" "?FromToPP" "(implode$ $?d2)")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
; October to March is the best time to visit the Jaipur city. Did you count ten to twelve. Added by Sukhada (14-9-11)
;In the south, jammu is a transition zone from the indian plains to the himalayas.
(defrule make_compoundPhrase
(declare (salience 1450))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?d1 ?NP1 ?PP2 $?d2)
(Node-Category  ?NP1    NP)
(Node-Category  ?PP2    PP)
(Head-Level-Mother-Daughters ?h1 ? ?NP1 $?d3 )
(id-original_word ?n1 ?h1) 
(id-cat_coarse ?n1 ?num1) 
(Head-Level-Mother-Daughters to ? ?PP2 $?d4 ?np2)
(Head-Level-Mother-Daughters ?h2 ? ?np2 $?d5)
(id-original_word ?n2 ?h2)
(id-cat_coarse ?n2 ?num2)
(test (and (eq (numberp ?h1) FALSE) (eq (numberp ?h2) FALSE)));Added to avoid gdbm errors. By Roja(18-10-11)
(test (or (and (neq (gdbm_lookup "time.gdbm" ?h1) "FALSE")(neq (gdbm_lookup "time.gdbm" ?h2) "FALSE"))
          (and (neq (gdbm_lookup "place.gdbm" ?h1) "FALSE")(neq (gdbm_lookup "place.gdbm" ?h2) "FALSE"))
	  (and (eq ?num1 number) (eq ?num2 number)) ))
(not (Mother  ?NP1))
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f)
        (bind ?compPhrase (explode$ (str-cat compound_phrases ?*count* )))
	(assert (dont_reverse_compPhrases ?compPhrase))
        (assert (Mother  ?NP1))
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?d1  ?compPhrase $?d2))
        (assert (Head-Level-Mother-Daughters from ?lvl ?compPhrase ?NP1 ?PP2 ))
        (assert (Node-Category ?compPhrase compound_phrases))
        (printout ?*order_debug-file* "(rule_name - make_compPhrase  " ?*count* " " crlf
                          "             Before    - "?head" "?lvl"  "?Mot"  "(implode$ $?d1)" "?NP1" "?PP2" "(implode$ $?d2) crlf
                          "             After     - "?head" "?lvl"  "?Mot"  "(implode$ $?d1)" "?compPhrase" "(implode$ $?d2)")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;The Fateh Prakash Palace is a perfect example of luxury and style that states Udaipur as a city of royal hospitalilty and culture. Added by Sukhada (13-9-11)
(defrule move_BEandHAVE_b4_SBAR
(declare (salience 1000))
(prep_id-relation-anu_ids ? viSeRya-jo_samAnAXikaraNa  ?vi ?samA)
(prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa  ?sub ?vi)
(Head-Level-Mother-Daughters ? ? ?mot $? ?sub $?)
?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?M $?d ?mot $?d1)
(id-original_word ?samA ?word)
(id-original_word ?vi ?word1)
?f1<-(Head-Level-Mother-Daughters ?word1 ?l ?M1 $?d2 ?SBAR $?d3)
(Head-Level-Mother-Daughters ?word ? ?SBAR $?)
(Node-Category ?SBAR SBAR)
(not (Mother ?head)) ; Added by Shirisha Manju (21-10-11) The anasager lake is an artificial lake that was constructed by raja anaji sometime in the 1150 a.d..
=>
	(bind ?*count* (+ ?*count* 1))
	(retract ?f0 ?f1)
	(assert (Head-Level-Mother-Daughters ?head ?lvl ?M $?d ?mot $?d1 ?SBAR))
	(assert	(Head-Level-Mother-Daughters ?word1 ?l ?M1 $?d2 $?d3))
	(assert (Mother ?head))	
        (printout ?*order_debug-file* "(rule_name - move_BEandHAVE_b4_SBAR " ?*count* " "crlf
                          "             Before    - "?head" "?lvl"  "?M"  "(implode$ $?d)" "?mot"  "(implode$ $?d1)"  "crlf
                          "             After     - "?head" "?lvl"  "?M"  "(implode$ $?d)" "?mot"  "(implode$ $?d1)" "?SBAR")"crlf)
        (printout ?*order_debug-file* "(rule_name - move_BEandHAVE_b4_SBAR " ?*count* " "crlf
                          "             Before    - "?word1" "?l" "?M1" "(implode$ $?d2)" "?SBAR" "(implode$ $?d3)"  "crlf
                          "             After     - "?word1" "?l" "?M1" "(implode$ $?d2)" "(implode$ $?d3) ")"crlf)


) 	
;-----------------------------------------------------------------------------------------------------------------------
; Mysore is also known as the city of palaces.
; Added by Shirisha Manju (12-08-11) Suggested by Sukhada
;If VP > ADVP VP1 and VP1 > x y z then this rule modifies VP as VP > ADVP x y z and removes the node VP1.
(defrule merge_ADVP
(declare (salience 1400))
?f0<-(Head-Level-Mother-Daughters ?h ?l ?VP ?ADVP ?VP1)
?f1<-(Head-Level-Mother-Daughters ?h1 ? ?VP1 $?daut)
(Node-Category  ?VP   VP)
(Node-Category  ?VP1  VP)
(Node-Category  ?ADVP ADVP)
(test (neq ?h ?h1))
=>
	(bind ?*count* (+ ?*count* 1))
	(retract ?f0 ?f1)
	(assert (Head-Level-Mother-Daughters ?h ?l ?VP ?ADVP $?daut))
	(printout ?*order_debug-file* "(rule_name - merge_ADVP " ?*count* " "crlf
                          "             Before    - "?h" "?l"  "?VP"  "?ADVP" "?VP1"  "crlf
                          "             After     - "?h" "?l"  "?VP"  "?ADVP" "(implode$ $?daut) ")"crlf)
 )
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (1-06-11) -- Suggested by Sukhada.
;Failure to comply may result in dismissal.
(defrule dont_rev_if_VP_goesto_TO
(declare (salience 1400))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  ?d $?daut)
(Node-Category  ?Mot  VP)
(Node-Category  ?d TO)
(not (Mother  ?Mot))
=>      
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?lev ?Mot  ?d $?daut))
        (assert (Mother  ?Mot))
	(printout ?*order_debug-file* "(rule_name - dont_rev_if_VP_goesto_TO " ?*count* " " crlf
                         "              Before    - "?head" "?lev" "?Mot" "?d" "(implode$  $?daut) crlf
                         "              After     - "?head" "?lev" "?Mot" "?d" "(implode$ $?daut) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (2-08-11) -- Suggested by Sukhada.
;The balance is supplied by a host of smaller exporters, such as Australia and Venezuela.
(defrule dont_rev_if_PP_goesto_SUCH
(declare (salience 1400))
?f0<-(Head-Level-Mother-Daughters ?head ?l ?Mot ?JJ $?d)
(Node-Category  ?Mot  PP)
(Head-Level-Mother-Daughters ?h&such ? ?JJ $?)
(not (Mother  ?Mot))
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?l ?Mot  ?JJ $?d))
        (assert (Mother  ?Mot))
        (printout ?*order_debug-file* "(rule_name - dont_rev_if_PP_goesto_SUCH " ?*count* " " crlf
                         "              Before    - "?head" "?l" "?Mot" "?JJ" "(implode$  $?d) crlf
                         "              After     - "?head" "?l" "?Mot" "?JJ" "(implode$ $?d) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (19-08-11) -- Suggested by Sukhada.
;But the full effect on prices of the winter wheat now being planted will not be felt until the second half of next year.
(defrule dont_rev_if_VP_ends_with_verb
(declare (salience 1400))
?f0<-(Head-Level-Mother-Daughters ?head ?l ?Mot $?d ?VP)
(Head-Level-Mother-Daughters ?word ? ?VP ?id)
(Node-Category  ?Mot  VP)
(Node-Category  ?VP  VP)
(or (id-original_word ?id ?word)(id-root ?id ?word))
(id-cat_coarse ?id verb)
(not (Mother  ?Mot))
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?l ?Mot  $?d ?VP))
        (assert (Mother  ?Mot))
        (printout ?*order_debug-file* "(rule_name - dont_rev_if_VP_ends_with_verb " ?*count* " " crlf
                         "              Before    - "?head" "?l" "?Mot" "(implode$  $?d)" "?VP crlf
                         "              After     - "?head" "?l" "?Mot" "(implode$ $?d)" "?VP ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (19-08-11) -- Suggested by Sukhada.
;Some analysts saw the payment as an effort also to dispel takeover speculation. 
(defrule dont_rev_if_S_goesto_ADVP_and_VP
(declare (salience 1400))
?f0<-(Head-Level-Mother-Daughters ?head ?l ?Mot ?ADVP ?VP)
(Head-Level-Mother-Daughters also ? ?ADVP $?)
(Node-Category  ?Mot S)
(Node-Category  ?ADVP ADVP)
(Node-Category  ?VP VP)
(not (Mother  ?ADVP))
=>
	(bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?l ?Mot  ?ADVP ?VP))
        (assert (Mother  ?ADVP))
        (printout ?*order_debug-file* "(rule_name - dont_rev_if_S_goesto_ADVP_and_VP " ?*count* " " crlf
                         "              Before    - "?head" "?l" "?Mot" "?ADVP" "?VP crlf
                         "              After     - "?head" "?l" "?Mot" "?ADVP" "?VP ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (29-11-11) -- Suggested by Sukhada.
;They accused him of the crime.
(defrule dont_rev_if_VP_head_accused
(declare (salience 1400))
?f0<-(Head-Level-Mother-Daughters ?head&accused ?l ?Mot ?ADVP $?d ?VP)
(Node-Category  ?Mot VP)
(not (Mother  ?Mot))
=>
	(bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?l ?Mot $?d ?VP ?ADVP))
        (assert (Mother  ?Mot))
        (printout ?*order_debug-file* "(rule_name - dont_rev_if_VP_head_accused " ?*count* " " crlf
                         "              Before    - "?head" "?l" "?Mot" "?ADVP" "(implode$ $?d)" "?VP crlf
                         "              After     - "?head" "?l" "?Mot" "(implode$ $?d)" "?VP" "?ADVP ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------

(defrule print_for_debugging2
(declare (salience 1000))
=>
(bind ?*count* (+ ?*count* 1))
(printout ?*order_debug-file* "(debug_info  "?*count*" Applying Reversing rules )" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Have you ever seen Pacific?  Added by Sukhada
(defrule move_ADVP_after_v
(declare (salience 960))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot ?advp ?vp $?daut )
(Node-Category  ?Mot  VP)
(Node-Category  ?advp  ADVP)
(not (Mother  ?advp))
(not (Mother  ?Mot));Her heart beats fast. 
=>
        (retract ?f0)
	(assert (Mother  ?advp))
	(assert (Head-Level-Mother-Daughters ?head ?lev ?Mot ?vp ?advp $?daut ))
	(printout ?*order_debug-file* "(rule_name - move_ADVP_after_v " ?*count* " " crlf
                         "              Before    - "?head" " ?lev" "?Mot" "?advp" "?vp" "(implode$ $?daut) crlf
	                 "              After     - "?head" " ?lev" "?Mot" "?vp" "?advp" "(implode$ $?daut) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule rev_VP_or_PP_or_WHPP
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?d ?d1 )
(Node-Category  ?Mot  VP|PP|WHPP)
(not (Node-Category  ?d CC));I ate fruits, drank milk and slept. 
(not (Mother  ?Mot))
(not (Daughters_replaced  ?Mot))
(test (and (neq ?head think) (neq ?head thought) (neq ?head thinks) (neq ?head thinking) (neq ?head matter) (neq ?head wonder) (neq ?head say) (neq ?head said) (neq ?head says) (neq ?head saying) (neq ?head disputed) (neq ?head suppose) (neq ?head supposed) (neq ?head supposes) (neq ?head supposing) (neq ?head commented) (neq ?head figured) (neq ?head pointed))) ;Do you think we should go to the party?  He disputed that our program was superior.
=>
        (bind ?*count* (+ ?*count* 1))	
        (retract ?f0)
	(bind ?rev_daut (create$ ?head ?lev (reverse_daughters ?Mot $?daut ?d ?d1)))
	(assert (Head-Level-Mother-Daughters ?rev_daut))
	(assert (Mother  ?Mot))
	(printout ?*order_debug-file* "(rule_name - rev_VP_or_PP_or_WHPP " ?*count* " " crlf
                         "              Before    - "?head" " ?lev" "?Mot" "(implode$ $?daut)" " ?d" "?d1 crlf
	                 "              After     - "(implode$ ?rev_daut) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;;Ex. I gave her a book. I will tell you the story tomorrow. 
;Added by Shirisha Manju (11-08-11) Suggested by Sukhada
; The root fact is loaded only for OL bcoz Ol shows head as root sometimes and word some times
(defrule rev_VP_for_obj1_obj2
(declare (salience 940))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?d1 ?d $?rest)
(Node-Category  ?Mot  VP)
(or (id-original_word ?kri ?head)(id-root ?kri ?head)) ;I gave Rama a book.The fact that he smiled at me gives me hope.
(and (prep_id-relation-anu_ids ? kriyA-object_2 ?kri ?obj2)(prep_id-relation-anu_ids ? kriyA-object_1 ?kri ?obj1))
(or (id-original_word ?obj2 ?wrd)(id-root ?obj2 ?wrd))
(or (id-original_word ?obj1 ?h)(id-root ?obj1 ?h))
(Head-Level-Mother-Daughters  ?wrd ? ?d1  $?modf  ?y )
(Head-Level-Mother-Daughters  ?h ? ?d  $?mod  ?x )
(not (Mother  ?d1))
(not (Mother ?d))
(not (prep_id-relation-anu_ids ? viSeRya-jo_samAnAXikaraNa  ?obj2 ?));I will show you the house which I bought.
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters  ?head ?lev ?Mot $?daut ?d ?d1  $?rest))
        (assert (Mother  ?d1))
        (assert (Mother  ?d))
        (printout ?*order_debug-file* "(rule_name - rev_VP_for_obj1_obj2 " ?*count* " " crlf
                         "              Before    - "?head" " ?lev" "?Mot" "(implode$ $?daut)" " ?d1" "?d" "(implode$ ?rest) crlf
                         "              After     - "?head" " ?lev" "?Mot" "(implode$ $?daut)" " ?d" "?d1" "(implode$ ?rest) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;At this point, the Dow was down about 35 points.
; Added by Shirisha Manju(09-07-11) Suggested by Sukhada.
(defrule rev_ADVP
(declare (salience 940))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?d ?d1 )
(Node-Category  ?Mot  ADVP)
(Node-Category  ?d1  NP)
(not (Mother  ?Mot))
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (bind ?rev_daut (create$ ?head ?lev (reverse_daughters ?Mot $?daut ?d ?d1)))
        (assert (Head-Level-Mother-Daughters ?rev_daut))
        (assert (Mother  ?Mot))
        (printout ?*order_debug-file* "(rule_name - rev_ADVP " ?*count* " " crlf
                         "              Before    - "?head" " ?lev" "?Mot" "(implode$ $?daut)" " ?d" "?d1 crlf
                         "              After     - "(implode$ ?rev_daut) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju(15-06-11) Suggested by Sukhada.
; The mystery of the Nixon tapes was never solved
; Anne told me I would almost certainly be hired.
(defrule rev_ADVP_goesto_RB
(declare (salience 900))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut $?d1 ?d $?d2)
(Head-Level-Mother-Daughters never|certainly|apparently|clearly|really  ? ?d $?)
(Node-Category  ?d  ADVP)
(Node-Category  ?Mot  VP)
(not (Mother ?d))
=>
	(bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters   ?head ?lev ?Mot $?daut ?d $?d1 $?d2))
	(assert (Mother ?d))
        (printout ?*order_debug-file* "(rule_name - rev_ADVP_goesto_RB " ?*count* " " crlf
	                 "              Before    - " ?head" " ?lev" " ?Mot" "(implode$ $?daut)" "(implode$ $?d1)" "?d" "(implode$ $?d2) crlf 
			 "		After	  - " ?head" " ?lev" " ?Mot" "(implode$ $?daut)" " ?d " "(implode$ $?d1)" "(implode$ $?d2) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju(30-05-11) Suggested by Sukhada. Modified by Sukhada on 31-05-11.
;Buying of shares was brisk on Wall Street today. She is very careful about her work.  
(defrule rev_ADJP_goesto_PP
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?d)
(Node-Category  ?Mot  ADJP)
(Node-Category  ?d  PP|S);Dick is important to fix the problem.
(not (Mother  ?Mot))
=>      
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters   ?head ?lev ?Mot ?d $?daut))
        (assert (Mother  ?Mot))
  	(printout ?*order_debug-file* "(rule_name - rev_ADJP_goesto_PP " ?*count* " "crlf
                         "              Before    - "?head" " ?lev" "?Mot" "(implode$ $?daut)" "?d crlf
                         "              After     - "?head" " ?lev" " ?Mot" "?d" "(implode$ $?daut) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(14-06-11) -- suggested by sukhada
;The yield of kharif crops was not good this season.
(defrule rev_ADJP_goesto_RB
(declare (salience 900))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?d $?dt)
(Head-Level-Mother-Daughters ? ? ?d ?id)
(Node-Category  ?Mot  ADJP)
(Node-Category  ?d  RB)
(id-original_word ?id not)
(not (Mother  ?Mot))
=>       
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters   ?head ?lev ?Mot $?daut $?dt ?d))
        (assert (Mother  ?Mot))
        (printout ?*order_debug-file* "(rule_name - rev_ADJP_goesto_RB " ?*count* " " crlf
                         "              Before    - "?head" "?lev" "?Mot" "(implode$ $?daut)" "?d " "(implode$ $?dt) crlf 
                         "              After     - "?head" "?lev" "?Mot" "(implode$ $?daut)" "(implode$ $?dt)" "?d ")"crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(20-06-11) Suggested by Dipti mam
;How many people did you see? How much money did you earn? I wonder how much money you earned.
;In which school do you study? I wonder how much you swim
(defrule WHNP_rule
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  ?whnp ?sq)
?f1<-(Head-Level-Mother-Daughters ?h ?l ?sq $?dau ?vp)
(Node-Category  ?Mot  SBARQ|SBAR)
(Node-Category ?whnp WHNP|WHADJP|WHPP)
(Node-Category ?sq  SQ|S)
(Node-Category ?vp VP)
(not (Mother  ?Mot))
(not (prep_id-relation-anu_ids ? viSeRya-jo_samAnAXikaraNa ? ?));Added by Sukhada(9.8.11). Ex. I will show you the house which I bought. Phil gave me a sweater which he bought in Paris. 
=>
	(bind ?*count* (+ ?*count* 1))
        (retract ?f0 ?f1)
	(assert (Head-Level-Mother-Daughters ?head ?lev ?Mot ?sq))
	(assert (Head-Level-Mother-Daughters ?h ?l ?sq $?dau ?whnp ?vp))
	(assert (Mother  ?Mot))
        (printout ?*order_debug-file* "(rule_name - WHNP_rule " ?*count* " " crlf
                         "              Before    - "?h" "?l" "?sq" "(implode$ $?dau)" "?vp crlf
                         "              After     - "?h" "?l" "?sq" "(implode$ $?dau)" "?whnp" "?vp ")" crlf)
	(printout ?*order_debug-file* "(rule_name - WHNP_rule " ?*count* " " crlf
                         "              Before    - "?head" "?lev" "?Mot" "?whnp" "?sq crlf
                         "              After     - "?head" "?lev" "?Mot" "?sq ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(27-05-11) Suggested by Sukhada
;Is that the film in which he kills his mother? 
(defrule convert_Q_sent_to_normal
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot ?vp ?np $?daut)
(Node-Category  ?Mot  SQ)
(Node-Category  ?vp   MD|VB|VBN|VBZ|VBD|VBP|VBG)
(Head-Level-Mother-Daughters ?h ?l ?np $?d)
(not (Mother  ?Mot))
=>
	(bind ?*count* (+ ?*count* 1))
	(retract ?f0)
	(bind ?v (explode$ (str-cat "VPc" ?*count*)))
	(assert (Head-Level-Mother-Daughters ?head ?lev ?Mot ?np ?v))
	(assert (Head-Level-Mother-Daughters ?h ?l ?v ?vp $?daut))
	(assert (Node-Category ?v VP))
	(assert (Mother  ?Mot))
	(printout ?*order_debug-file* "(rule_name - convert_Q_sent_to_normal " ?*count* " " crlf
                         "              Before    - "?head" "?lev" "?Mot" "?vp" "?np" "(implode$ $?daut) crlf
                         "              After 	  -  "?head" "?lev" "?Mot" "?np" "?v crlf
					      	  "- " ?h" "?l" "?v" "?vp"  " (implode$ $?daut) crlf)	
 )
;-----------------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju(28-05-11) Suggested by Sukhada
;This is the way to go. 
(defrule move_S_last_child_first
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?d)
(Node-Category  ?Mot  NP)
(Node-Category  ?d S)
(not (Mother  ?Mot))
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?lev ?Mot ?d $?daut))
        (assert (Mother  ?Mot))
	(printout ?*order_debug-file* "(rule_name - move_S_last_child_first " ?*count* crlf
                         "              Before    - "?head" "?lev" "?Mot" "(implode$ $?daut)" " ?d crlf
                         "              After     - "?head" "?lev" "?Mot" "?d" "(implode$  $?daut) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju(20-06-11) Suggested by Dipti mam
; He never really recovered from the shock of his wife's death. I have never played golf in my life.
(defrule move_negation_before_verb
(declare (salience 900))
?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?d ?ADVP $?d1) 
(Head-Level-Mother-Daughters never ? ?ADVP $?)
(Head-Level-Mother-Daughters ?h ?l ?mot $?d2 $?d3 ?VP)
?f1<-(Head-Level-Mother-Daughters ?h1 ?l1 ?VP $?d4 ?V $?d5)
(Node-Category ?VP VP)
(Node-Category ?ADVP ADVP)
(or (Node-Category ?V VBD) (id-cat_coarse ?V verb))
(not (Mother  ?ADVP))
=>
	(bind ?*count* (+ ?*count* 1))
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?d $?d1))
	(assert (Head-Level-Mother-Daughters ?h1 ?l1 ?VP $?d4 ?ADVP ?V $?d5))
        (assert (Mother  ?ADVP))
	(assert (Mother ?VP))
        (printout ?*order_debug-file* "(rule_name - move_negation_before_verb " ?*count* crlf
                         "              Before    - "?head" "?lvl" "(implode$ $?d)" "?ADVP" "(implode$ $?d1)" "?VP crlf
                         "              After     - "?head" "?lvl" "(implode$ $?d)" "(implode$ $?d1)" "?VP")" crlf crlf)
	(printout ?*order_debug-file* "(rule_name - move_negation_before_verb " ?*count* crlf
                        "              Before    - "?h" "?l" "?VP" "(implode$ $?d2)" "?V crlf
                         "              After     - "?h" "?l" "?VP" "(implode$ $?d2)" "?ADVP" "?VP")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju(20-06-11) Suggested by Sukhada
;When the dollar is in a free-fall, even central banks can not stop it.
(defrule move_first_RB_in_NP_to_last
(declare (salience 900))
?f0<-(Head-Level-Mother-Daughters ?h ?l ?Mot ?RB $?d)
(Node-Category ?Mot NP)
(Head-Level-Mother-Daughters even ? ?RB ?id)
(not (Mother ?Mot))
=>
	(bind ?*count* (+ ?*count* 1))
        (retract ?f0 )
	(assert (Head-Level-Mother-Daughters ?h ?l ?Mot $?d ?RB))
	(assert (Mother ?Mot))
        (printout ?*order_debug-file* "(rule_name - first_RB_in_NP_to_last " ?*count* crlf
                         "              Before    - "?h" "?l" "?Mot" "?RB"  "(implode$ $?d) crlf
                         "              After     - "?h" "?l" "?Mot"  "(implode$ $?d)" "?RB")" crlf crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;The;Assumptions while writing this rule:
;If the daughters of the NP are not numbers then only this rule fires.
;These are given assuming that if first daughter of the Mother-NP is NP the rest daughters will never be numbers
;PP: VP: Information International said it believes that the complaints, filed in federal court in Georgia, are without merit.
(defrule reverse-NP-Daughters
(declare (salience 800))
?f0<-(Head-Level-Mother-Daughters ?head&~lot&~most&~number&~spot&~kinds ?lvl ?mot ?NP ?PP $?d)
(Node-Category  ?mot  NP)
(Node-Category  ?NP  NP)
(Node-Category  ?PP PP|VP)
(not (Mother  ?mot))
;And I think a lot of people will harp on program trading. This room would look big for a spot of paint.
;Chamba has a number of temples, palaces and stylized buildings

=>      
        (bind ?*count* (+ ?*count* 1))
	(retract ?f0)
	(bind ?NP_rev (create$ ?head ?lvl (reverse_daughters ?mot ?NP ?PP $?d)))
	(assert (Head-Level-Mother-Daughters ?NP_rev))
	(assert (Mother  ?mot))
	(printout ?*order_debug-file* "(rule_name - reverse-NP-Daughters "  ?*count* crlf 
                         "              Before    - "?head" "?lvl" "?mot" "?NP" "?PP " "(implode$ $?d) crlf
	                 "              After     - "(implode$ ?NP_rev) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;All our sisters are coming. He left all his money to the orphanage. 
(defrule replace_NP-daut_PDT
(declare (salience 800))
?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?mot ?PDT ?PRP ?N )
(Node-Category  ?mot  NP)
(Node-Category  ?PDT  PDT)
(not (Mother  ?mot))
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?mot ?PRP  ?PDT ?N ))
        (assert (Mother  ?mot))
	(printout ?*order_debug-file* "(rule_name - replace_NP-daut_PDT "  ?*count* crlf
                         "              Before    - "?head" "?lvl" "?mot" "?PDT" "?PRP" "?N crlf
                         "              After     - "?head" "?lvl" "?mot" "?PRP" "?PDT" "?N ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(13-07-11) Suggested by Sukhada
;Several fund managers expect a rough market this morning before prices stabilize.
;Marriage deals are also fixed under the tree, though this practice is disapproved by the temple authorities.
(defrule prep_in_SBAR_rule
(declare (salience 800))
?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?SBAR ?prep $?d)
(Head-Level-Mother-Daughters ? ? ?prep ?id)
(Node-Category ?SBAR SBAR|PP)
(Node-Category ?prep IN)
(not (prep_id-relation-anu_ids ? kriyA-conjunction  ? ?id));It was so dark that I could not see anything.
(not (Mother  ?SBAR))
(test (and (neq ?head that)(neq ?head because) (neq ?head as)(neq ?head though)(neq ?head although)(neq ?head If)(neq ?head unless))); He argues that efforts to firm up prices will be undermined by producers' plans to expand production capacity.  A quick turnaround is crucial to Quantum because its cash requirements remain heavy. Some grammars are better than others, as we have proved. 
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?SBAR $?d ?prep))
        (assert (Mother  ?SBAR))
        (printout ?*order_debug-file* "(rule_name - prep_in_SBAR_rule "  ?*count* crlf
                         "              Before    - "?head" "?lvl" "?SBAR" "?prep" "(implode$ $?d) crlf
                         "              After     - "?head" "?lvl" "?SBAR" "(implode$ $?d)" "?prep ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Here we undef all the rules (As this rule are firing again after the nodes are replaced with terminal)
(defrule undefrules
(declare (salience 799))
;?f0<-(cntrl_fact_for_rev_order)
=>
(save-facts "hindi_rev_order.dat" local Head-Level-Mother-Daughters)
(undefrule replace_aux_with_head_VP)
(undefrule merge_ADVP)
(undefrule dont_rev_if_VP_goesto_TO)
(undefrule rev_VP_or_PP_or_WHPP)
(undefrule rev_ADJP_goesto_PP)
(undefrule move_S_last_child_first)
(undefrule reverse-NP-Daughters)
(undefrule replace_NP-daut_PDT)
(undefrule move_negation_before_verb)
(undefrule WHNP_rule)
(undefrule prep_in_SBAR_rule)
(undefrule rev_ADVP_goesto_RB)
(undefrule move_ADVP_after_v)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule print_for_debugging3
(declare (salience 750))
=>
(bind ?*count* (+ ?*count* 1))
(printout ?*order_debug-file* "(debug_info  "?*count*"  Replacing Mother-Node with Child-Node  )" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;This is the place I live. This is the place I met him. 
;These shoes that I bought will look nice with that hat.
(defrule get_SBAR_copula
(declare (salience 730))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?dat $?pos)
(Head-Level-Mother-Daughters ? ? ?dat $?child)
(Node-Category  ?Mot SBAR)
(Node-Category  ?dat ?DAT)
(Head-Level-Mother-Daughters ? ? ?m ?samA)
(prep_id-relation-anu_ids ? subject-subject_samAnAXikaraNa ? ?samA)
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f)
        (if (or (eq ?DAT SBAR)(eq ?DAT SBARQ)) then
 	(assert (sbar-mother-dau ?Mot ?dat))
       (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre $?pos))
        (printout ?*order_debug-file* "(rule_name - get_SBAR_copula "  ?*count* crlf
                         "              Before    - "?head" "?lvl" "?Mot" "(implode$ $?pre)"  "?dat" "(implode$ $?pos) crlf
                         "              After     - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "(implode$ $?pos) ")" crlf)
        else
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre $?child $?pos)))
        (printout ?*order_debug-file* "(rule_name - get_SBAR_copula "  ?*count* crlf
                         "              Before    - "?head" "?lvl" "?Mot" "(implode$ $?pre)"  "?dat" "(implode$ $?pos) crlf
                         "              After     - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "(implode$ $?child)" "(implode$ $?pos) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------

(defrule get_SBAR
(declare (salience 730))
?f0<-(Head-Level-Mother-Daughters ?h ?l ROOT1 $?r)
(Head-Level-Mother-Daughters ? ? ?NP $?id ?Mot $?)
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?dat $?pos)
?f1<-(Head-Level-Mother-Daughters ? ? ?dat $?child)
(Node-Category  ?Mot SBAR|SBARQ)
(Node-Category  ?dat ?DAT)
(Node-Category ?NP ?noun)
=>
	(bind ?*count* (+ ?*count* 1))
	(retract ?f)
	(if (eq ?noun NP) then
		(assert (dont_separate_sbar ?Mot))
	)
	(if (and (or (eq ?DAT SBAR)(eq ?DAT SBARQ))(neq ?noun NP)) then
	(retract ?f0)
	(assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre $?pos))
	(assert (sbar-mother-dau ?Mot ?dat))
	(assert (Head-Level-Mother-Daughters ?h ?l ROOT1 $?r ?dat))
	(printout ?*order_debug-file* "(rule_name - get_SBAR "  ?*count* crlf
        	         "              Before    - "?head" "?lvl" "?Mot" "(implode$ $?pre)"  "?dat" "(implode$ $?pos) crlf
                	 "              After     - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "(implode$ $?pos) ")" crlf)
	else
;	(retract ?f1)
	(assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre $?child $?pos)))
	(printout ?*order_debug-file* "(rule_name - get_SBAR "  ?*count* crlf
        	         "              Before    - "?head" "?lvl" "?Mot" "(implode$ $?pre)"  "?dat" "(implode$ $?pos) crlf
                	 "              After     - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "(implode$ $?child)" "(implode$ $?pos) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule replace-daughters
(declare (salience 700))
?used1<-(Head-Level-Mother-Daughters ?head ?lvl ?mother $?daughters)
?used2<-(Head-Level-Mother-Daughters ?head1 ?level ?mother1 $?pre ?mother $?post)
(not (replaced_daughters ?mother))
=>
        (bind ?*count* (+ ?*count* 1))
	(retract  ?used2)
	(assert (Head-Level-Mother-Daughters ?head1 ?level ?mother1 $?pre $?daughters $?post))
	(assert (replaced_daughters ?mother))
	(printout ?*order_debug-file* "(rule_name - replace-daughters "  ?*count* crlf
        	         "              Before    - "?head1" "?level" "?mother1" "(implode$ $?pre)" "?mother" "(implode$ $?post) crlf
                	 "              After     - "?head1" "?level" "?mother1" "(implode$ $?pre)" "(implode$ $?daughters)" "(implode$ $?post) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;This rule delete's all the SBAR from ROOT
(defrule rmv_sbar_from_root
(declare (salience 550))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?daut)
?f1<-(Head-Level-Mother-Daughters ? ? ?dat $?child)
(Node-Category  ?Mot ROOT)
(Node-Category  ?dat SBAR|SBARQ)
(test (member$ $?child $?daut))
(not (dont_separate_sbar ?dat)) ;The boy who came yesterday from Delhi is my friend.
=>
	(retract ?f)
	(assert (Sen  $?child))
	(loop-for-count (?i 1 (length $?child))
                 (bind ?id (nth$ ?i $?child))
                 (bind $?daut (delete-member$ $?daut ?id)))
	(assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?daut))
)
;-----------------------------------------------------------------------------------------------------------------------
;Here ROOT category is changed to SBAR
(defrule rename_ROOT_cat_to_SBAR
(declare (salience 500))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?daut)
?f1<-(Node-Category  ?Mot ROOT)
=>
	(retract ?f1)
	(assert (Sen $?daut))
)
;-----------------------------------------------------------------------------------------------------------------------
;The Master said, if I did not go, how would you ever see? 
(defrule create_sen_SBAR
(declare (salience 100))
?f1<-(Head-Level-Mother-Daughters ? ? ?dat $?child)
(Node-Category  ?dat SBAR|SBARQ)
(not (sbar_ids $?child))
(not (dont_separate_sbar ?dat))
(not (Mother ?dat))
=>
        (assert (Sen  $?child))
        (assert (sbar_ids $?child))
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule assert_dummy_fact
(declare (salience 90))
=>
  (assert (hindi_id_order))
)

;-----------------------------------------------------------------------------------------------------------------------
(defrule hin_order
(declare (salience 80))
?f1<-(hindi_id_order $?dau)
?f0<-(Sen $?daughters ?id)
(not (Sen $? ?id1&:(> ?id ?id1)))
=>
	(retract ?f0 ?f1)
	(assert (hindi_id_order $?dau $?daughters ?id))
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(27-02-12)
(defrule rm_prep_id_in_order
(declare (salience 60))
?f<-(pada_info (preposition $?prep_ids))
?f1<-(hindi_id_order  $?ids ?pid $?ids1)
(test (member$ ?pid $?prep_ids))
(not (pre_id_deleted ?pid))
=>
        (retract ?f1)
        (assert (hindi_id_order   $?ids $?ids1))
        (assert (pre_id_deleted ?pid))
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(27-02-12)
(defrule rm_prep_node_in_cons
(declare (salience 60))
?f0<-(Head-Level-Mother-Daughters ?h ?l ?Mot $?d ?IN)
(Node-Category ?IN IN)
?f1<-(Head-Level-Mother-Daughters ? ? ?IN ?id)
=>
	(retract ?f0 ?f1)
	(assert (Head-Level-Mother-Daughters ?h ?l ?Mot $?d))
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(27-02-12)
(defrule rm_prep_id_in_cons
(declare (salience 55))
(pada_info (preposition $?prep_ids))
?f0<-(Head-Level-Mother-Daughters ?h ?l ?Mot $?d ?pid $?d1)
(test (member$ ?pid $?prep_ids))
=>
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?h ?l ?Mot $?d $?d1))
        (assert (Mother ?Mot))
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule end_order
(declare (salience -200))
(hindi_id_order $?dau)
=>
        (bind ?*count* (+ ?*count* 1))
        (printout ?*order_debug-file* "(debug_info  "?*count* "  Final-order " (implode$ $?dau)")" crlf)
	(close ?*order_debug-file*)
)
;-----------------------------------------------------------------------------------------------------------------------
