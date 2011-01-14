
(defrule regret0
(declare (salience 5000))
(id-root ?id regret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paScAwApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  regret.clp 	regret0   "  ?id "  paScAwApa )" crlf))
)

;"regret","N","1.paScAwApa"
;My only regret is that I have to leave the post. 
;I sent her my regrets about leaving.
;
(defrule regret1
(declare (salience 4900))
(id-root ?id regret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paScAwApa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  regret.clp 	regret1   "  ?id "  paScAwApa_kara )" crlf))
)

;"regret","VT","1.paScAwApa_karanA"
;I regret my inability to help you.
;--"2.xuHKI_honA"
;I regret the loss of my wrist watch. 
;
