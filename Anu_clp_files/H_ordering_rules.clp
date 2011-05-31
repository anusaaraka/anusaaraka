(deffunction reverse ($?a)
(if (eq (length ?a) 0) then ?a
 else
(create$ (reverse (rest$ ?a)) (first$ ?a))))

(deffunction reverse_daughters ($?a)
(if (< (length ?a) 2) then ?a
 else
(create$ (first$ ?a) (reverse (rest$ ?a)))))
;----------------------------------------------------------------------------------------
(defrule rev
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?d ?d1 )
(Node-Category  ?Mot  ?cat&:?|VP|PP|WHVP)
(not (Node-Category  ?d CC));I ate fruits, drank milk and slept. 
(not (Node-Category  ?d ADVP));He has been frequently coming.
(not (Mother  ?Mot))
(not (Daughters_replaced  ?Mot))
(test (and (neq ?head think) (neq ?head thought) (neq ?head thinks) (neq ?head thinking) (neq ?head matter) (neq ?head wonder) (neq ?head say) (neq ?head said) (neq ?head says) (neq ?head saying) (neq ?head disputed) (neq ?head suppose) (neq ?head supposed) (neq ?head supposes) (neq ?head supposing) (neq ?head commented) (neq ?head figured) (neq ?head pointed))) ;Do you think we should go to the party?  He disputed that our program was superior.
=>
	(retract ?f0)
	(bind ?rev_daut (create$ ?head ?lev (reverse_daughters ?Mot $?daut ?d ?d1)))
	(assert (Head-Level-Mother-Daughters ?rev_daut))
	(assert (Mother  ?Mot))
	(printout t "rev" ?rev_daut crlf)
)
;----------------------------------------------------------------------------------------
; Anne told me I would almost certainly be hired. I showed them how they should do it. I say it is a damn shame that he left. Can you tell us where those strange ideas came from? 
(defrule rev_VP_SBAR
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?v ?NP ?SBAR )
(Node-Category  ?Mot  VP)
(Node-Category  ?NP  NP)
(Node-Category  ?SBAR SBAR)
=>
        (retract ?f0)
        (bind ?rev_daut (create$ ?head ?lev (reverse_daughters ?Mot $?daut ?v ?NP)))
        (assert (Head-Level-Mother-Daughters ?rev_daut ?SBAR))
        (assert (Mother  ?Mot))
        (printout t "rev_VP_SBAR" ?rev_daut ?SBAR crlf)
)
;----------------------------------------------------------------------------------------
; It was obvious that he would do it. It was so dark that I could not see anything. The last part of the course was hard because I was running against the wind. It is true that you are my friend but I can not go along with you on this issue. 
(defrule rev_ADJP_SBAR
(declare (salience 1999))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?v ?ADJP ?SBAR )
(Node-Category  ?Mot  VP)
(Node-Category  ?ADJP  ADJP)
(Node-Category  ?SBAR SBAR)
(Node-Category  ?v  ?VBD)
(test (or (eq ?head was) (eq ?head is) (eq ?head am) (eq ?head are) (eq ?head were)))
(not (Daughters_replaced  ?Mot))
=>
        (retract ?f0)
        (bind ?rev_daut (create$ ?head ?lev (reverse_daughters ?Mot $?daut ?v ?ADJP)))
        (assert (Head-Level-Mother-Daughters ?rev_daut ?SBAR))
        (assert (Daughters_replaced  ?Mot))
        (assert (Mother  ?Mot))
        (printout t "rev_ADJP_SBAR" ?rev_daut ?SBAR crlf)
)
;----------------------------------------------------------------------------------------
; Added by Shirisha Manju(30-05-11) Suggested by Sukhada
;Buying of shares was brisk on Wall Street today. 
(defrule rev_ADJP_goesto_PP
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?d)
(Node-Category  ?Mot  ADJP)
(Node-Category  ?d  PP)
(not (Mother  ?Mot))
=>
        (retract ?f0)
        (bind ?rev_daut (create$ ?head ?lev (reverse_daughters ?Mot $?daut ?d)))
        (assert (Head-Level-Mother-Daughters ?rev_daut))
        (assert (Mother  ?Mot))
        (printout t "rev_ADJP_goesto_PP" ?rev_daut crlf)
)
;----------------------------------------------------------------------------------------
;Do you think we should go to the party? 
;(defrule dont_rev_VP_goesto_SBAR_goesto_S
;(declare (salience 960))
;?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?d $?d1 )
;(Head-Level-Mother-Daughters ? ? ?d ?s)
;(Node-Category  ?Mot  VP)
;(Node-Category  ?d SBAR)
;(Node-Category  ?s S)
;(not (Mother  ?Mot))
;=>
;        (retract ?f0)
;        (assert (Head-Level-Mother-Daughters ?head ?lev ?Mot  $?daut ?d $?d1))
;        (assert (Mother  ?Mot))
;;        (printout t "rev" ?rev_daut crlf)
;)
;----------------------------------------------------------------------------------------
; Added by Shirisha Manju(27-05-11) Suggested by Sukhada
; Is there life beyond the grave? Is this my book? 
; Is my book in your room? Are you reading the book?
(defrule make_SQ_first_child_last
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  ?d $?daut)
(Node-Category  ?Mot  SQ)
(not (Mother  ?Mot))
=>
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?lev ?Mot $?daut ?d))
        (assert (Mother  ?Mot))
        (printout t "make_SQ_first_child_last" ?Mot $?daut ?d crlf)
)
;----------------------------------------------------------------------------------------
; Added by Shirisha Manju(28-05-11) Suggested by Sukhada
;This is the way to go. 
(defrule make_S_last_child_first
(declare (salience 950))
?f0<-(Head-Level-Mother-Daughters  ?head ?lev ?Mot  $?daut ?d)
(Node-Category  ?Mot  NP)
(Node-Category  ?d S)
(not (Mother  ?Mot))
=>
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?lev ?Mot ?d $?daut))
        (assert (Mother  ?Mot))
        (printout t "make_SQ_first_child_last" ?Mot ?d $?daut  crlf)
)
;----------------------------------------------------------------------------------------
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
=>
	(retract ?f0)
	(bind ?NP_rev (create$ ?head ?lvl (reverse_daughters ?mot ?NP ?PP)))
	(assert (Head-Level-Mother-Daughters ?NP_rev))
	(assert (Mother  ?mot))
	(printout t "reverse-NP-Daughters" ?NP_rev crlf)
)
;----------------------------------------------------------------------------------------
;All our sisters are coming. He left all his money to the orphanage. 
(defrule replace_NP-daut_PDT
(declare (salience 800))
?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?mot ?PDT ?PRP ?N )
(Node-Category  ?mot  NP)
(Node-Category  ?PDT  PDT)
(not (Mother  ?mot))
=>
        (retract ?f0)
        (assert (Head-Level-Mother-Daughters ?head ?lvl ?mot ?PRP  ?PDT ?N ))
        (assert (Mother  ?mot))
        (printout t "replace_NP-daut_PDT" ?PRP  ?PDT ?N crlf)
)
;----------------------------------------------------------------------------------------
(defrule replace-daughters
?used1<-(Head-Level-Mother-Daughters ?head ? ?mother $?daughters)
?used2<-(Head-Level-Mother-Daughters ?head1 ?level ?mother1 $?pre ?mother $?post)
;(not (replaced_daughters ?mother))
=>
	(retract  ?used2)
	(assert (Head-Level-Mother-Daughters ?head1 ?level ?mother1 $?pre $?daughters $?post))
	(printout t "replace-daughters " ?mother1 $?pre $?daughters $?post crlf)
;	(assert (replaced_daughters ?mother))
)
;----------------------------------------------------------------------------------------
;The girl you met yesterday is here. The dog I chased was black.
(defrule insert_jo_samAnAXikaraNa
(declare (salience -50))
?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?mot $?id ?sub $?id1 ?k $?daut)
(Node-Category  ?mot  ROOT)
(or (kriyA-object  ?k  10000)(kriyA-aXikaraNavAcI_avyaya  ?k  10000))
(kriyA-subject  ?k ?sub)
(viSeRya-jo_samAnAXikaraNa  ?  10000)
(not (jo_samAn_id_inserted ))
=>
        (retract ?f0)
	(assert (Head-Level-Mother-Daughters ?head ?lvl ?mot $?id 10000 ?sub $?id1 ?k $?daut))
	(assert (jo_samAn_id_inserted ))
)
;----------------------------------------------------------------------------------------
;Ex It is important to fix the problem. 
;(defrule rev_ADJP_goesto_JJ_S
;(declare (salience 50))
;?f0<-(Head-Level-Mother-Daughters ?head ?lvl ?mot  ?JJ ?S)
;(Node-Category  ?mot  ADJP)
;(Node-Category  ?JJ JJ)
;(Node-Category  ?S  S)
;(not (ADJP_REVERSED   ?mot))
;=>
;        (retract ?f0)
;	(bind ?ADJP_rev (create$ ?head ?lvl (reverse_daughters ?mot ?S ?JJ)))
;        (assert (Head-Level-Mother-Daughters ?head ?lvl ?mot ?ADJP_rev))
;        (printout t "rev_ADJP_goesto_JJ_S " ?ADJP_rev crlf)
;        (assert (Mother  ?mot))
;        (assert (ADJP_REVERSED   ?mot))
;)
;;----------------------------------------------------------------------------------------
(defrule hin_order
(declare (salience -100))
?used1<-(Head-Level-Mother-Daughters ?head ?lvl ?Mot $?daughters)
(Node-Category  ?Mot  ROOT)
=>
	(assert (hindi_id_order $?daughters)))
;----------------------------------------------------------------------------------------
