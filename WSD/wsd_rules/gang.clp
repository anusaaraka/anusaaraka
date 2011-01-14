
(defrule gang0
(declare (salience 5000))
(id-root ?id gang)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KilAPa_ikatTe_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " gang.clp	gang0  "  ?id "  " ?id1 "  KilAPa_ikatTe_ho  )" crlf))
)

;She says the other students in her class have been ganging up on her.
;usane kahA ki kakRA ke bAkI vixyArWI usake KilAPZa ikatTe ho gae hEM
(defrule gang1
(declare (salience 4900))
(id-root ?id gang)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gang.clp 	gang1   "  ?id "  xala )" crlf))
)

;"gang","N","1.xala"
;A notorious gang of thieves was caught recently.
;
;
