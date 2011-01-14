
(defrule butcher0
(declare (salience 5000))
(id-root ?id butcher)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  butcher.clp 	butcher0   "  ?id "  kasAI )" crlf))
)

;"butcher","N","1.kasAI"
;The butcher's son has become an officer.
;
(defrule butcher1
(declare (salience 4900))
(id-root ?id butcher)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirxayawA_se_vaXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  butcher.clp 	butcher1   "  ?id "  nirxayawA_se_vaXa_kara )" crlf))
)

;"butcher","VT","1.nirxayawA_se_vaXa_karanA"
;The militants butchered the captured soldiers.
;
