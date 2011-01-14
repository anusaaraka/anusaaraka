
(defrule raft0
(declare (salience 5000))
(id-root ?id raft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laTToM_kA_bedZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raft.clp 	raft0   "  ?id "  laTToM_kA_bedZA )" crlf))
)

;"raft","N","1.laTToM_kA_bedZA"
;The sailors saved their lives from the wrecked ship on a raft.
;Nowadays an inflatable rafts of rubber or plastic are in great demand. 
;
(defrule raft1
(declare (salience 4900))
(id-root ?id raft)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bedZe_para_se_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  raft.clp 	raft1   "  ?id "  bedZe_para_se_jA )" crlf))
)

;"raft","VT","1.bedZe_para_se_jAnA"
;People used the raft to cross the river.
;
