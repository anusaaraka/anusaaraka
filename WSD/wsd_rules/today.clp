
(defrule today0
(declare (salience 5000))
(id-root ?id today)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  today.clp 	today0   "  ?id "  Aja )" crlf))
)

;"today","Adv","1.Aja"
;I can't meet with you today.
;
(defrule today1
(declare (salience 4900))
(id-root ?id today)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  today.clp 	today1   "  ?id "  Aja )" crlf))
)

;"today","N","1.Aja"
;Today is Monday  .
;
