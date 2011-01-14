
(defrule roost0
(declare (salience 5000))
(id-root ?id roost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id addA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roost.clp 	roost0   "  ?id "  addA )" crlf))
)

;"roost","N","1.addA{_pakRiyoz_kA}"
;There is a big roost on the baniyan tree  near our house. 
;
(defrule roost1
(declare (salience 4900))
(id-root ?id roost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id adde_para_bETa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  roost.clp 	roost1   "  ?id "  adde_para_bETa )" crlf))
)

;"roost","VI","1.adde_para_bETanA{pakRI_kI_waraha}"
;There is a roosting place for pigeons in her house. 
;
