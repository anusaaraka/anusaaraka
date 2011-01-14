
(defrule scuttle0
(declare (salience 5000))
(id-root ?id scuttle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JAbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scuttle.clp 	scuttle0   "  ?id "  JAbA )" crlf))
)

;"scuttle","N","1.JAbA"
;Scuttle is used to carry vegetables.
;
(defrule scuttle1
(declare (salience 4900))
(id-root ?id scuttle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scuttle.clp 	scuttle1   "  ?id "  BAga_jA )" crlf))
)

;"scuttle","V","1.BAga_jAnA/dubAnA{Cexa_karake}"
;--"2.BAga_jAnA"
;He scuttled in the crowd.
;--"3.Cexa_banAnA"
;The terrible shark Scuttled the ship.
;
