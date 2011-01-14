
(defrule steep0
(declare (salience 5000))
(id-root ?id steep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_KadZI_caDZAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steep.clp 	steep0   "  ?id "  bahuwa_KadZI_caDZAI )" crlf))
)

(defrule steep1
(declare (salience 4900))
(id-root ?id steep)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurAroha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  steep.clp 	steep1   "  ?id "  xurAroha )" crlf))
)

;"steep","Adj","1.xurAroha"
;The mountain on which we went for tracking was very steep.
;--"2.awyaXika"
;There was a steep decline in share values due to mid term elections.
;--"3.bewukA"
;Sewing of corn flakes with tea seems a bit steep to me.
;
;