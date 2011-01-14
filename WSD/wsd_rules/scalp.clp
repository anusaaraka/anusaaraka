
(defrule scalp0
(declare (salience 5000))
(id-root ?id scalp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sira_kI_KAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scalp.clp 	scalp0   "  ?id "  sira_kI_KAla )" crlf))
)

;"scalp","N","1.sira_kI_KAla"
;Unhealthy scalp can cause dandruff.
;
(defrule scalp1
(declare (salience 4900))
(id-root ?id scalp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sira_kI_KAl_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scalp.clp 	scalp1   "  ?id "  sira_kI_KAl_uwAra )" crlf))
)

;"scalp","V","1.sira_kI_KAl_uwAranA"
;Hitler scalped the Jews, whom he considered impure.
;
