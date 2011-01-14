
(defrule woo0
(declare (salience 5000))
(id-root ?id woo)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praNaya_nivexana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  woo.clp 	woo0   "  ?id "  praNaya_nivexana_kara )" crlf))
)

;"woo","V","1.praNaya_nivexana_karanA"
(defrule woo1
(declare (salience 4900))
(id-root ?id woo)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vivAha_hewu_prArWanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  woo.clp 	woo1   "  ?id "  vivAha_hewu_prArWanA_kara )" crlf))
)

;"woo","VT","1.vivAha_hewu_prArWanA_karanA"
;Shurpanaka wooed Lakshman to marry her .
;
