
(defrule forecast0
(declare (salience 5000))
(id-root ?id forecast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrvAnumAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forecast.clp 	forecast0   "  ?id "  pUrvAnumAna )" crlf))
)

;"forecast","N","1.pUrvAnumAna"
;According to the weather forecast,the sky is likely to remain clear for 
;the next 24hrs.
;
(defrule forecast1
(declare (salience 4900))
(id-root ?id forecast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrvAnumAna_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forecast.clp 	forecast1   "  ?id "  pUrvAnumAna_lagA )" crlf))
)

;"forecast","V","1.pUrvAnumAna_lagAnA"
;The ORG-MARG forecasted the outcome of the assembly elections.
;Astrologers claim to forecast the future.
;
