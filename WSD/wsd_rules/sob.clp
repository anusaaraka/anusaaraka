
(defrule sob0
(declare (salience 5000))
(id-root ?id sob)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sisakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sob.clp 	sob0   "  ?id "  sisakI )" crlf))
)

;"sob","N","1.sisakI"
;Sarla's sobs gradually died down.
;
(defrule sob1
(declare (salience 4900))
(id-root ?id sob)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sisaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sob.clp 	sob1   "  ?id "  sisaka )" crlf))
)

;"sob","V","1.sisakanA/hicakI_Barakara_ronA"
;Poor boy! Why are your sobbing.
;
