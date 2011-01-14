
(defrule surround0
(declare (salience 5000))
(id-root ?id surround)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id surrounding )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Asa-pAsa_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  surround.clp  	surround0   "  ?id "  Asa-pAsa_kA )" crlf))
)

;"surrounding","Adj","1.Asa-pAsa kA"
;From the roof of my house I can see the whole town && the surrounding towns && villages.
;
(defrule surround1
(declare (salience 4900))
(id-root ?id surround)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surround.clp 	surround1   "  ?id "  kinArA )" crlf))
)

;"surround","N","1.kinArA"
;A fire place with a tiled surround.
;
(defrule surround2
(declare (salience 4800))
(id-root ?id surround)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAroM_ora_se_Gera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surround.clp 	surround2   "  ?id "  cAroM_ora_se_Gera )" crlf))
)

;"surround","V","1.cAroM_ora_se_GeranA"
;Police had surrounded the criminal's house.
;
