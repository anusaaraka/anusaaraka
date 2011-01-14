
(defrule camouflage0
(declare (salience 5000))
(id-root ?id camouflage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CaxmAvaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  camouflage.clp 	camouflage0   "  ?id "  CaxmAvaraNa )" crlf))
)

;"camouflage","N","1.CaxmAvaraNa"
;Soldiers use bushes as camouflage.
;
(defrule camouflage1
(declare (salience 4900))
(id-root ?id camouflage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CaxamAvaraNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  camouflage.clp 	camouflage1   "  ?id "  CaxamAvaraNa_kara )" crlf))
)

;"camouflage","V","1.CaxamAvaraNa_karanA"
;The soldiers camouflage themselves with bushes && leaves.
;
