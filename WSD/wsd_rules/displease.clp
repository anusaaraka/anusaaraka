
(defrule displease0
(declare (salience 5000))
(id-root ?id displease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nArAjZa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  displease.clp 	displease0   "  ?id "  nArAjZa_kara )" crlf))
)

;"displease","V","1.nArAjZa_karanA"
(defrule displease1
(declare (salience 4900))
(id-root ?id displease)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aprasanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  displease.clp 	displease1   "  ?id "  aprasanna_kara )" crlf))
)

;"displease","VT","1.aprasanna_karanA"
;Ram's attitude displeased his parents.
;
