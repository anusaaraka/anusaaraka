
(defrule glut0
(declare (salience 5000))
(id-root ?id glut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwAyawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glut.clp 	glut0   "  ?id "  bahuwAyawa )" crlf))
)

;"glut","N","1.bahuwAyawa"
;Glut of food was kept in the plate.
;
(defrule glut1
(declare (salience 4900))
(id-root ?id glut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jarurawa_se_jyAxA_pUrwi_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  glut.clp 	glut1   "  ?id "  jarurawa_se_jyAxA_pUrwi_kara )" crlf))
)

;"glut","VT","1.jarurawa_se_jyAxA_pUrwi_karanA"
;The market is glutted with consumer durables.
;
