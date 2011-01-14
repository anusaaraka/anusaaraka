
(defrule traverse0
(declare (salience 5000))
(id-root ?id traverse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teDZA_meDZA_rAswA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  traverse.clp 	traverse0   "  ?id "  teDZA_meDZA_rAswA )" crlf))
)

;"traverse","N","1.teDZA_meDZA_rAswA"
;It was a real traverse for the mountaineers.
;--"2.AdI_xIvAra"
;The space is reduced by a traverse.
;
(defrule traverse1
(declare (salience 4900))
(id-root ?id traverse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AdZe_wiraCe_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  traverse.clp 	traverse1   "  ?id "  AdZe_wiraCe_jA )" crlf))
)

;"traverse","V","1.AdZe_wiraCe_jAnA"
;The scooter traversed the path on which the jeep had gone.
;
