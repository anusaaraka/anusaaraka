
(defrule grunt0
(declare (salience 5000))
(id-root ?id grunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GuraGura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grunt.clp 	grunt0   "  ?id "  GuraGura )" crlf))
)

;"grunt","N","1.GuraGura{sUara_jEsI_bolI}"
;I could hear the grunt of pigs every morning.
;
(defrule grunt1
(declare (salience 4900))
(id-root ?id grunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GuraGurA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grunt.clp 	grunt1   "  ?id "  GuraGurA )" crlf))
)

;"grunt","V","1.GuraGurAnA{suara_jEse}"
(defrule grunt2
(declare (salience 4800))
(id-root ?id grunt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GuraGurA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  grunt.clp 	grunt2   "  ?id "  GuraGurA )" crlf))
)

;"grunt","VI","1.GuraGurAnA"
;She was grunting all the time while cooking the meal.
;
