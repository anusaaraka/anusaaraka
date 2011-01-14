
(defrule coil0
(declare (salience 5000))
(id-root ?id coil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id valayaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coil.clp 	coil0   "  ?id "  valayaka )" crlf))
)

;"coil","N","1.valayaka/lapeta"
;A coil of hair was lying on the floor.
;
(defrule coil1
(declare (salience 4900))
(id-root ?id coil)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lapeta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coil.clp 	coil1   "  ?id "  lapeta )" crlf))
)

;"coil","V","1.lapetanA"
;I coiled the rope around the pole.
;
