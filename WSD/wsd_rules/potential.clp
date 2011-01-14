
(defrule potential0
(declare (salience 5000))
(id-root ?id potential)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmarWya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  potential.clp 	potential0   "  ?id "  sAmarWya )" crlf))
)

;"potential","Adj","1.sAmarWya"
;Students having potential should be encouraged to work harder.
;
(defrule potential1
(declare (salience 4900))
(id-root ?id potential)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwarnihiwa_Sakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  potential.clp 	potential1   "  ?id "  anwarnihiwa_Sakwi )" crlf))
)

;"potential","N","1.anwarnihiwa_Sakwi"
;She recognised the potential for error in the method being used.
;
