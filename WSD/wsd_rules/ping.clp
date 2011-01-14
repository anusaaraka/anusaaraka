
(defrule ping0
(declare (salience 5000))
(id-root ?id ping)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanasanAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ping.clp 	ping0   "  ?id "  sanasanAhata )" crlf))
)

;"ping","N","1.sanasanAhata"
;The spoon made a ping when it fell on the floor.
;
(defrule ping1
(declare (salience 4900))
(id-root ?id ping)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanasanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ping.clp 	ping1   "  ?id "  sanasanA )" crlf))
)

;"ping","V","1.sanasanAnA"
;Elastic made a ping sound.
;
