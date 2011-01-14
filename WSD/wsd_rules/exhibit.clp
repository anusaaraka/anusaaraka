
(defrule exhibit0
(declare (salience 5000))
(id-root ?id exhibit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhibit.clp 	exhibit0   "  ?id "  praxarSana )" crlf))
)

;"exhibit","N","1.praxarSana"
;The museum had many exhibits of oriental art
;
(defrule exhibit1
(declare (salience 4900))
(id-root ?id exhibit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exhibit.clp 	exhibit1   "  ?id "  praxarSana_kara )" crlf))
)

;"exhibit","VT","1.praxarSana_karanA"
;He exhibits a great talent
;
