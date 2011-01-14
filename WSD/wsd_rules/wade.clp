
(defrule wade0
(declare (salience 5000))
(id-root ?id wade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTinAI_pUrvaka_pExala_pAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wade.clp 	wade0   "  ?id "  kaTinAI_pUrvaka_pExala_pAra_kara )" crlf))
)

;"wade","V","1.kaTinAI_pUrvaka_pExala_pAra_karanA{pAnI,kIcadZa,rewa...}"
(defrule wade1
(declare (salience 4900))
(id-root ?id wade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExala_pAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wade.clp 	wade1   "  ?id "  pExala_pAra_kara )" crlf))
)

;"wade","VTI","1.pExala_pAra_karanA"
;He waded through waters
;
