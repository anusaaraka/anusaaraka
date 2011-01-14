
(defrule initiate0
(declare (salience 5000))
(id-root ?id initiate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xIkRiwa_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  initiate.clp 	initiate0   "  ?id "  xIkRiwa_vyakwi )" crlf))
)

;"initiate","N","1.xIkRiwa_vyakwi"
;After ablutions the initiate started reciting vedas.
;
(defrule initiate1
(declare (salience 4900))
(id-root ?id initiate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AramBa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  initiate.clp 	initiate1   "  ?id "  AramBa_kara )" crlf))
)

;"initiate","V","1.AramBa_karanA"
;The sutradhar initiates the sanskrit plays.
;--"2.xIkRA_xenA"
;He was initiated in the ceremony.
;
(defrule initiate2
(declare (salience 4800))
(id-root ?id initiate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AramBa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  initiate.clp 	initiate2   "  ?id "  AramBa_kara )" crlf))
)

;"initiate","VTI","1.AramBa_karanA"
;Rajaram Mohan Roy initiated social reforms..
;
