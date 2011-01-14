
(defrule sprint0
(declare (salience 5000))
(id-root ?id sprint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laGu_xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sprint.clp 	sprint0   "  ?id "  laGu_xOdZa )" crlf))
)

;"sprint","N","1.laGu_xOdZa"
;A 100 m sprint was organised in our school.
;
(defrule sprint1
(declare (salience 4900))
(id-root ?id sprint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badZI_wejZI_se_xOdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sprint.clp 	sprint1   "  ?id "  badZI_wejZI_se_xOdZa )" crlf))
)

;"sprint","V","1.badZI_wejZI_se_xOdZanA"
;You have to sprint in order to catch the bus.
;
