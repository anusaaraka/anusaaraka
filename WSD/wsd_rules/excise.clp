
(defrule excise0
(declare (salience 5000))
(id-root ?id excise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rAjyakara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  excise.clp 	excise0   "  ?id "  rAjyakara )" crlf))
)

;"excise","N","1.rAjyakara"
;The government should raise the excise duty on tobacco.
;
(defrule excise1
(declare (salience 4900))
(id-root ?id excise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrNa_rUpa_se_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  excise.clp 	excise1   "  ?id "  pUrNa_rUpa_se_nikAla )" crlf))
)

;"excise","VT","1.pUrNa_rUpa_se_nikAlanA"
;A lump was excised from her throat.
;
