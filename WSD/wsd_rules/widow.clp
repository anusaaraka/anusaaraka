
(defrule widow0
(declare (salience 5000))
(id-root ?id widow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viXavA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  widow.clp 	widow0   "  ?id "  viXavA )" crlf))
)

;"widow","N","1.viXavA"
;He && his widowed mother stay there.
;
(defrule widow1
(declare (salience 4900))
(id-root ?id widow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viXavA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  widow.clp 	widow1   "  ?id "  viXavA_kara )" crlf))
)

;"widow","VT","1.viXavA_karanA"
;She was widowed at an early age.
;
