
(defrule register0
(declare (salience 5000))
(id-root ?id register)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  register.clp 	register0   "  ?id "  bahI )" crlf))
)

;"register","N","1.bahI"
;Sir could you sign the hotel register please?
;--"2.xUrI_jahAz_waka_manuSya_yA_bAje_kI_AvAja_sunAI_padZe"
;The register of a flute is very high.  
;
(defrule register1
(declare (salience 4900))
(id-root ?id register)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rajistara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  register.clp 	register1   "  ?id "  rajistara_kara )" crlf))
)

;"register","VT","1.rajistara_kara"
;--"2.xarja_karanA"
;You should always register the birth of a child.
;--"3.paMjIkqwa_karAnA"
;Get yourself registered in the Employment Exchange.  
;--"4.praxarSiwa_karanA"
;Rain Gauge registered 4.7 cm of rain fall.
;
