
(defrule coast0
(declare (salience 5000))
(id-root ?id coast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samuxra_wata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coast.clp 	coast0   "  ?id "  samuxra_wata )" crlf))
)

;"coast","N","1.samuxra_wata"
;There is a port in the east coast.
;
(defrule coast1
(declare (salience 4900))
(id-root ?id coast)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIce_DAla_para_Pisala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  coast.clp 	coast1   "  ?id "  nIce_DAla_para_Pisala )" crlf))
)

;"coast","V","1.nIce_DAla_para_PisalanA"
;I coasted downhill on a bicycle.
;
