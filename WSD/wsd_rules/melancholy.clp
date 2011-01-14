
(defrule melancholy0
(declare (salience 5000))
(id-root ?id melancholy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxAsI_kI_avasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  melancholy.clp 	melancholy0   "  ?id "  uxAsI_kI_avasWA )" crlf))
)

;"melancholy","Adj","1.uxAsI_kI_avasWA"
(defrule melancholy1
(declare (salience 4900))
(id-root ?id melancholy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharI_uxAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  melancholy.clp 	melancholy1   "  ?id "  gaharI_uxAsI )" crlf))
)

;"melancholy","N","1.gaharI_uxAsI"
;Eversince the death of her son she has been in a state of melancholy.
;
