
(defrule minimal0
(declare (salience 5000))
(id-root ?id minimal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_se_kama-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  minimal.clp 	minimal0   "  ?id "  kama_se_kama- )" crlf))
)

(defrule minimal1
(declare (salience 4900))
(id-root ?id minimal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cote_se_Cote))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  minimal.clp 	minimal1   "  ?id "  Cote_se_Cote )" crlf))
)

;"minimal","Adj","1.Cote se Cote"
;She didn't want to leave behind the minimal trace.
;
;
