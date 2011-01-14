
(defrule fifteeth0
(declare (salience 5000))
(id-root ?id fifteeth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pacAsavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fifteeth.clp 	fifteeth0   "  ?id "  pacAsavAz )" crlf))
)

;"fifteeth","N","1.pacAsavAz"
(defrule fifteeth1
(declare (salience 4900))
(id-root ?id fifteeth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id pronoun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pacAsavAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fifteeth.clp 	fifteeth1   "  ?id "  pacAsavAz )" crlf))
)

;"fifteeth","Pron","1.pacAsavAz"
;I recently celebrated my fifteeth birthday.
;
