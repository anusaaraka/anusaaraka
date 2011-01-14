
(defrule evade0
(declare (salience 5000))
(id-root ?id evade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baca_nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evade.clp 	evade0   "  ?id "  baca_nikala )" crlf))
)

;"evade","V","1.baca_nikalanA"
(defrule evade1
(declare (salience 4900))
(id-root ?id evade)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tAla_matola_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evade.clp 	evade1   "  ?id "  tAla_matola_kara )" crlf))
)

;"evade","VT","1.tAla_matola_karanA/tAlanA"
;Party leader  managed to  evade all difficult questions.
;
