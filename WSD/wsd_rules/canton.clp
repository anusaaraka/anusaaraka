;hindi translation added by preeti
;"canton","N","1.paraganA"
;My youngest sister lives in one of the canton regions of Switzerland.
;merI sabase CotI bahana sviwjaralEMda ke paraganoM kRewroM meM se eka meM rahawI hE.
(defrule canton2
(declare (salience 5050))
(id-root ?id canton)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraganA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  canton.clp 	canton2   "  ?id "  paraganA )" crlf))
)

;hindi translation added by preeti
;"canton","VT","1.paraganoM_meM_viBAjiwa_karanA"
;Countries tend to have cantoned areas for easier administration.
;xeSa sarala praSAsana ke lie kRewroM ko paraganoM_meM_viBAjiwa karane ke liE pravqwwa howe hEM.
(defrule canton1
(declare (salience 4900))
(id-root ?id canton)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraganoM_meM_viBAjiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  canton.clp 	canton1   "  ?id "  paraganoM_meM_viBAjiwa_kara )" crlf))
)
;#############################Defaults rule#######################################
;Added by Preeti(29-11-13)
;Some countries, such as Switzerland, are divided into cantons. 
;sviwjaralEMda jEse kuCa xeSa, prAnwoM meM bAzta xie gaye hEM.
(defrule canton0
(declare (salience 5000))
(id-root ?id canton)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  canton.clp 	canton0   "  ?id "  prAnwa )" crlf))
)
