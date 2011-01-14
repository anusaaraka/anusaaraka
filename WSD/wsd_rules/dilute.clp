
(defrule dilute0
(declare (salience 5000))
(id-root ?id dilute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dilute.clp 	dilute0   "  ?id "  pawalA_kara )" crlf))
)

;"dilute","V","1.pawalA_kara{pAnI_iwyAxi_se}"
(defrule dilute1
(declare (salience 4900))
(id-root ?id dilute)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAnI_se_pawalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dilute.clp 	dilute1   "  ?id "  pAnI_se_pawalA_kara )" crlf))
)

;"dilute","VT","1.pAnI_se_pawalA_karanA"
;Some shampoos shouldn't be diluted.
;
