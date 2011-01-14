
(defrule remit0
(declare (salience 5000))
(id-root ?id remit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyanwraNa_yA_praBAva_ke_bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remit.clp 	remit0   "  ?id "  niyanwraNa_yA_praBAva_ke_bAhara )" crlf))
)

;"remit","N","1.niyanwraNa_yA_praBAva_ke_bAhara"
;Staff recruitment is outside our remit. 
;
(defrule remit1
(declare (salience 4900))
(id-root ?id remit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rupayA_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remit.clp 	remit1   "  ?id "  rupayA_Beja )" crlf))
)

;"remit","VT","1.rupayA_BejanA"
;The money has been remitted by Money Order.
;--"2._xaMda_yA_qNa_se_CutakArA"
;Loans to farmers have been remitted. 
;
