
(defrule secure0
(declare (salience 5000))
(id-root ?id secure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id surakRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  secure.clp 	secure0   "  ?id "  surakRiwa )" crlf))
)

;"secure","Adj","1.surakRiwa{mAnasika_rUpa_se}"
;--"2.niSciMwa"
;Chidren need to feel secure.
;--"3.niSciwa"
;Make a sure investment.
;--"4.surakRiwa"
;The strongroom is as secure as we can make it.
;--"5.suxqDZa"
;Is that ladder secure?
;
(defrule secure1
(declare (salience 4900))
(id-root ?id secure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  secure.clp 	secure1   "  ?id "  prApwa_kara_le )" crlf))
)

;"secure","V","1.prApwa_kara_lenA"
;--"2.kasakara_bAzXanA"
;Secure all the doors && windows before leaving.
;--"3.kI_rakRA_karanA"
;We should secure our country from foreign attack.
;
