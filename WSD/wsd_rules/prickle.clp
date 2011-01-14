
(defrule prickle0
(declare (salience 5000))
(id-root ?id prickle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAztA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prickle.clp 	prickle0   "  ?id "  kAztA )" crlf))
)

;"prickle","N","1.kAztA"
;The trees of apricots have many prickles.
;
(defrule prickle1
(declare (salience 4900))
(id-root ?id prickle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cuBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prickle.clp 	prickle1   "  ?id "  cuBA )" crlf))
)

;"prickle","V","1.cuBAnA"
;The polyster cloth prickles the skin.
;
