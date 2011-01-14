
(defrule convict0
(declare (salience 5000))
(id-root ?id convict)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convict.clp 	convict0   "  ?id "  xoRI )" crlf))
)

;"convict","N","1.xoRI"
;He is a rape convict.
;
(defrule convict1
(declare (salience 4900))
(id-root ?id convict)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aparAXI_TaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convict.clp 	convict1   "  ?id "  aparAXI_TaharA )" crlf))
)

;"convict","VT","1.aparAXI_TaharAnA"
;He was convicted of double murder.
;There wasn't enough evidence to convict her.
;
