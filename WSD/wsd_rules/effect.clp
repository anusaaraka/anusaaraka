
(defrule effect0
(declare (salience 5000))
(id-root ?id effect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  effect.clp 	effect0   "  ?id "  praBAva )" crlf))
)

(defrule effect1
(declare (salience 4900))
(id-root ?id effect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  effect.clp 	effect1   "  ?id "  pUrA_kara )" crlf))
)

;"effect","VT","1.pUrA_karanA"
;The company's transition to automation was effected recently.
;
;