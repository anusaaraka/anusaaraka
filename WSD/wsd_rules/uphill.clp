
(defrule uphill0
(declare (salience 5000))
(id-root ?id uphill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTina))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uphill.clp 	uphill0   "  ?id "  kaTina )" crlf))
)

;"uphill","Adj","1.kaTina/xuHsAXya/kRamasAXya"
;There is an uphill road leading to the temple.
;
(defrule uphill1
(declare (salience 4900))
(id-root ?id uphill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahAdZI_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  uphill.clp 	uphill1   "  ?id "  pahAdZI_para )" crlf))
)

;"uphill","Adv","1.pahAdZI_para"
;This street lay uphill
;
