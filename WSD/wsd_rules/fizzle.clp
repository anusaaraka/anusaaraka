
(defrule fizzle0
(declare (salience 5000))
(id-root ?id fizzle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KZawma_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " fizzle.clp	fizzle0  "  ?id "  " ?id1 "  KZawma_ho_jA  )" crlf))
)

;The fire gradually fizzled out.
;Aga XIre-XIre KZawma ho gaI
(defrule fizzle1
(declare (salience 4900))
(id-root ?id fizzle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaPala_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fizzle.clp 	fizzle1   "  ?id "  asaPala_ho )" crlf))
)

;"fizzle","V","1.asaPala_honA"
;All of his plans fizzled out on hearing the cost of implementation.
;
;