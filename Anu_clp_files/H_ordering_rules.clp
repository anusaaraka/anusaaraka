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
(Node-Category  ?VB     MD|VB|VBN|VBZ|VBD|VBP|VBG|RB)
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
; Mysore is also known as the city of palaces.
; Added by Shirisha Manju (12-08-11) Suggested by Sukhada
;If VP > ADVP VP1 and VP1 > x y z then this rule modifies VP as VP > ADVP xyz and removes the node VP1.
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
(Head-Level-Mother-Daughters ?word ? ?VP ?verb)
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
(defrule print_for_debugging2
(declare (salience 1000))
=>
(bind ?*count* (+ ?*count* 1))
(printout ?*order_debug-file* "(debug_info  "?*count*" Applying Reversing rules )" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Have you ever seen Pasafic?  
(defrule rev_ADVP_1
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
	(printout ?*order_debug-file* "(rule_name - rev_ADVP_1 " ?*count* " " crlf
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
(and (kriyA-object_2 ?kri ?obj2)  (kriyA-object_1 ?kri ?obj1))
(or (id-original_word ?obj2 ?wrd)(id-root ?obj2 ?wrd))
(or (id-original_word ?obj1 ?h)(id-root ?obj1 ?h))
(Head-Level-Mother-Daughters  ?wrd ? ?d1  $?modf  ?y )
(Head-Level-Mother-Daughters  ?h ? ?d  $?mod  ?x )
(not (Mother  ?d1))
(not (Mother ?d))
(not (viSeRya-jo_samAnAXikaraNa  ?obj2 ?));I will show you the house which I bought.
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
(not (viSeRya-jo_samAnAXikaraNa ? ?x));Added by Sukhada(9.8.11). Ex. I will show you the house which I bought. Phil gave me a sweater which he bought in Paris. 
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
; He never really recovered from the shock of his wife's death. 
(defrule move_negation_before_verb
(declare (salience 900))
?f0<-(Head-Level-Mother-Daughters ?head ?lvl $?d ?ADVP $?d1 ?VP)
?f1<-(Head-Level-Mother-Daughters ?h ?l ?VP $?d2 ?V)
(Head-Level-Mother-Daughters never ? ?ADVP $?)
(Node-Category ?VP VP)
(Node-Category ?ADVP5 ADVP)
(or (Node-Category ?V VBD)(id-cat_coarse ?V verb));Ol -- for the above sentence only
(not (Mother  ?ADVP))
=>
	(bind ?*count* (+ ?*count* 1))
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?head ?lvl $?d $?d1 ?VP))
	(assert (Head-Level-Mother-Daughters ?h ?l ?VP $?d2 ?ADVP ?V))
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
;The;Assumptions while writing this rule:
;If the daughters of the NP are not numbers then only this rule fires.
;These are given assuming that if first daughter of the Mother-NP is NP the rest daughters will never be numbers
;PP: VP: Information International said it believes that the complaints, filed in federal court in Georgia, are without merit.
(defrule reverse-NP-Daughters
(declare (salience 800))
?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?mot ?NP ?PP $?d)
(Node-Category  ?mot  NP)
(Node-Category  ?NP  NP)
(Node-Category  ?PP PP|VP)
(not (Mother  ?mot))
(test (and (neq ?head lot)(neq ?head most)(neq ?head number)));And I think a lot of people will harp on program trading.
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
(defrule prep_in_SBAR_rule
(declare (salience 800))
?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?SBAR ?prep $?d)
(Head-Level-Mother-Daughters ? ? ?prep ?id)
(Node-Category ?SBAR SBAR|PP)
(Node-Category ?prep IN)
(not (kriyA-conjunction  ? ?id));It was so dark that I could not see anything.
(not (Mother  ?SBAR))
(test (and (neq ?head that)(neq ?head because))); He argues that efforts to firm up prices will be undermined by producers' plans to expand production capacity.  A quick turnaround is crucial to Quantum because its cash requirements remain heavy.
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
(undefrule rev_ADVP_1)
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
(defrule get_SBAR_copula
(declare (salience 730))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?dat $?pos)
(Head-Level-Mother-Daughters ? ? ?dat $?child)
(Node-Category  ?Mot SBAR)
(Node-Category  ?dat ?DAT)
(Head-Level-Mother-Daughters ? ? ?m ?samA)
(subject-subject_samAnAXikaraNa ? ?samA)
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f)
        (if (or (eq ?DAT SBAR)(eq ?DAT SBARQ)) then
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
(Head-Level-Mother-Daughters ? ? ?NP $?id ?Mot $?)
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?dat $?pos)
(Head-Level-Mother-Daughters ? ? ?dat $?child)
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
	(assert (Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre $?pos))
	(printout ?*order_debug-file* "(rule_name - get_SBAR "  ?*count* crlf
        	         "              Before    - "?head" "?lvl" "?Mot" "(implode$ $?pre)"  "?dat" "(implode$ $?pos) crlf
                	 "              After     - "?head" "?lvl" "?Mot" "(implode$ $?pre)" "(implode$ $?pos) ")" crlf)
	else
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
(declare (salience -80))
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
;The Master said, if I did not go, how would you ever see? 
(defrule create_sen
(declare (salience -90))
?f1<-(Head-Level-Mother-Daughters ? ? ?dat $?child)
(Node-Category  ?dat SBAR|SBARQ)
(not (sent $?child))
(not (dont_separate_sbar ?dat))
=>
	(assert (Sen  $?child))
	(assert (sen  $?child))
)
;-----------------------------------------------------------------------------------------------------------------------
;Here ROOT category is changed to SBAR
(defrule rename_ROOT_cat_to_SBAR
(declare (salience -99))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?daut)
?f1<-(Node-Category  ?Mot ROOT)
=>
	(retract ?f1)
	(assert (Sen $?daut))
	(assert (Node-Category  ?Mot SBAR))
	(assert (hindi_id_order))
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule hin_order
(declare (salience -100))
?f0<-(Sen $?daughters ?id)
(not (Sen $? ?id1&:(> ?id ?id1)))
?f1<-(hindi_id_order $?dau)
;(test (eq (member$ ?id $?dau) FALSE))
=>
	(retract ?f0 ?f1)
	(assert (hindi_id_order $?dau $?daughters ?id))
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule print_for_debugging4
(declare (salience -101))
?f1<-(hindi_id_order $?dau)
=>
(bind ?*count* (+ ?*count* 1))
(printout ?*order_debug-file* "(debug_info  "?*count*"  Hindi-order  " (implode$ $?dau)")" crlf)
(bind ?*count* (+ ?*count* 1))
(printout ?*order_debug-file* "(debug_info  "?*count*"  Word Insertion rules)" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;The girl you met yesterday is here. The dog I chased was black.
(defrule insert_jo_samAnAXikaraNa
(declare (salience 4))
?f0<-(hindi_id_order $?id ?sub $?id1 ?k $?daut)
(or (kriyA-object  ?k  10000)(kriyA-aXikaraNavAcI_avyaya  ?k  10000))
(kriyA-subject  ?k ?sub)
(viSeRya-jo_samAnAXikaraNa  ?  10000)
(not (jo_samAn_id_inserted ))
=>        
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (hindi_id_order $?id 10000 ?sub $?id1 ?k $?daut))
        (assert (jo_samAn_id_inserted ))
	(printout ?*order_debug-file* "(rule_name - insert_jo_samAnAXikaraNa " ?*count* crlf
        	         "              Before    - "(implode$ $?id)" "?sub" "(implode$ $?id1)" "?k" "(implode$ $?daut) crlf
                	 "              After     - "(implode$ $?id)"  10000 "?sub" " (implode$ $?id1)" "?k" "(implode$ $?daut) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
; Added by Shirisha Manju (13-08-11) 
; Do you think we should go to the party? 
(defrule insert_conjunction
(declare (salience 4))
(kriyA-conjunction  ?k 10000)
(kriyA-subject  ?k  ?sub)
(Head-Level-Mother-Daughters ? ? ?NP $?ids)
(Node-Category ?NP NP)
;?f0<-(hindi_id_order $?id ?sub $?id1 ?k $?daut)
?f0<-(hindi_id_order $?id $?ids $?id1 ?k $?daut)
(not (conj_id_inserted ))
(test (member$ ?sub $?ids))
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
       ; (assert (hindi_id_order $?id 10000 ?sub $?id1 ?k $?daut))
        (assert (hindi_id_order $?id 10000 $?ids $?id1 ?k $?daut))
        (assert (conj_id_inserted ))
        (printout ?*order_debug-file* "(rule_name - insert_conjunction " ?*count* crlf
                         "              Before    - "(implode$ $?id)" "?sub" "(implode$ $?id1)" "?k" "(implode$ $?daut) crlf
                         "              After     - "(implode$ $?id)"  10000 "?sub" " (implode$ $?id1)" "?k" "(implode$ $?daut) ")" crlf)
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
