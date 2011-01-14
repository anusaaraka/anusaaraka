
(defrule crease0
(declare (salience 5000))
(id-root ?id crease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikudZana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crease.clp 	crease0   "  ?id "  sikudZana )" crlf))
)

;"crease","N","1.sikudZana/cunnata_kA_cihna"
;Crease resistant cloths are very popular nowadays.
;--"2.cehare_kI_JurrI"
;A crease on the face is a symptom of old age. 
;--"3.kriketa_ke_Kela_meM_ballebAja_Ora_geMxa_Pekane_vAle_kI_sImA"
;Cricketers they don't play well on out side crease  
;
(defrule crease1
(declare (salience 4900))
(id-root ?id crease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id modZa_kA_cihna_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crease.clp 	crease1   "  ?id "  modZa_kA_cihna_dAla )" crlf))
)

;"crease","VT","1.modZa_kA_cihna_dAlanA/cunnata_kA_cihna_dAlanA"
;Please go && make crease on his trouser.
;
