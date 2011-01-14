
(defrule fuss0
(declare (salience 5000))
(id-root ?id fuss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawaMgadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fuss.clp 	fuss0   "  ?id "  bawaMgadZa )" crlf))
)

;"fuss","N","1.bawaMgadZa"
;My maid servant does all the work without any fuss.
;
(defrule fuss1
(declare (salience 4900))
(id-root ?id fuss)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawaMgadZa_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fuss.clp 	fuss1   "  ?id "  bawaMgadZa_banA )" crlf))
)

;"fuss","VI","1.bawaMgadZa_banAnA"
;She kept fussing about her dress.
;
