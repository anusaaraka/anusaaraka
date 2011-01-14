
(defrule beaver0
(declare (salience 5000))
(id-root ?id beaver)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kadZI_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " beaver.clp	beaver0  "  ?id "  " ?id1 "  kadZI_mehanawa_kara  )" crlf))
)

(defrule beaver1
(declare (salience 4900))
(id-root ?id beaver)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kadZI_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " beaver.clp	beaver1  "  ?id "  " ?id1 "  kadZI_mehanawa_kara  )" crlf))
)

(defrule beaver2
(declare (salience 4800))
(id-root ?id beaver)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kadZI_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " beaver.clp	beaver2  "  ?id "  " ?id1 "  kadZI_mehanawa_kara  )" crlf))
)

(defrule beaver3
(declare (salience 4700))
(id-root ?id beaver)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kadZI_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " beaver.clp	beaver3  "  ?id "  " ?id1 "  kadZI_mehanawa_kara  )" crlf))
)

(defrule beaver4
(declare (salience 4600))
(id-root ?id beaver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kadZI_mehanawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beaver.clp 	beaver4   "  ?id "  kadZI_mehanawa_kara )" crlf))
)

(defrule beaver5
(declare (salience 4500))
(id-root ?id beaver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UxabilAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  beaver.clp 	beaver5   "  ?id "  UxabilAva )" crlf))
)

;"beaver","N","1.UxabilAva"
;Beaver is an amphibian.
;
;