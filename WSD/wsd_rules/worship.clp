
(defrule worship0
(declare (salience 5000))
(id-root ?id worship)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worship.clp 	worship0   "  ?id "  pUjA )" crlf))
)

;"worship","N","1.pUjA"
;Temples are places of worship.
;
(defrule worship1
(declare (salience 4900))
(id-root ?id worship)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  worship.clp 	worship1   "  ?id "  sammAna_kara )" crlf))
)

;"worship","VT","1.sammAna_karanA"
;People go to various religious places to worship.
;
