
(defrule vernacular0
(declare (salience 5000))
(id-root ?id vernacular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeSI_BARA_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vernacular.clp 	vernacular0   "  ?id "  xeSI_BARA_kA )" crlf))
)

;"vernacular","Adj","1.xeSI_BARA_kA"
;They are running a vernacular press
;
(defrule vernacular1
(declare (salience 4900))
(id-root ?id vernacular)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeSI_BARA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vernacular.clp 	vernacular1   "  ?id "  xeSI_BARA )" crlf))
)

;"vernacular","N","1.xeSI_BARA"
;Children should be taught in their vernaculars
;
