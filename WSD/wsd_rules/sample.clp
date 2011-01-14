
(defrule sample0
(declare (salience 5000))
(id-root ?id sample)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id namUnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sample.clp 	sample0   "  ?id "  namUnA )" crlf))
)

;"sample","N","1.namUnA"
;Ritu needs a sample of his handwritting.
;
(defrule sample1
(declare (salience 4900))
(id-root ?id sample)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id namUnA_banAnA_yA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sample.clp 	sample1   "  ?id "  namUnA_banAnA_yA_le )" crlf))
)

;"sample","V","1.namUnA_banAnA_yA_lenA"
;We sampled openion among the people about changes in constitution.
;
