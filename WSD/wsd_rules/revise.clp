;Added by Meena(25.3.11)
;The government may need to revise its policy in the light of this report.
;His helpfulness today revised my original opinion of him.
;I am revising Geography today.
(defrule revise0
(declare (salience 2700))
(id-root ?id revise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(not(id-root ?id1 manuscript|textbook|book|figure|estimate|edition))
(id-root ?id1 ?root)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharA))
(if (or(eq ?root policy)(eq ?root opinion)(eq ?root plan)(eq ?root project)(eq ?root impression)) then
        (assert (id-wsd_root_mng ?id baxala))
)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revise.clp      revise0   "  ?id "  xoharA )" crlf)
(if (or(eq ?root policy)(eq ?root opinion)(eq ?root plan)(eq ?root project)(eq ?root impression)) then
        (assert (id-wsd_root_mng ?id baxala))
        (printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  revise.clp      revise0   "  ?id "  ko )" crlf)
 )))
  


;Added by Meena(25.3.11)
;His helpfulness today has made me revise my original opinion of him. 
;The teacher made me revise Geography twice. 
(defrule revise1
(declare (salience 2800))
(id-root ?id revise)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 2) make)
(or(kriyA-preraka_kriyA  ?id =(- ?id 2))(kriyA-prayojya_karwA  ?id =(- ?id 1)))
(kriyA-object ?id ?id1)
(not(id-root ?id1 manuscript|textbook|book|figure|estimate))
(id-root ?id1 ?root)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharavA))
(if (or(eq ?root policy)(eq ?root opinion)(eq ?root plan)(eq ?root project)(eq ?root impression)) then
        (assert (id-wsd_root_mng ?id baxalavA))
)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revise.clp      revise1   "  ?id "  xoharavA )" crlf)
(if (or (eq ?root policy)(eq ?root opinion)(eq ?root plan)(eq ?root project)(eq ?root impression)) then
        (assert (id-wsd_root_mng ?id baxalavA))
        (printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  revise.clp      revise1   "  ?id "  ko )" crlf)
 )))





;Added by Meena(25.3.11)
;His publishers made him revise his manuscript three times. 
(defrule revise2
(declare (salience 2700))
(id-root ?id revise)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 2) make)
(or(kriyA-preraka_kriyA  ?id =(- ?id 2))(kriyA-prayojya_karwA  ?id =(- ?id 1)))
(id-root ?id1 manuscript|textbook|book|figure|estimate|edition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMSoXiwa_karavA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revise.clp      revise2   "  ?id "  saMSoXiwa_karavA )" crlf))
)






;Added by Meena(25.3.11)
;We may have to revise this estimate.
(defrule revise3
(declare (salience 2600))
(id-root ?id revise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-root ?id1 manuscript|textbook|book|figure|estimate|edition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMSoXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revise.clp      revise3   "  ?id "  saMSoXiwa_kara )" crlf)
))



(defrule revise4
(declare (salience 0))
(id-root ?id revise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  revise.clp      revise4   "  ?id "  xoharA )" crlf)
))

