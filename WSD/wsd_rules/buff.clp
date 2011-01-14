
(defrule buff0
(declare (salience 5000))
(id-root ?id buff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAxAmI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buff.clp 	buff0   "  ?id "  bAxAmI )" crlf))
)

;"buff","Adj","1.bAxAmI"
;She was wearing a buff color saree.
;
(defrule buff1
(declare (salience 4900))
(id-root ?id buff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BEMsa_Axi_kA_camadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buff.clp 	buff1   "  ?id "  BEMsa_Axi_kA_camadZA )" crlf))
)

;"buff","N","1.BEMsa_Axi_kA_camadZA"
;In the buff
;
