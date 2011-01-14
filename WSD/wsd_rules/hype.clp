
(defrule hype0
(declare (salience 5000))
(id-root ?id hype)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awiSayawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hype.clp 	hype0   "  ?id "  awiSayawA )" crlf))
)

;"hype","N","1.awiSayawA"
(defrule hype1
(declare (salience 4900))
(id-root ?id hype)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awiSaya_praSaMsA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hype.clp 	hype1   "  ?id "  awiSaya_praSaMsA_kara )" crlf))
)

;"hype","V","1.awiSaya_praSaMsA_kara"
