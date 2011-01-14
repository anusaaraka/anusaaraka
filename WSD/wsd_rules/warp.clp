
(defrule warp0
(declare (salience 5000))
(id-root ?id warp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warp.clp 	warp0   "  ?id "  wAnA )" crlf))
)

;"warp","N","1.wAnA"
;The warp in the wooden furniture gave a beautiful look
;
(defrule warp1
(declare (salience 4900))
(id-root ?id warp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  warp.clp 	warp1   "  ?id "  modZa )" crlf))
)

;"warp","VTI","1.modZanA"
;The plant began to warp
;
