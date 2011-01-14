
(defrule string0
(declare (salience 5000))
(id-root ?id string)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rassI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  string.clp 	string0   "  ?id "  rassI )" crlf))
)

;"string","N","1.rassI"
;I tied up my luggage with a string.
;--"2.gitAra_yA_vayolina_kA_wAra"
;Her fingers are running on gitar's string like an expert gitarist.
;--"3.SrqMKalA"
;A string of imported beads is used to make the necklace.
;--"4.guNoM_kI_SrufKalA"
;A computer has two strings of number.
;
(defrule string1
(declare (salience 4900))
(id-root ?id string)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ko_rassI_se_bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  string.clp 	string1   "  ?id "  ko_rassI_se_bAzXa )" crlf))
)

;"string","V","1.ko_rassI_se_bAzXanA"
; Lamps were string on the pole.
;--"2.Cote_Cote_cIjZoM_ko_sUwra_meM_PironA"
;Fibers strung together to form rope.
;
