
(defrule outrage0
(declare (salience 5000))
(id-root ?id outrage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakRoBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outrage.clp 	outrage0   "  ?id "  prakRoBa )" crlf))
)

;"outrage","N","1.prakRoBa"
;The outrage over the ragging incident was very sincere.
;
(defrule outrage1
(declare (salience 4900))
(id-root ?id outrage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakRubXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outrage.clp 	outrage1   "  ?id "  prakRubXa_kara )" crlf))
)

;"outrage","V","1.prakRubXa_karanA"
;The new budget outrages the middle class.
;
