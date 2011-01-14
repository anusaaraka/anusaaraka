
(defrule mortal0
(declare (salience 5000))
(id-root ?id mortal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marwya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mortal.clp 	mortal0   "  ?id "  marwya )" crlf))
)

;"mortal","Adj","1.marwya/maraNaSIla"
;All the living beings on earth are mortal.
;
(defrule mortal1
(declare (salience 4900))
(id-root ?id mortal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marwya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  mortal.clp 	mortal1   "  ?id "  marwya )" crlf))
)

;"mortal","N","1.marwya"
