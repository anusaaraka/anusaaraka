
(defrule breathless0
(declare (salience 5000))
(id-root ?id breathless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAzPawA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breathless.clp 	breathless0   "  ?id "  hAzPawA_huA )" crlf))
)

(defrule breathless1
(declare (salience 4900))
(id-root ?id breathless)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swabXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breathless.clp 	breathless1   "  ?id "  swabXa )" crlf))
)

;"breathless","Adj","1.swabXa"
;Breathless at thought of what I had done
;--"2.hazPA_xenevAlI"
;A breathless flight
;
;
