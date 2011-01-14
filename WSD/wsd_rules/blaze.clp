
(defrule blaze0
(declare (salience 5000))
(id-root ?id blaze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xahaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blaze.clp 	blaze0   "  ?id "  xahaka )" crlf))
)

;"blaze","N","1.xahaka"
;The blaze spread rapidly
;Raising blazes
;
(defrule blaze1
(declare (salience 4900))
(id-root ?id blaze)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xahaka_uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  blaze.clp 	blaze1   "  ?id "  xahaka_uTa )" crlf))
)

;"blaze","VT","1.xahaka_uTanA"
;He blazed away at the men
;The spaceship blazed out into space
;
