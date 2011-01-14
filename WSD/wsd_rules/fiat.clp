;Added by Human beings
(defrule fiat0
(declare (salience 5000))
(id-root ?id fiat)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 car)
(samAsa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PiyAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fiat.clp 	fiat0   "  ?id "  PiyAta )" crlf))
)

;She has a fiat car.
(defrule fiat1
(declare (salience 4900))
(id-root ?id fiat)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXikArika_AjFA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fiat.clp 	fiat1   "  ?id "  AXikArika_AjFA )" crlf))
)

;"fiat","N","1.AXikArika_AjFA"
;The government issued a fiat on telecome policies.
;
;
