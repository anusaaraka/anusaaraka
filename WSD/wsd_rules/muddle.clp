
(defrule muddle0
(declare (salience 5000))
(id-root ?id muddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_waraha_pAra_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " muddle.clp	muddle0  "  ?id "  " ?id1 "  kisI_waraha_pAra_laga  )" crlf))
)

;I have no experience for giving an interview but i've to muddle through it.
;
(defrule muddle1
(declare (salience 4900))
(id-root ?id muddle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Brama_meM_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " muddle.clp	muddle1  "  ?id "  " ?id1 "  Brama_meM_padZa  )" crlf))
)

;You've muddled up the Spanish word with German word.
;
(defrule muddle2
(declare (salience 4800))
(id-root ?id muddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZabadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  muddle.clp 	muddle2   "  ?id "  gadZabadZa )" crlf))
)

;"muddle","N","1.gadZabadZa"
;There was a muddle over our hotel accomadation.
;
;