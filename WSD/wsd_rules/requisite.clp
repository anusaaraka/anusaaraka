
(defrule requisite0
(declare (salience 5000))
(id-root ?id requisite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apekRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  requisite.clp 	requisite0   "  ?id "  apekRiwa )" crlf))
)

;"requisite","Adj","1.apekRiwa"
;The firm employs the requisite number of women.
;He lacks the requisite experience for developing his skill.
;
(defrule requisite1
(declare (salience 4900))
(id-root ?id requisite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apekRiwa_vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  requisite.clp 	requisite1   "  ?id "  apekRiwa_vaswu )" crlf))
)

;"requisite","N","1.apekRiwa_vaswu"
;All mountaineering requisites are available here.
;
