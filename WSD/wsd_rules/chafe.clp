
(defrule chafe0
(declare (salience 5000))
(id-root ?id chafe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ragadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chafe.clp 	chafe0   "  ?id "  ragadZa )" crlf))
)

;"chafe","N","1.ragadZa"
;He had a nasty chafe on his knee.
;
(defrule chafe1
(declare (salience 4900))
(id-root ?id chafe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ragadZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  chafe.clp 	chafe1   "  ?id "  ragadZa_jA )" crlf))
)

;"chafe","V","1.ragadZa_jAnA"
;This collar chafes the dog's neck.
;
