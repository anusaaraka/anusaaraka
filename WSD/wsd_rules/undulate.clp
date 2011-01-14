
(defrule undulate0
(declare (salience 5000))
(id-root ?id undulate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laharAwA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  undulate.clp 	undulate0   "  ?id "  laharAwA_huA )" crlf))
)

;"undulate","Adj","1.laharAwA_huA"
;Undulating hills can be seen from a distance in summer.
;
(defrule undulate1
(declare (salience 4900))
(id-root ?id undulate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  undulate.clp 	undulate1   "  ?id "  hilora )" crlf))
)

;"undulate","VTI","1.hilora/laharA"
;The trees seem to be undulating due to winds.
;
