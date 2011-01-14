
(defrule soup0
(declare (salience 5000))
(id-root ?id soup)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAra_Axi_ke_iMjana_kI_Sakwi_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " soup.clp	soup0  "  ?id "  " ?id1 "  kAra_Axi_ke_iMjana_kI_Sakwi_baDZA  )" crlf))
)

(defrule soup1
(declare (salience 4900))
(id-root ?id soup)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAra_Axi_ke_iMjana_kI_Sakwi_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " soup.clp	soup1  "  ?id "  " ?id1 "  kAra_Axi_ke_iMjana_kI_Sakwi_baDZA  )" crlf))
)

(defrule soup2
(declare (salience 4800))
(id-root ?id soup)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAra_Axi_ke_iMjana_kI_Sakwi_baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soup.clp 	soup2   "  ?id "  kAra_Axi_ke_iMjana_kI_Sakwi_baDZA )" crlf))
)

(defrule soup3
(declare (salience 4700))
(id-root ?id soup)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SorabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  soup.clp 	soup3   "  ?id "  SorabA )" crlf))
)

;"soup","N","1.SorabA"
;The soup was upto everyone's liking.
;
;