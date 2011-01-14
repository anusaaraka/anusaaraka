
(defrule troll0
(declare (salience 5000))
(id-root ?id troll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vewAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  troll.clp 	troll0   "  ?id "  vewAla )" crlf))
)

;"troll","N","1.vewAla"
(defrule troll1
(declare (salience 4900))
(id-root ?id troll)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maCalI_PazsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  troll.clp 	troll1   "  ?id "  maCalI_PazsA )" crlf))
)

;"troll","VTI","1.maCalI_PazsAnA"
;The fishermen were in the high sea trolling.
;
