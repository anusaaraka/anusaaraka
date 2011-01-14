
(defrule rustic0
(declare (salience 5000))
(id-root ?id rustic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gazvAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rustic.clp 	rustic0   "  ?id "  gazvAra )" crlf))
)

;"rustic","Adj","1.gazvAra"
;Her beauty lies  in her rustic simplicity.
;
(defrule rustic1
(declare (salience 4900))
(id-root ?id rustic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gazvAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rustic.clp 	rustic1   "  ?id "  gazvAra )" crlf))
)

;"rustic","N","1.gazvAra"
