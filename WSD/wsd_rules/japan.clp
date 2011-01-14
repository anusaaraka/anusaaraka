
(defrule japan0
(declare (salience 5000))
(id-root ?id japan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_prakAra_kI_vArniSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  japan.clp 	japan0   "  ?id "  eka_prakAra_kI_vArniSa )" crlf))
)

;"japan","N","1.eka_prakAra_kI_vArniSa"
;They painted the doors with japan which is usually hard && black.
;
(defrule japan1
(declare (salience 4900))
(id-root ?id japan)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rogZana_karake_camakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  japan.clp 	japan1   "  ?id "  rogZana_karake_camakA )" crlf))
)

;"japan","V","1.rogZana_karake_camakAnA"
;They japaned the painted doors && windows.
;
