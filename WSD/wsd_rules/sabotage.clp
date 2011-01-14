
(defrule sabotage0
(declare (salience 5000))
(id-root ?id sabotage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XvaMsana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sabotage.clp 	sabotage0   "  ?id "  XvaMsana )" crlf))
)

;"sabotage","N","1.XvaMsana"
;Investigators examining the wreckage of the aircraft have not ruled out Sabotage.
;
(defrule sabotage1
(declare (salience 4900))
(id-root ?id sabotage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bigAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sabotage.clp 	sabotage1   "  ?id "  bigAdZa )" crlf))
)

;"sabotage","V","1.bigAdZanA"
;Don't Sabotage somebody's plans.
;
