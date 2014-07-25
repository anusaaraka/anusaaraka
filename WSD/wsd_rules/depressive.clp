
(defrule depressive0
(declare (salience 4900))
(id-root ?id depressive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avasAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depressive.clp 	depressive0   "  ?id "  avasAxI )" crlf))
)

(defrule depressive1
(declare (salience 4000))
(id-root ?id depressive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabAvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depressive.clp 	depressive1   "  ?id "  xabAvapUrNa )" crlf))
)

;@@@ added by Pramila(BU) on 13-12-2013
;She was again in a depressive mood.    ;sentence of this file
;वह फिर से हतोत्साहक मूड में थी.
(defrule depressive2
(declare (salience 5000))
(id-root ?id depressive)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-in_saMbanXI  ?id2 ?id1)
(kriyA-subject  ?id2 ?sub)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hawowsAhaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  depressive.clp 	depressive2   "  ?id "  hawowsAhaka )" crlf))
)

;"depressive","Adj","1.xabAvapUrNa"
;The drug is quite depressive.
;--"2.hawowsAhaka"
;She was again in a depressive mood.
;
;
