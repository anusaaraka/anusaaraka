
(defrule strip0
(declare (salience 5000))
(id-root ?id strip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strip.clp 	strip0   "  ?id "  pattI )" crlf))
)

;"strip","N","1.pattI"
;cut the paper into strips for decoration.
;--"2.Puta-bAla_tIma_ke_saxasyoM_ke_kapadZe"
;Indians are playing in blue && white strips.
;--"3._He_owns_a_cloth_store_out_on_the_strip"
;
(defrule strip1
(declare (salience 4900))
(id-root ?id strip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kapadZe_uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strip.clp 	strip1   "  ?id "  kapadZe_uwAra )" crlf))
)

;"strip","V","1.kapadZe_uwAranA"
;Everybody stripped off in bathroom.
;--"2.naMgA_karanA"
;Our land is stripped off trees.
;--"3.haTAnA"
;The inspector was stripped off his rank.
;
