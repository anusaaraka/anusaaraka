
(defrule convert0
(declare (salience 5000))
(id-root ?id convert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraXarma_avalaMbI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convert.clp 	convert0   "  ?id "  paraXarma_avalaMbI )" crlf))
)

;"convert","N","1.paraXarma_avalaMbI"
;She converts to the Jewish Faith.
;
(defrule convert1
(declare (salience 4900))
(id-root ?id convert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  convert.clp 	convert1   "  ?id "  baxala )" crlf))
)

;"convert","VT","1.baxalanA"
;We converted from 220 to 11.Volt
;Could you convert my dollars into pounds?
;Convert lead into gold
;The substance converts to an acid
;--"2.Xarma_parivarwana_karanA"
;She converted to Buddhism
;
