
(defrule crescent0
(declare (salience 5000))
(id-root ?id crescent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varXamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crescent.clp 	crescent0   "  ?id "  varXamAna )" crlf))
)

;"crescent","Adj","1.varXamAna/baDZanevAlA"
;--"2.arXacanxrAkAra"
;The new college building is in crescent shape.
;
(defrule crescent1
(declare (salience 4900))
(id-root ?id crescent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arXacanxrAkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crescent.clp 	crescent1   "  ?id "  arXacanxrAkAra )" crlf))
)

;"crescent","N","1.arXacanxrAkAra"
;The crescent moon looks so beautiful.
;--"2.navacanxra"
;
