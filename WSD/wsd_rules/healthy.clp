
(defrule healthy0
(declare (salience 5000))
(id-root ?id healthy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  healthy.clp 	healthy0   "  ?id "  svasWa )" crlf))
)

(defrule healthy1
(declare (salience 4900))
(id-root ?id healthy)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  healthy.clp 	healthy1   "  ?id "  svasWa )" crlf))
)

;"healthy","Adj","1.svasWa"
;'healthy'rahane ke liye prAwa:kAla vAyu sevana ke liye jAnA cAhiye.
;
;
