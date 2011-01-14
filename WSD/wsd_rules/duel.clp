
(defrule duel0
(declare (salience 5000))
(id-root ?id duel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xvaMxa_yuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duel.clp 	duel0   "  ?id "  xvaMxa_yuxXa )" crlf))
)

;"duel","N","1.xvaMxa_yuxXa"
(defrule duel1
(declare (salience 4900))
(id-root ?id duel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xvaMxa_yuxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duel.clp 	duel1   "  ?id "  xvaMxa_yuxXa_kara )" crlf))
)

;"duel","VT","1.xvaMxa_yuxXa_karanA"
;In the 19th century, men often dueled over small matters
;
