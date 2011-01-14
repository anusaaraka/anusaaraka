
(defrule colonial0
(declare (salience 5000))
(id-root ?id colonial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upaniveSIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  colonial.clp 	colonial0   "  ?id "  upaniveSIya )" crlf))
)

(defrule colonial1
(declare (salience 4900))
(id-root ?id colonial)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upaniveSI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  colonial.clp 	colonial1   "  ?id "  upaniveSI )" crlf))
)

;"colonial","Adj","1.upaniveSI"
;India was under the colonial rule for many years.
;
;
