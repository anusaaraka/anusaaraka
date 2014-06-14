


;Added by Meena(17.4.10)
;The remains of some Roman earthenware vessels were found during the dig . 
(defrule earthenware_vessel0
(declare (salience 5500))
(id-root ?id vessel)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) earthenware)
(samAsa_viSeRya-samAsa_viSeRaNa ?id =(- ?id 1))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1)  mittI_ke_pAwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " vessel.clp  earthenware_vessel0  "  ?id "  " (- ?id 1) "   mittI_ke_pAwra  )" crlf))
)


;$$$ Modified mng from '+_pAwra' to pAwra' and added wsd_viBakwi 'kA' by Roja (13-06-14). Suggested by Chaitanya Sir for below ex.
;A Bronze Age drinking vessel was discovered recently. 
;eka kAzsA yuga pIne kA pAwra hAla mez DUzDa liyA gayA WA.
;Added by Meena(17.4.10)
(defrule vessel1
(declare (salience 5000))
(id-root ?id vessel)
?mng <-(meaning_to_be_decided ?id)
(or(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)(viSeRya-RaRTI_viSeRaNa ?id ?id1)(viSeRya-viSeRaNa ?id ?id1))
(not(id-root ?id1 blood|Blood))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAwra));" +_pAwra ":  to read "kA pAwra" in the output
(assert (id-wsd_viBakwi ?id1 kA))  
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vessel.clp    vessel1   "  ?id "   pAwra )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_viBakwi   " ?*wsd_dir* "  vessel.clp 	vessel1  "  ?id1 "  kA" crlf))
)



;a cargo/fishing/naval/patrol/sailing/supply vessel
;A heart attack is caused by the blood vessels that supply the blood to the heart muscle getting blocked.

