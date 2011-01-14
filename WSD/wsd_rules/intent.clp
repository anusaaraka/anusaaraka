
(defrule intent0
(declare (salience 5000))
(id-root ?id intent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqwasaMkalpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intent.clp 	intent0   "  ?id "  kqwasaMkalpa )" crlf))
)

(defrule intent1
(declare (salience 4900))
(id-root ?id intent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxxeSya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  intent.clp 	intent1   "  ?id "  uxxeSya )" crlf))
)

;"intent","N","1.uxxeSya"
;His intent was to provide a new translation.
;
;
