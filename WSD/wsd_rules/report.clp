
(defrule report0
(declare (salience 5000))
(id-root ?id report)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id riporta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  report.clp 	report0   "  ?id "  riporta )" crlf))
)

(defrule report1
(declare (salience 4900))
(id-root ?id report)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAla_liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  report.clp 	report1   "  ?id "  hAla_liKa )" crlf))
)

;"report","VTI","1.hAla_liKanA"
;The discovery of a new medicine of Cancer has been reported.
;--"2.kArya_pragawi_sUcanA"
;The doctor reported the patient is now fit && well. 
;--"3.SikAyawa_karanA"
;I intend to report him to the secretary for cheating.  
;--"4.liKanA"   
;The stenographer has reported the speech of the president. 
;--"5.jAnakArI_xenA"
;Please report to the receptionist on arrival at 10.1.tomorrow with your
;certificates && testimonials. 
;--"6.varNana_karanA"
;He has reported a deficit.  
;The company reports pre-tax profits of over 1000d crore.
;
;
