
(defrule waft0
(declare (salience 5000))
(id-root ?id waft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JoMkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waft.clp 	waft0   "  ?id "  JoMkA )" crlf))
)

;"waft","N","1.JoMkA"
;A waft of air touched her cheeks.
;
(defrule waft1
(declare (salience 4900))
(id-root ?id waft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waft.clp 	waft1   "  ?id "  PElA_xe )" crlf))
)

;"waft","VT","1.PElA_xenA"
;The smell of the flowers was wafted along by the wind
;
(defrule waft2
(declare (salience 4800))
(id-root ?id waft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahA_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waft.clp 	waft2   "  ?id "  bahA_le_jA )" crlf))
)

;"waft","VTI","1.bahA_le_jAnA"
;Swift current waft the trees
;
