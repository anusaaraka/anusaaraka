
(defrule thicken0
(declare (salience 5000))
(id-root ?id thicken)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gADZA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thicken.clp 	thicken0   "  ?id "  gADZA_ho )" crlf))
)

;"thicken","VI","1.gADZA_honA"
;Porridge thickened to a paste since it was kept on fire for too long.
;
(defrule thicken1
(declare (salience 4900))
(id-root ?id thicken)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gADZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  thicken.clp 	thicken1   "  ?id "  gADZA_kara )" crlf))
)

;"thicken","VT","1.gADZA_karanA"
;The cook thickened the soup by adding flour to it.
;
