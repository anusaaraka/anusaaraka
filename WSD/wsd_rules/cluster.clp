
(defrule cluster0
(declare (salience 5000))
(id-root ?id cluster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gucCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cluster.clp 	cluster0   "  ?id "  gucCA )" crlf))
)

;"cluster","N","1.gucCA"
;A cluster of grapes can be seen hanging from the vine.
;
(defrule cluster1
(declare (salience 4900))
(id-root ?id cluster)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BIdZa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  cluster.clp 	cluster1   "  ?id "  BIdZa_lagA )" crlf))
)

;"cluster","V","1.BIdZa_lagAnA/eka_sAWa_BArI_saMKyA_meM_eka_sWAna_para_honA"
;Photographers clustered round the film star.
;
