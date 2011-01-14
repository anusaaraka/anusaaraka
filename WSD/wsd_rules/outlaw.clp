
(defrule outlaw0
(declare (salience 5000))
(id-root ?id outlaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viXibahiRkqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outlaw.clp 	outlaw0   "  ?id "  viXibahiRkqwa )" crlf))
)

;"outlaw","N","1.viXibahiRkqwa"
;Robin Hood was an outlaw.
;
(defrule outlaw1
(declare (salience 4900))
(id-root ?id outlaw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahiRkqwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outlaw.clp 	outlaw1   "  ?id "  bahiRkqwa_kara )" crlf))
)

;"outlaw","V","1.bahiRkqwa_karanA"
;Hacking should be outlawed.
;
