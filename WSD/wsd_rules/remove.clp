
(defrule remove0
(declare (salience 5000))
(id-root ?id remove)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatAva_yA_xUra_hone_kI_kriyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remove.clp 	remove0   "  ?id "  hatAva_yA_xUra_hone_kI_kriyA )" crlf))
)

;"remove","N","1.hatAva_yA_xUra_hone_kI_kriyA"
;Her account of the incident was several removes from the truth.
;
(defrule remove1
(declare (salience 4900))
(id-root ?id remove)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remove.clp 	remove1   "  ?id "  nikAla_xe )" crlf))
)

; Refer to Sabdasutra
;default_sense && category=verb	hatA_xe	0
;"remove","V","1.hatA_xe"
(defrule remove2
(declare (salience 4800))
(id-root ?id remove)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remove.clp 	remove2   "  ?id "  hatA_xe )" crlf))
)

;"remove","VTI","1.hatA_xenA"
;Remove your hand from my shoulder. 
;--"2.xUra_karanA"
;Remove these spots from your shirt. 
;--"3.alaga_karanA"
;He has been removed from his service. 
;--"4.anwa_karanA"
;We should remove terrorism from our country.  
;--"5.eka_jagaha_se_xUsarI_jagaha_jAnA"
;We removed to Mumbai early in June. 
;
