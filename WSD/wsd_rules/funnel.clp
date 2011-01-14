
(defrule funnel0
(declare (salience 5000))
(id-root ?id funnel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Panala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  funnel.clp 	funnel0   "  ?id "  Panala )" crlf))
)

;"funnel","N","1.Panala"
;Pour kerosene through the funnel.
;--"2.XuAz_nikalane_kA_Cixra"
;The kitchen has a provision for funnel.
;
(defrule funnel1
(declare (salience 4900))
(id-root ?id funnel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Panala_xvArA_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  funnel.clp 	funnel1   "  ?id "  Panala_xvArA_nikAla )" crlf))
)

;"funnel","V","1.Panala_xvArA_nikAlanA"
;Funnel kerosene into a can.
;
