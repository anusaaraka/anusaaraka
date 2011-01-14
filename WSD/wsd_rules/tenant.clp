
(defrule tenant0
(declare (salience 5000))
(id-root ?id tenant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAyexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tenant.clp 	tenant0   "  ?id "  kirAyexAra )" crlf))
)

;"tenant","N","1.kirAyexAra"
;I have to collect the rent from my tenant.
;
(defrule tenant1
(declare (salience 4900))
(id-root ?id tenant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAye_para_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tenant.clp 	tenant1   "  ?id "  kirAye_para_ho )" crlf))
)

;"tenant","VT","1.kirAye_para_honA"
;This office is tenanted by a company.
;
