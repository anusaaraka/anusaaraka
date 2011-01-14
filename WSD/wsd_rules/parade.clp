
(defrule parade0
(declare (salience 5000))
(id-root ?id parade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jalUsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parade.clp 	parade0   "  ?id "  jalUsa )" crlf))
)

;"parade","N","1.jalUsa"
;The general called the troops out for the parade.
;
(defrule parade1
(declare (salience 4900))
(id-root ?id parade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  parade.clp 	parade1   "  ?id "  praxarSana_kara )" crlf))
)

;"parade","V","1.praxarSana_kara"
