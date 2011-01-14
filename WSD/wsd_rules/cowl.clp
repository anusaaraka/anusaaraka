
(defrule cowl0
(declare (salience 5000))
(id-root ?id cowl)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id cowling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id iMjana_kA_DZakkana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  cowl.clp  	cowl0   "  ?id "  iMjana_kA_DZakkana )" crlf))
)

;"cowling","N","1.iMjana_kA_DZakkana"
;The mechanic left the cowling of the aircraft open.
;
(defrule cowl1
(declare (salience 4900))
(id-root ?id cowl)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sira_Dazkane_kA_kapadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cowl.clp 	cowl1   "  ?id "  sira_Dazkane_kA_kapadZA )" crlf))
)

;"cowl","N","1.sira_Dazkane_kA_kapadZA"
;The monks cover their head with cowl.
;
;
