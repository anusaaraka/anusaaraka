
(defrule snore0
(declare (salience 5000))
(id-root ?id snore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarrAtA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snore.clp 	snore0   "  ?id "  KarrAtA )" crlf))
)

;"snore","N","1.KarrAtA"
(defrule snore1
(declare (salience 4900))
(id-root ?id snore)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarrAtA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snore.clp 	snore1   "  ?id "  KarrAtA_le )" crlf))
)

;"snore","V","1.KarrAtA_lenA"
;Her husband snore's loudly when he is sleeping.
;
