
(defrule three0
(declare (salience 5000))
(id-root ?id three)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  three.clp 	three0   "  ?id "  wIna )" crlf))
)

;"three","Det","1.wIna"
;Please give me three bananas.
;
(defrule three1
(declare (salience 4900))
(id-root ?id three)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  three.clp 	three1   "  ?id "  wIna )" crlf))
)

;"three","N","1.wIna"
;Please give me three bananas.
;
