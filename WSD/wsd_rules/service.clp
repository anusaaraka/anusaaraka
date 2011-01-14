
(defrule service0
(declare (salience 5000))
(id-root ?id service)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sevA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  service.clp 	service0   "  ?id "  sevA )" crlf))
)

;"service","N","1.sevA"
;The person does the service in the office.
;--"2.viBAga"
;He is working in the Health service.
;--"3.sahAyawA"
;Her services to the state have been immense.
;--"4.vyavasWA"
;A good postal service is needed for every village.
;--"5.upAsanA/anuRtAna"
;He attended the morning service in the temple.
;--"6.saPZAI-XulAI"
;Take your car for service every 3,000 miles.
;--"7.seta/barawana"
;He bought a 30-piece dinner service.
;--"8.wAmIla"
;--"9.sarvisa{tenisa_meM}"
;Her service has improved. 
;
(defrule service1
(declare (salience 4900))
(id-root ?id service)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPZAI-XulAI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  service.clp 	service1   "  ?id "  saPZAI-XulAI_kara )" crlf))
)

;"service","V","1.saPZAI-XulAI_karanA"
;This machine has already been serviced.
;--"2.kI_ApUrwi_karanA"
;The power station is serviced by road transport.
;
