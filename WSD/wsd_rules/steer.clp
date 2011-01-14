
(defrule steer0
(declare (salience 5000))
(id-root ?id steer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id steering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id stIyariMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  steer.clp  	steer0   "  ?id "  stIyariMga )" crlf))
)

;"steering","N","1.stIyariMga/cAlana-cakkA"
;The car's steering got wrecked in the accident.
;
(defrule steer1
(declare (salience 4900))
(id-root ?id steer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baCadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steer.clp 	steer1   "  ?id "  baCadZA )" crlf))
)

;"steer","N","1.baCadZA"
;One should not prefer steer meat.
;
(defrule steer2
(declare (salience 4800))
(id-root ?id steer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricAlana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steer.clp 	steer2   "  ?id "  paricAlana )" crlf))
)

;"steer","V","1.paricAlana"
;Captain Smith steered the Titanic into the Atlantic.
;--"2.mArga_xiKAnA"
;Our parents steer us at every step of life.
;
