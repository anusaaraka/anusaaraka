
(defrule portion0
(declare (salience 5000))
(id-root ?id portion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  portion.clp 	portion0   "  ?id "  BAga )" crlf))
)

;"portion","N","1.BAga"
;The centre portion of the building collapsed.
;--"2.hissA"
;She gave me a generous portion of the black forest cake.
;
(defrule portion1
(declare (salience 4900))
(id-root ?id portion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  portion.clp 	portion1   "  ?id "  bAzta_xe )" crlf))
)

;"portion","V","1.bAzta_xenA"
;The family property was portioned.
;
