
(defrule glory0
(declare (salience 5000))
(id-root ?id glory)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kIrwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glory.clp 	glory0   "  ?id "  kIrwi )" crlf))
)

(defrule glory1
(declare (salience 4900))
(id-root ?id glory)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paramAnanxa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glory.clp 	glory1   "  ?id "  paramAnanxa_le )" crlf))
)

;"glory","V","1.paramAnanxa_lenA"
;She took glory in her victory at Wimbledon.
;
;