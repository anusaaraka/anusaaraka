
(defrule exterior0
(declare (salience 5000))
(id-root ?id exterior)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAharI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exterior.clp 	exterior0   "  ?id "  bAharI )" crlf))
)

;"exterior","Adj","1.bAharI"
;Carvings were done on the exterior surface of the building.
;
(defrule exterior1
(declare (salience 4900))
(id-root ?id exterior)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhya_rUpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exterior.clp 	exterior1   "  ?id "  bAhya_rUpa )" crlf))
)

;"exterior","N","1.bAhya_rUpa"
;He is a man with a rough exterior.
;
