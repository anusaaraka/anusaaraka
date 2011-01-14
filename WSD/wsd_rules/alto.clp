
(defrule alto0
(declare (salience 5000))
(id-root ?id alto)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisameM_xUsarA_uccawama_svara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alto.clp 	alto0   "  ?id "  jisameM_xUsarA_uccawama_svara_ho )" crlf))
)

;"alto","Adj","1.jisameM_xUsarA_uccawama_svara_ho{vAxya_saMbaMXiwa}"
;Kenny G can play alto saxophone.
;
(defrule alto1
(declare (salience 4900))
(id-root ?id alto)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAyana_meM_UzcA_AlApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alto.clp 	alto1   "  ?id "  gAyana_meM_UzcA_AlApa )" crlf))
)

;"alto","N","1.gAyana_meM_UzcA_AlApa"
;Singing alto needs lot of practice.
;
