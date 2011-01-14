
(defrule boisterous0
(declare (salience 5000))
(id-root ?id boisterous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kolAhalapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boisterous.clp 	boisterous0   "  ?id "  kolAhalapUrNa )" crlf))
)

(defrule boisterous1
(declare (salience 4900))
(id-root ?id boisterous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uXamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  boisterous.clp 	boisterous1   "  ?id "  uXamI )" crlf))
)

;"boisterous","Adj","1.uXamI"
;A boisterous crowd
;Boisterous practical jokes
;--"2.pralayakArI"
;Boisterous winds && waves
;
;
