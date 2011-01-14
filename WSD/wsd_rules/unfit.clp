
(defrule unfit0
(declare (salience 5000))
(id-root ?id unfit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ayogya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unfit.clp 	unfit0   "  ?id "  ayogya )" crlf))
)

;"unfit","Adj","1.ayogya"
;He is very fat && unfit.
;
(defrule unfit1
(declare (salience 4900))
(id-root ?id unfit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ayogya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unfit.clp 	unfit1   "  ?id "  ayogya_kara )" crlf))
)

;"unfit","VT","1.ayogya_kara"
;Unfit the tube for disposal!
;
