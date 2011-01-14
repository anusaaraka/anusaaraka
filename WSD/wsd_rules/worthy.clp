
(defrule worthy0
(declare (salience 5000))
(id-root ?id worthy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worthy.clp 	worthy0   "  ?id "  yogya )" crlf))
)

;"worthy","Adj","1.yogya"
;The student is worthy of praise for his hard work.
;
(defrule worthy1
(declare (salience 4900))
(id-root ?id worthy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAnanIya_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worthy.clp 	worthy1   "  ?id "  mAnanIya_vyakwi )" crlf))
)

;"worthy","N","1.mAnanIya_vyakwi"
;He is noble && worthy, for his contribution in the field of science is immense.
;
