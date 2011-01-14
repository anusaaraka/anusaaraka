
(defrule disfavour0
(declare (salience 5000))
(id-root ?id disfavour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id napasanxagI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disfavour.clp 	disfavour0   "  ?id "  napasanxagI )" crlf))
)

;"disfavour","N","1.napasanxagI"
;The Women's Bill has met with widespread disfavour.
;
(defrule disfavour1
(declare (salience 4900))
(id-root ?id disfavour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aruci_prakata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disfavour.clp 	disfavour1   "  ?id "  aruci_prakata_kara )" crlf))
)

;"disfavour","VT","1.aruci_prakata_karanA"
;Majority of the members seem to disfavour the Women's Bill.
;
