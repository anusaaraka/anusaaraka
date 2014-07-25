
;@@@ Added by Anita--19.3.2014
; Of course, the radiation is expected to be very cold today. [By mail]
;निश्चित रूप से, विकिरण से आज अत्यन्त ठण्डा होने के आसार हो रहे हैं  ।
(defrule radiation0
(declare (salience 5000))
(id-root ?id radiation)
?mng <-(meaning_to_be_decided ?id)
(kriyA-karma  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vikiraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  radiation.clp 	radiation0   "  ?id "  vikiraNa )" crlf))
)

;##########################default-rule#################################
;@@@ Added by Anita--26.3.2014
;Electromagnetic radiation from power lines. [oxford learner's dictionary]
;बिजली लाइनों से विद्युत चुम्बकीय किरण पात
(defrule radiation_default-rule
(id-root ?id radiation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kiraNa_pAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  radiation.clp 	radiation_default-rule   "  ?id "  kiraNa_pAwa )" crlf))
)








