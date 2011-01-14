
(defrule tonight0
(declare (salience 5000))
(id-root ?id tonight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aja_kI_rAwa_ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tonight.clp 	tonight0   "  ?id "  Aja_kI_rAwa_ko )" crlf))
)

;"tonight","Adv","1.Aja_kI_rAwa_ko"
;I am leaving Hyderabad tonight.
;
(defrule tonight1
(declare (salience 4900))
(id-root ?id tonight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aja_kI_rAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tonight.clp 	tonight1   "  ?id "  Aja_kI_rAwa )" crlf))
)

;"tonight","N","1.Aja_kI_rAwa"
;Tonight there is a Lunar eclipse.



(defrule tonight2
(declare (salience 4900))
(id-root ?id tonight)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kAlavAcI  ?id1 ?id)
;(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aja_rAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tonight.clp    tonight2   "  ?id "  Aja_rAwa )" crlf))
)









;
