
(defrule estimate0
(declare (salience 5000))
(id-root ?id estimate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  estimate.clp 	estimate0   "  ?id "  anumAna )" crlf))
)

;default_sense && category=noun	mUlya_kA_anumAna	0
;"estimate","N","1.mUlya_kA_anumAna"
;An estimate of what it would cost
;Many factors are involved in any estimate of human life
;He got an estimate from the car repair shop
;
(defrule estimate1
(declare (salience 4900))
(id-root ?id estimate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMxAjZa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  estimate.clp 	estimate1   "  ?id "  aMxAjZa_lagA )" crlf))
)

;"estimate","VT","1.aMxAjZa_lagAnA"
;I estimate this chicken to weigh at three pounds
;
