
(defrule corporal0
(declare (salience 5000))
(id-root ?id corporal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SArIrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corporal.clp 	corporal0   "  ?id "  SArIrika )" crlf))
)

;"corporal","Adj","1.SArIrika/xeha_saMbaMXI"
;Gandhiji was against corporal punishment.
;
(defrule corporal1
(declare (salience 4900))
(id-root ?id corporal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id senA_kA_CotA_aXikArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  corporal.clp 	corporal1   "  ?id "  senA_kA_CotA_aXikArI )" crlf))
)

;"corporal","N","1.senA_kA_CotA_aXikArI/eka_CotA_aPZasara"
;They received hundreds of application for the post of corporal.
;
