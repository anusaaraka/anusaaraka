;@@@ Added by Shirisha Manju 23-4-14 Suggested by Chaitanya Sir
;I lost my grocery bill. 
;mEMne merA kirAne ke sAmAna kA bila KoyA.
(defrule grocery0
(declare (salience 5000))
(id-root ?id grocery)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-root ?id1 bill)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kirAne_ke_sAmAna_kA_bila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " grocery.clp grocery0  "  ?id "  " ?id1 "  kirAne_ke_sAmAna_kA_bila  )" crlf))
)

;@@@ Added by Shirisha Manju 23-4-14 Suggested by Chaitanya Sir
;Do your part to keep food safe when bagging groceries.
(defrule grocery1
(declare (salience 5000))
(id-root ?id grocery)
(id-word ?id groceries)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAne_ke_sAmAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " grocery.clp grocery1  "  ?id "   kirAne_ke_sAmAna )" crlf))
)

;-------------------- Default Rules ----------------------------------
;@@@ Added by Shirisha Manju 23-4-14 Suggested by Chaitanya Sir
;I'm at the grocery.
;mEM kirAne kI xukAna meM hUz.
(defrule grocery2
(id-root ?id grocery)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAne_kI_xukAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " grocery.clp grocery2  "  ?id "  kirAne_kI_xukAna )" crlf))
)

