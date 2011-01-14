
(defrule anon0
(declare (salience 5000))
(id-root ?id anon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id Abbr)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajFAwa_leKaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anon.clp 	anon0   "  ?id "  ajFAwa_leKaka )" crlf))
)

;"anon","Abbr:anonymous","1.ajFAwa_leKaka"
;The writer of this poem is anon.
;
(defrule anon1
(declare (salience 4900))
(id-root ?id anon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  anon.clp 	anon1   "  ?id "  jalxI )" crlf))
)

;"anon","Adv","1.jalxI"
