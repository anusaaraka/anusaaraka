
(defrule vanish0
(declare (salience 5000))
(id-root ?id vanish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lupwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vanish.clp 	vanish0   "  ?id "  lupwa )" crlf))
)

;"vanish","N","1.lupwa"
(defrule vanish1
(declare (salience 4900))
(id-root ?id vanish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lupwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vanish.clp 	vanish1   "  ?id "  lupwa_ho )" crlf))
)

;"vanish","V","1.lupwa_honA"
;The culprits vanished from the scene
;The moon vanished from the sky
;
