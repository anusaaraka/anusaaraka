
(defrule windward0
(declare (salience 5000))
(id-root ?id windward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAyu_kI_ora_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  windward.clp 	windward0   "  ?id "  vAyu_kI_ora_kA )" crlf))
)

;"windward","Adj","1.vAyu_kI_ora_kA"
;The yacht is moving south of the windward.
;
(defrule windward1
(declare (salience 4900))
(id-root ?id windward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jisa_xiSA_se_vAyu_calawI_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  windward.clp 	windward1   "  ?id "  jisa_xiSA_se_vAyu_calawI_hE )" crlf))
)

;"windward","N","1.jisa_xiSA_se_vAyu_calawI_hE"
;Sail windward.
;
