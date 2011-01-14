
(defrule boon0
(declare (salience 5000))
(id-root ?id boon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KuSamijZAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boon.clp 	boon0   "  ?id "  KuSamijZAjZa )" crlf))
)

;"boon","Adj","1.KuSamijZAjZa"
;They are both boon couples.
;
(defrule boon1
(declare (salience 4900))
(id-root ?id boon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varaxAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boon.clp 	boon1   "  ?id "  varaxAna )" crlf))
)

;"boon","N","1.varaxAna"
;Parks are a great boon to the children in big cities. 
;
