
(defrule nasal0
(declare (salience 5000))
(id-root ?id nasal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAsikA_saMbaMXI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nasal.clp 	nasal0   "  ?id "  nAsikA_saMbaMXI )" crlf))
)

;"nasal","Adj","1.nAsikA_saMbaMXI"
;Sinus is a very common nasal problem.
;
(defrule nasal1
(declare (salience 4900))
(id-root ?id nasal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvAjZa_jo_nAka_se_nikale))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  nasal.clp 	nasal1   "  ?id "  AvAjZa_jo_nAka_se_nikale )" crlf))
)

;"nasal","N","1.AvAjZa_jo_nAka_se_nikale"
;Mukesh's nasal voice was very likeable.
;Most of his words were nasal.
;
