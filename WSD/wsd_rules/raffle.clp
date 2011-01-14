
(defrule raffle0
(declare (salience 5000))
(id-root ?id raffle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAtarI_xvArA_mAla_kI_bikrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raffle.clp 	raffle0   "  ?id "  lAtarI_xvArA_mAla_kI_bikrI )" crlf))
)

;"raffle","N","1.lAtarI_xvArA_mAla_kI_bikrI"
;The Public school sold the tickets for a raffle. 
;
(defrule raffle1
(declare (salience 4900))
(id-root ?id raffle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAtarI_xvArA_beca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raffle.clp 	raffle1   "  ?id "  lAtarI_xvArA_beca )" crlf))
)

;"raffle","VTI","1.lAtarI_xvArA_becanA"
;The student got a pressure cooker as a prize in a raffle.
;
