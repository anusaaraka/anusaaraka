
(defrule pot0
(declare (salience 5000))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barawana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pot.clp 	pot0   "  ?id "  barawana )" crlf))
)

;"pot","N","1.barawana"
;Women make beautiful pots from black clay.
;--"2.gamalA"
;Marigold plants are flourishing well in those tiny pots.
;--"3.cAyaxAnI"
;The tea is ready in the tea pot.
;
(defrule pot1
(declare (salience 4900))
(id-root ?id pot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gamale_meM_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pot.clp 	pot1   "  ?id "  gamale_meM_lagA )" crlf))
)

;"pot","V","1.gamale_meM_lagAnA"
;He is busy in potting plants.
;--"2.pilAnA{biliyardsa}"
;He very neatly potted the black ball.
;--"3.mAranA"
;They potted dozons of black birds.
;
