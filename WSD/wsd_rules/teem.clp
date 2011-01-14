
(defrule teem0
(declare (salience 5000))
(id-root ?id teem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jora_se_barasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  teem.clp 	teem0   "  ?id "  jora_se_barasa )" crlf))
)

;"teem","V","1.jora_se_barasanA"
;We had teeming wet day.
;
(defrule teem1
(declare (salience 4900))
(id-root ?id teem)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  teem.clp 	teem1   "  ?id "  BarA_ho )" crlf))
)

;"teem","VTI","1.BarA_honA"
;The lake was teeming with lotuses.
;
