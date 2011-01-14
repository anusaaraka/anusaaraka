
(defrule rig0
(declare (salience 5000))
(id-root ?id rig)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rigging )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jahAjZa_kI_rassI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rig.clp  	rig0   "  ?id "  jahAjZa_kI_rassI )" crlf))
)

;"rigging","N","1.jahAjZa_kI_rassI"
;Rigging of the ship broke due to friction.
;
(defrule rig1
(declare (salience 4900))
(id-root ?id rig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRa_upakaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rig.clp 	rig1   "  ?id "  viSeRa_upakaraNa )" crlf))
)

;"rig","N","1.viSeRa_upakaraNa"
;I have provided all rigs for your ship. 
;
(defrule rig2
(declare (salience 4800))
(id-root ?id rig)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upakaraNa_se_lesa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rig.clp 	rig2   "  ?id "  upakaraNa_se_lesa_kara )" crlf))
)

;"rig","VT","1.upakaraNa_se_lesa_karanA"
;The ship was rigged properly.
;--"2.cAlAkI_se_saMcAliwa_karanA"
;Opposition party claimed that the election had been rigged.   
;
