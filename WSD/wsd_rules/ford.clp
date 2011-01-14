
(defrule ford0
(declare (salience 5000))
(id-root ?id ford)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uWalI_jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ford.clp 	ford0   "  ?id "  uWalI_jagaha )" crlf))
)

;"ford","N","1.uWalI_jagaha{naxI_ke_pAsa}"
;We drove through the ford to reach the village.
;It is not easy to cross the ford during the rainy season.
;
(defrule ford1
(declare (salience 4900))
(id-root ?id ford)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ford.clp 	ford1   "  ?id "  pAra_kara )" crlf))
)

;"ford","VT","1.pAra_karanA"
;Many people ford the river in boat.
;
