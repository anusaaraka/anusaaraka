
(defrule struck0
(declare (salience 5000))
(id-root ?id struck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  struck.clp 	struck0   "  ?id "  praBAviwa )" crlf))
)

(defrule struck1
(declare (salience 4900))
(id-root ?id struck)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  struck.clp 	struck1   "  ?id "  mArA )" crlf))
)

;Teacher struck me because I was talking.
;
;
