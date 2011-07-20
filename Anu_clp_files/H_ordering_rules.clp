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
(defrule print_for_debugging2
(declare (salience 961))
=>
(bind ?*count* (+ ?*count* 1))
(printout ?*order_debug-file* "(debug_info  "?*count*" Applying Reversing rules )" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju (1-06-11) -- Suggested by Sukhada.
;Failure to comply may result in dismissal.
(defrule dont_rev_if_VP_goesto_TO
(declare (salience 960))
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
(id-word ?id not)
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
; Added by Shirisha Manju(20-06-11) Suggested by Dipti mam
;How many people did you see? How much money did you earn?I wonder how much money you earned.
(defrule WHNP_rule
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  ?whnp ?sq)
?f1<-(Head-Level-Mother-Daughters ?h ?l ?sq $?dau ?vp)
(Node-Category  ?Mot  SBARQ|SBAR)
(Node-Category ?whnp WHNP)
(Node-Category ?sq  SQ|S)
(Node-Category ?vp VP)
(not (Mother  ?Mot))
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
; Added by Shirisha Manju(27-05-11) Suggested by Sukhada
; Is there life beyond the grave? Is this my book? 
; Is my book in your room? Are you reading the book?
(defrule move_first_child_of_SQ_last
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  ?d $?daut)
(Node-Category  ?Mot  SQ)
(Node-Category  ?d  MD|VB|VBN|VBZ|VBD|VBP|VBG)
(not (Mother  ?Mot))
=>
        (bind ?*count* (+ ?*count* 1))
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?lev ?Mot $?daut ?d))
        (assert (Mother  ?Mot))
	(printout ?*order_debug-file* "(rule_name - move_first_child_of_SQ_last " ?*count* " " crlf
                         "              Before    - "?head" "?lev" "?Mot" "?d" "(implode$ $?daut) crlf
                         "              After     - "?head" "?lev" "?Mot" "(implode$  $?daut)" " ?d ")" crlf)
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
(Node-Category ?VP9 VP)
(Node-Category ?ADVP5 ADVP)
(Node-Category ?V VBD)
(not (Mother  ?ADVP))
=>
	(bind ?*count* (+ ?*count* 1))
        (retract ?f0 ?f1)
        (assert (Head-Level-Mother-Daughters ?head ?lvl $?d $?d1 ?VP))
	(assert (Head-Level-Mother-Daughters ?h ?l ?VP $?d2 ?ADVP ?V))
        (assert (Mother  ?ADVP))
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
(defrule reverse-NP-Daughters
(declare (salience 800))
?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?mot ?NP ?PP)
(Node-Category  ?mot  NP)
(Node-Category  ?NP  NP)
(Node-Category  ?PP PP|SBAR)
(not (Mother  ?mot))
(test (and (neq ?head lot)(neq ?head most)(neq ?head number)));And I think a lot of people will harp on program trading.
;Chamba has a number of temples, palaces and stylized buildings
=>      
        (bind ?*count* (+ ?*count* 1))
	(retract ?f0)
	(bind ?NP_rev (create$ ?head ?lvl (reverse_daughters ?mot ?NP ?PP)))
	(assert (Head-Level-Mother-Daughters ?NP_rev))
	(assert (Mother  ?mot))
	(printout ?*order_debug-file* "(rule_name - reverse-NP-Daughters "  ?*count* crlf 
                         "              Before    - "?head" "?lvl" "?mot" "?NP" "?PP crlf
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
;Added by Shirisha Manju(23-06-11) Suggested by Sukhada
;It plunged first its nose into the river. --NN
;Have you ever seen the Pacific? -- NNP , I am afraid that I have badly hurt him. --- PRP
(defrule move_kri_vi_be4_obj
(declare (salience 800))
?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?mot $?d ?NN $?d1)
(Head-Level-Mother-Daughters ? ? ?NN ?obj)
(Node-Category ?mot NP|VP)
(Node-Category ?NN  NN|NNP|PRP)
(kriyA-object  ?k ?obj)
(kriyA-kriyA_viSeRaNa  ?k ?vi)
(Head-Level-Mother-Daughters ? ? ?RB ?vi)
(Head-Level-Mother-Daughters ? ? ?ADVP ?RB $?)
?f1<-(Head-Level-Mother-Daughters ?h ?l ?m $?d2 ?ADVP $?d3)
(not (Mother  ?mot))
=>
	(bind ?*count* (+ ?*count* 1))
        (retract ?f0 ?f1)
	(assert (Head-Level-Mother-Daughters ?head ?lvl ?mot ?ADVP $?d ?NN $?d1))
	(assert (Head-Level-Mother-Daughters ?h ?l ?m $?d2 $?d3))
        (assert (Mother  ?mot))
	(printout ?*order_debug-file* "(rule_name - move_kri_vi_be4_obj "  ?*count* crlf
                         "              Before    - "?head" "?lvl" "?mot" "(implode$ $?d)" "?NN" "(implode$ $?d1) crlf
                         "              After     - "?head" "?lvl" "?mot" "?RB" "(implode$ $?d)" "?NN" "(implode$ $?d1) ")" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
;Added by Shirisha Manju(13-07-11) Suggested by Sukhada
;Several fund managers expect a rough market this morning before prices stabilize.
(defrule prep_in_SBAR_rule
(declare (salience 800))
?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?SBAR ?prep $?d)
(Head-Level-Mother-Daughters ? ? ?prep ?id)
(Node-Category ?SBAR SBAR)
(Node-Category ?prep IN)
(not (kriyA-conjunction  ? ?id));It was so dark that I could not see anything.
(not (Mother  ?SBAR))
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
(undefrule dont_rev_if_VP_goesto_TO)
(undefrule rev_VP_or_PP_or_WHPP)
(undefrule rev_ADJP_goesto_PP)
(undefrule move_first_child_of_SQ_last)
(undefrule move_S_last_child_first)
(undefrule reverse-NP-Daughters)
(undefrule replace_NP-daut_PDT)
(undefrule move_negation_before_verb)
(undefrule move_kri_vi_be4_obj)
(undefrule WHNP_rule)
(undefrule prep_in_SBAR_rule)
(undefrule rev_ADVP_goesto_RB)
)

;-----------------------------------------------------------------------------------------------------------------------
(defrule print_for_debugging3
(declare (salience 750))
=>
(bind ?*count* (+ ?*count* 1))
(printout ?*order_debug-file* "(debug_info  "?*count*"  Replacing Mother-Node with Child-Node  )" crlf)
)
;-----------------------------------------------------------------------------------------------------------------------
(defrule get_SBAR
(declare (salience 730))
?f<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?pre ?dat $?pos)
(Head-Level-Mother-Daughters ? ? ?dat $?child)
(Node-Category  ?Mot SBAR|SBARQ)
(Node-Category  ?dat ?DAT)
=>
	(bind ?*count* (+ ?*count* 1))
	(retract ?f)
	(if (or (eq ?DAT SBAR)(eq ?DAT SBARQ)) then
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
;Our team was easily beaten in the competition.
(defrule move_kri_vi_be4_kri
(declare (salience 4))
?f<-(hindi_id_order  $?pre ?kri $?po ?k_vi $?last)
(kriyA-kriyA_viSeRaNa  ?kri ?k_vi) 
=>      
        (bind ?*count* (+ ?*count* 1))
	(retract ?f)
        (assert (hindi_id_order $?pre ?k_vi ?kri $?po $?last))
        (printout ?*order_debug-file* "(rule_name - move_kri_vi_be4_kri " ?*count* crlf
                         "             Before    - "(implode$ $?pre)" "?kri" "(implode$ $?po)" "?k_vi" "(implode$ $?last) crlf 
                         "             After     - "(implode$ $?pre)" "?k_vi" "?kri" "(implode$ $?po)" "(implode$ $?last) ")" crlf)
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
