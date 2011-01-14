
(defrule backbite0
(declare (salience 5000))
(id-root ?id backbite)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id backbiting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cigalaKorI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  backbite.clp  	backbite0   "  ?id "  cigalaKorI )" crlf))
)

;"backbiting","N","1.cigalaKorI"
;I do not like backbiting.
;
(defrule backbite1
(declare (salience 4900))
(id-root ?id backbite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pITa_pICe_niMxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  backbite.clp 	backbite1   "  ?id "  pITa_pICe_niMxA_kara )" crlf))
)

;"backbite","V","1.pITa_pICe_niMxA_karanA"
;I never realised that she has been backbiting me.
;
;
