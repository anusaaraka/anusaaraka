
(defrule shift0
(declare (salience 5000))
(id-root ?id shift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shift.clp 	shift0   "  ?id "  parivarwana )" crlf))
)

;"shift","N","1.parivarwana"
;There is a shift in the direction of the wind.
;--"2.pAlI"
;He is on the night shift at the factory.
;--"3.kampyUtara_yA_tAiparAitara_para_sWiwa_eka_kuMjI"
;The whole article had to be typed in small letters because the shift key was not working.
;
(defrule shift1
(declare (salience 4900))
(id-root ?id shift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shift.clp 	shift1   "  ?id "  baxala )" crlf))
)

;"shift","V","1.baxalanA"
;The action of the novel shifts from Paris to London.
;--"2.xUsare_para_dZAlanA"
;Don't try to shift the responsibility onto others.
;--"3.sWAnAnwariwa_karanA"
;I have shifted my T.V. from drawing room to bedroom. 
;
