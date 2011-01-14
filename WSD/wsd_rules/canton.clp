
(defrule canton0
(declare (salience 5000))
(id-root ?id canton)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paraganA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  canton.clp 	canton0   "  ?id "  paraganA )" crlf))
)

;"canton","N","1.paraganA"
;My youngest sister lives in one of the canton regions of Switzerland.
;
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

;"canton","VT","1.paraganoM_meM_viBAjiwa_karanA"
;Countries tend to have cantoned areas for easier administration.
;
