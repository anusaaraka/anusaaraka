
(defrule clutter0
(declare (salience 5000))
(id-root ?id clutter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avyavasWiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clutter.clp 	clutter0   "  ?id "  avyavasWiwa )" crlf))
)

;"clutter","N","1.avyavasWiwa"
;My room is never in clutter.
;
(defrule clutter1
(declare (salience 4900))
(id-root ?id clutter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aswa-vyaswa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clutter.clp 	clutter1   "  ?id "  aswa-vyaswa_kara )" crlf))
)

;"clutter","V","1.aswa-vyaswa_karanA"
;My sister cluttered my room with posters.
;
