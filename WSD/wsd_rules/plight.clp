
(defrule plight0
(declare (salience 5000))
(id-root ?id plight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaMBIra_sWiwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plight.clp 	plight0   "  ?id "  gaMBIra_sWiwi )" crlf))
)

;"plight","N","1.gaMBIra_sWiwi"
;The flood increases the plight of poor people.
;
(defrule plight1
(declare (salience 4900))
(id-root ?id plight)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawijFA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plight.clp 	plight1   "  ?id "  prawijFA_kara )" crlf))
)

;"plight","V","1.prawijFA_karanA"
;I plighting that I will never leave you.
;
