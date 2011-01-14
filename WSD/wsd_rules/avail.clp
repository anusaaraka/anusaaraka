
(defrule avail0
(declare (salience 5000))
(id-root ?id avail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABa_uTAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  avail.clp 	avail0   "  ?id "  lABa_uTAnA )" crlf))
)

;"avail","N","1.lABa_uTAnA/prApwi"
;Students are encouraged to avail the library facility provided by the college authorities.
;vixyArWIyoM ko kAleja praSAsana xvArA xI gayI puswakAlaya kI suviXA kA lABa uTAne ke lie prowsAhiwa kiyA jAwA hE.
;
(defrule avail1
(declare (salience 4900))
(id-root ?id avail)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABa_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  avail.clp 	avail1   "  ?id "  lABa_uTA )" crlf))
)

;"avail","VT","1.lABa_uTAnA"
;Why don't you avail the bus facility available in your school.
;
