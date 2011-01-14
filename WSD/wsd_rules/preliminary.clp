
(defrule preliminary0
(declare (salience 5000))
(id-root ?id preliminary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAraMBika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  preliminary.clp 	preliminary0   "  ?id "  prAraMBika )" crlf))
)

;"preliminary","Adj","1.prAraMBika"
;we have two preliminary tests before our board examination.
;
(defrule preliminary1
(declare (salience 4900))
(id-root ?id preliminary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAraMBika_wEyArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  preliminary.clp 	preliminary1   "  ?id "  prAraMBika_wEyArI )" crlf))
)

;"preliminary","N","1.prAraMBika_wEyArI"
;All the ambassadors were called for a preliminary meeting before the peace conference.
;
