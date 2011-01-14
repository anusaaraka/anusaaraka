
(defrule troop0
(declare (salience 5000))
(id-root ?id troop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  troop.clp 	troop0   "  ?id "  xala )" crlf))
)

(defrule troop1
(declare (salience 4900))
(id-root ?id troop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xala_bAzXakara_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  troop.clp 	troop1   "  ?id "  xala_bAzXakara_cala )" crlf))
)

;"troop","V","1.xala_bAzXakara_calanA"
;Jawans are trooping out of the camps.
;
;