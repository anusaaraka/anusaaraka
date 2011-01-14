
(defrule fudge0
(declare (salience 5000))
(id-root ?id fudge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Paja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fudge.clp 	fudge0   "  ?id "  Paja )" crlf))
)

;"fudge","N","1.Paja{eka_prakAra_kI_miTAI}"
;He had hamburger && chocolate fudge for a meal.
;
(defrule fudge1
(declare (salience 4900))
(id-root ?id fudge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asaMgawa_bAwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fudge.clp 	fudge1   "  ?id "  asaMgawa_bAwa_kara )" crlf))
)

;"fudge","V","1.asaMgawa_bAwa_karanA"
;The convict fudged the replies in the police enquiry.
;
