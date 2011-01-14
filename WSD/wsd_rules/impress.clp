
(defrule impress0
(declare (salience 5000))
(id-root ?id impress)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ahamiyawa_samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " impress.clp	impress0  "  ?id "  " ?id1 "  ahamiyawa_samaJA  )" crlf))
)

;One thing which my father impressed on me was to stand up for muself. 
;eka cIjZa kI ahamiyawa jo mere piwA ne muJe samaJAI vaha WI apane pEroM para Kuxa KadZe honA
(defrule impress1
(declare (salience 4900))
(id-root ?id impress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impress.clp 	impress1   "  ?id "  praBAviwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  impress.clp   impress1   "  ?id " ko )" crlf)
)
)

;"impress","V","1.praBAviwa karanA"
;She knows how to impress her teachers.
;
;
