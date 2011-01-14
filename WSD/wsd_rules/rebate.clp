
(defrule rebate0
(declare (salience 5000))
(id-root ?id rebate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id battA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rebate.clp 	rebate0   "  ?id "  battA )" crlf))
)

;"rebate","N","1.battA"
;
(defrule rebate1
(declare (salience 4900))
(id-root ?id rebate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta_xenA_kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rebate.clp 	rebate1   "  ?id "  CUta_xenA_kama_kara )" crlf))
)

;"rebate","VT","1.CUta_xenA_kama_karanA"
;He rebated ten rupees to me.
;
