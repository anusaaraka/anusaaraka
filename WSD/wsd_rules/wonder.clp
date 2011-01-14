
(defrule wonder0
(declare (salience 5000))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axBuwawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder0   "  ?id "  axBuwawA )" crlf))
)

;"wonder","N","1.axBuwawA"
;--"2.acaraja"
;We were filled with wonder when the total eclipse occurred.
;
(defrule wonder1
(declare (salience 4900))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acaraja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder1   "  ?id "  acaraja_kara )" crlf))
)




;Added by Meena(8.02.10)
;I wondered for a long time why everyone liked her so much .  
(defrule wonder2
(declare (salience 4800))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScarya_ho)) 
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp    wonder2   "  ?id "  AScarya_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  wonder.clp      wonder2   "  ?id " ko )" crlf)
)
)




;Salience reduced by Meena(8.02.10)
(defrule wonder3
(declare (salience 0))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScaryacakiwa_ho));Modified meaning "AScaryacakiwa_honA" to "AScaryacakiwa_ho" by Meena(16-01-10)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder3   "  ?id "  AScaryacakiwa_ho )" crlf))
)

; mEM AScaryacakiwa howA hUz Vs muHe acaraja howA hE
;"wonder","VT","1.acaraja_honA[karanA]"
;Ramesh wondered at the young child's achievement.
;--"2.kOwuka_honA"
;I wonder whether they will come.
;
