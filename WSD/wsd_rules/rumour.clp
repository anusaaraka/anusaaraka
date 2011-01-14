
(defrule rumour0
(declare (salience 5000))
(id-root ?id rumour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aPavAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rumour.clp 	rumour0   "  ?id "  aPavAha )" crlf))
)

;"rumour","N","1.aPavAha"
(defrule rumour1
(declare (salience 4900))
(id-root ?id rumour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gapa_udZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rumour.clp 	rumour1   "  ?id "  gapa_udZA )" crlf))
)

;"rumour","VT","1.gapa_udZAnA"
;Don't spread rumours about her job quitting.
;It is rumoured that she is pregnant.
;
