
(defrule active0
(declare (salience 5000))
(id-root ?id active)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakriya-))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  active.clp 	active0   "  ?id "  sakriya- )" crlf))
)

(defrule active1
(declare (salience 4900))
(id-root ?id active)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakriya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  active.clp 	active1   "  ?id "  sakriya )" crlf))
)

;"active","Adj","1.sakriya"
;He is taking an active interest in Indian politics.
;
;