
(defrule welt0
(declare (salience 5000))
(id-root ?id welt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gota))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  welt.clp 	welt0   "  ?id "  gota )" crlf))
)

;"welt","N","1.gota"
;The cobbler is mending the welt.
;
(defrule welt1
(declare (salience 4900))
(id-root ?id welt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gota_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  welt.clp 	welt1   "  ?id "  gota_lagA )" crlf))
)

;"welt","VI","1.gota_lagAnA"
;You have to welt your shoe.
;
