
(defrule farther0
(declare (salience 5000))
(id-root ?id farther)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  farther.clp 	farther0   "  ?id "  xUra )" crlf))
)

;"farther","Adj","1.xUra"
;The stadium is in farther north of the city.
;
(defrule farther1
(declare (salience 4900))
(id-root ?id farther)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ora_xUra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  farther.clp 	farther1   "  ?id "  Ora_xUra )" crlf))
)

;"farther","Adv","1.Ora_xUra"
;You have to go farther to board the bus.
;
