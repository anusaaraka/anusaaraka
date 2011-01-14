
(defrule hose0
(declare (salience 5000))
(id-root ?id hose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rabadZa_yA_plAstika_kI_nalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hose.clp 	hose0   "  ?id "  rabadZa_yA_plAstika_kI_nalI )" crlf))
)

;"hose","N","1.rabadZa_yA_plAstika_kI_nalI"
;bagIce meM pAnI pilAne ke kAma meM 'hose'(rabadZa kI nalI) kA upayoga kiyA jAwA hE. 
;
(defrule hose1
(declare (salience 4900))
(id-root ?id hose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAipa_se_pAnI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hose.clp 	hose1   "  ?id "  pAipa_se_pAnI_xe )" crlf))
)

;"hose","V","1.pAipa_se_pAnI_xenA"
;gereja meM gAdZiyoM ko 'hose'(pAipa se pAnI xekara) saPAI kI jAwI hE.
;
