
(defrule bait0
(declare (salience 5000))
(id-root ?id bait)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bait.clp 	bait0   "  ?id "  cArA )" crlf))
)

;"bait","N","1.cArA"
;Wet flour is like a bait for fishes.
;The Intelligence agency used her as a bait to trap the spies.
;
(defrule bait1
(declare (salience 4900))
(id-root ?id bait)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bait.clp 	bait1   "  ?id "  sawA )" crlf))
)

;"bait","V","1.sawAnA"
(defrule bait2
(declare (salience 4800))
(id-root ?id bait)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bait.clp 	bait2   "  ?id "  sawA )" crlf))
)

;"bait","VT","1.sawAnA"
;The hunters baited the bears with the dogs.
;--"2.cArA_lagAnA"
;The fisherman baited the hook with a worm for the fish.
;--"3.cArA_dAlanA"
;They baited the horses with the hey.
;
