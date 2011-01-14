
(defrule drug0
(declare (salience 5000))
(id-root ?id drug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drug.clp 	drug0   "  ?id "  xavA )" crlf))
)

;"drug","N","1.xavA"
(defrule drug1
(declare (salience 4900))
(id-root ?id drug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xavA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drug.clp 	drug1   "  ?id "  xavA_xe )" crlf))
)

;"drug","VT","1.xavA_xenA/behoSI_kI_xavA_xenA"
;They drugged the kidnapped tourist
;
