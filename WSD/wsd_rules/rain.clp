
(defrule rain0
(declare (salience 5000))
(id-root ?id rain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rain.clp 	rain0   "  ?id "  varRA )" crlf))
)

(defrule rain1
(declare (salience 4900))
(id-root ?id rain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varRA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rain.clp 	rain1   "  ?id "  varRA_ho )" crlf))
)

;"rain","VTI","1.varRA_honA"
;It rained heavily last night.
;It never rains but pours.
;--"2.lagAwAra_bahanA"    
;Tears rained down her cheeks.    
;
;