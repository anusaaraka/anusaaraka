
(defrule northeast0
(declare (salience 5000))
(id-root ?id northeast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwara_pUrvI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  northeast.clp 	northeast0   "  ?id "  uwwara_pUrvI )" crlf))
)

(defrule northeast1
(declare (salience 4900))
(id-root ?id northeast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwara_pUrva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  northeast.clp 	northeast1   "  ?id "  uwwara_pUrva )" crlf))
)

;"northeast","N","1.uwwara_pUrva"
;The weather in the northeast is pleasant.
;
;
