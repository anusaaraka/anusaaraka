;@@@ Added by Preeti(31-10-13)
;Have you costed out these proposals yet?[ Oxford Advanced Learner's Dictionary]
;kyA Apane aba waka ina praswAvoM kA  mUlya_AMkA  hE?
(defrule costed1
(declare (salience 1000))
(id-word ?id costed)
(id-word ?id1 out) 
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mUlya_AMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  costed.clp	costed1   "  ?id "  " ?id1"  mUlya_AZka )" crlf))
)

;#############################Defaults rule#######################################
;@@@ Added by Preeti(31-10-13)
;The building work has been costed at $30,000.[ Oxford Advanced Learner's Dictionary]
;imArawa kArya kA 30,000 dAlara mUlya AMkA gayA hE.
(defrule costed0
(declare (salience 900))
(id-word ?id costed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya_AMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  costed.clp	costed0   "  ?id "  mUlya_AZka )" crlf))
)

;################### Additional Examples ####################
;The project needs to be costed in detail.
;Their accountants have costed the project at $8.1 million.
;Have you costed out these proposals yet?
