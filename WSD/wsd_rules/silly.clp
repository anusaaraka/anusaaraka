
(defrule silly0
(declare (salience 5000))
(id-root ?id silly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bevakUPZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  silly.clp 	silly0   "  ?id "  bevakUPZa )" crlf))
)

(defrule silly1
(declare (salience 4900))
(id-root ?id silly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpabuxxi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  silly.clp 	silly1   "  ?id "  alpabuxxi )" crlf))
)

;"silly","Adj","1.alpabuxxi"
;I was rather silly to let the strangers in who robbed me.
;Stop playing silly games, you are old enough to be serious.
;
;
