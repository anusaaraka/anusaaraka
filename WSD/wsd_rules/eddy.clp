
(defrule eddy0
(declare (salience 5000))
(id-root ?id eddy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BaMvara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eddy.clp 	eddy0   "  ?id "  BaMvara )" crlf))
)

;"eddy","N","1.BaMvara"
;The boy was caught in the eddy unnoticed.
;
(defrule eddy1
(declare (salience 4900))
(id-root ?id eddy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakkara_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eddy.clp 	eddy1   "  ?id "  cakkara_KA )" crlf))
)

;"eddy","V","1.cakkara_KAnA"
