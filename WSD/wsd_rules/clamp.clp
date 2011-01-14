
(defrule clamp0
(declare (salience 5000))
(id-root ?id clamp)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_kriyA_ko_roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " clamp.clp	clamp0  "  ?id "  " ?id1 "  kisI_kriyA_ko_roka  )" crlf))
)

;Government clamped down drinking (alcohal) on public places.  
;
(defrule clamp1
(declare (salience 4900))
(id-root ?id clamp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kIlaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clamp.clp 	clamp1   "  ?id "  kIlaka )" crlf))
)

;"clamp","N","1.kIlaka"
;Clampscan hold things tightly together.
;
(defrule clamp2
(declare (salience 4800))
(id-root ?id clamp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZora_se_pakadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  clamp.clp 	clamp2   "  ?id "  jZora_se_pakadZa )" crlf))
)

;"clamp","V","1.jZora_se_pakadZanA"
;He clamped the pencil between his teeth.
;
