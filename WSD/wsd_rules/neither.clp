
(defrule neither0
(declare (salience 5000))
(id-root ?id neither)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id na_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neither.clp 	neither0   "  ?id "  na_hI )" crlf))
)

;"neither","Adv","1.na_hI"
;I have not seen the film && neither has my sister.
;--"2.na"
;He is neither strong nor weak.
;
(defrule neither1
(declare (salience 4900))
(id-root ?id neither)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id determiner)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koI_BI_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  neither.clp 	neither1   "  ?id "  koI_BI_nahIM )" crlf))
)

;"neither","Det","1.koI_BI_nahIM"
;Neither of them was tall.
;
