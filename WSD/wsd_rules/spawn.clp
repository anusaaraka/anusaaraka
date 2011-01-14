
(defrule spawn0
(declare (salience 5000))
(id-root ?id spawn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalANdaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spawn.clp 	spawn0   "  ?id "  jalANdaka )" crlf))
)

;"spawn","N","1.jalANdaka"
;A fish lays its spawns in deep waters.
;
(defrule spawn1
(declare (salience 4900))
(id-root ?id spawn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aNde_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  spawn.clp 	spawn1   "  ?id "  aNde_xe )" crlf))
)

;"spawn","V","1.aNde_xenA"
;A fish spawns in deep waters.
;
