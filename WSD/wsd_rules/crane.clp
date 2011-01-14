
(defrule crane0
(declare (salience 5000))
(id-root ?id crane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sArasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crane.clp 	crane0   "  ?id "  sArasa )" crlf))
)

;"crane","N","1.sArasa"
;Cranes have long legs && long necks.  
;--"2.krena/BArowwolana_yaMwra"
;Cranes can move && lift very heavy weights.
;
(defrule crane1
(declare (salience 4900))
(id-root ?id crane)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id krena_se_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  crane.clp 	crane1   "  ?id "  krena_se_uTA )" crlf))
)

;"crane","VTI","1.krena_se_uTAnA/2.garaxana_nikAlanA"
;Crane your neck forward so you could get a better look. 
;
