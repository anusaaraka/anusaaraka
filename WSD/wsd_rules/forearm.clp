
(defrule forearm0
(declare (salience 5000))
(id-root ?id forearm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forearm.clp 	forearm0   "  ?id "  hAWa )" crlf))
)

;"forearm","N","1.hAWa{kohanI_waka}"
;He covers her forearm while working in the chemistry lab.
;Indian girls put bangles on their forearms.
;
(defrule forearm1
(declare (salience 4900))
(id-root ?id forearm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyArI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  forearm.clp 	forearm1   "  ?id "  wEyArI_kara )" crlf))
)

;"forearm","V","1.wEyArI_karanA"
;The armed forces must be forearmed against a possible attack from across the 
;border.
;Every country should be forearmed against the enemy attack.
;
