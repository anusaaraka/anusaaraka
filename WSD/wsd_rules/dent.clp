
(defrule dent0
(declare (salience 5000))
(id-root ?id dent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dent.clp 	dent0   "  ?id "  gadDA )" crlf))
)

;"dent","N","1.gadDA"
;A truck hit the car from the back && caused this dent in the boot of my car.
;
(defrule dent1
(declare (salience 4900))
(id-root ?id dent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadDA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dent.clp 	dent1   "  ?id "  gadDA_banA )" crlf))
)

;"dent","VT","1.gadDA_banAnA"
;The collision dented the side door of my car.
;
