
(defrule clasp0
(declare (salience 5000))
(id-root ?id clasp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakasuA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clasp.clp 	clasp0   "  ?id "  bakasuA )" crlf))
)

(defrule clasp1
(declare (salience 4900))
(id-root ?id clasp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id majabUwI_se_pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clasp.clp 	clasp1   "  ?id "  majabUwI_se_pakadZa )" crlf))
)

;"clasp","V","1.majabUwI_se_pakadZanA"
;She clasped his hand firmly while weeping.
;
;