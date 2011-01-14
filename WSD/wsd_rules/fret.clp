
(defrule fret0
(declare (salience 5000))
(id-root ?id fret)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fretted )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id warASA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  fret.clp  	fret0   "  ?id "  warASA_huA )" crlf))
)

;"fretted","Adj","1.warASA_huA"
;The Tanjore temple has an elaborate fretted border in the quadrangle.
;
(defrule fret1
(declare (salience 4900))
(id-root ?id fret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuCa_wAraxAra_vAxya_yanwroM_kI_KUtiyAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fret.clp 	fret1   "  ?id "  kuCa_wAraxAra_vAxya_yanwroM_kI_KUtiyAz )" crlf))
)

;"fret","N","1.kuCa_wAraxAra_vAxya_yanwroM_kI_KUtiyAz"
;The guitarist replaced the frets in the guitar.
;
(defrule fret2
(declare (salience 4800))
(id-root ?id fret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyaWiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fret.clp 	fret2   "  ?id "  vyaWiwa_ho )" crlf))
)

;"fret","V","1.vyaWiwa_honA"
;Buddha was in fret after seeing the injured swan.
;
(defrule fret3
(declare (salience 4700))
(id-root ?id fret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cinwA_prakata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fret.clp 	fret3   "  ?id "  cinwA_prakata_kara )" crlf))
)

;"fret","VT","1.cinwA_prakata_karanA"
;Reema starts to fret whenever her son goes out.
;
