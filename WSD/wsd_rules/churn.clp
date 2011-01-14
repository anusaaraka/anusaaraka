
(defrule churn0
(declare (salience 5000))
(id-root ?id churn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_vaswu_ko_bahuwa_aXika_mAwrA_meM_uwpanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " churn.clp	churn0  "  ?id "  " ?id1 "  kisI_vaswu_ko_bahuwa_aXika_mAwrA_meM_uwpanna_kara  )" crlf))
)

;The company churns out thousands of bags every week.
;kaMpanI eka haPwe meM hajZAroM bEga banAwI hE
(defrule churn1
(declare (salience 4900))
(id-root ?id churn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maWane_kI_nAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  churn.clp 	churn1   "  ?id "  maWane_kI_nAxa )" crlf))
)

;"churn","N","1.maWane_kI_nAxa/matakI"
;Milk is shaken in the churn.
;
(defrule churn2
(declare (salience 4800))
(id-root ?id churn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  churn.clp 	churn2   "  ?id "  maWa )" crlf))
)

;"churn","V","1.maWanA"
;Milk is churned to make butter.
;
