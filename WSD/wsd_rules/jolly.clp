
(defrule jolly0
(declare (salience 5000))
(id-root ?id jolly)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KuSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jolly.clp	jolly0  "  ?id "  " ?id1 "  KuSa_kara  )" crlf))
)

;She was very upset && din't want to go for party but we jollied her along by showing her funny pictures.
;vaha bahuwa xuKI WI Ora pArtI meM nahIM jAnA cAhawI WI lekina hamane use ajIba-ajIba ciwra xiKAkara KuSa kara xiyA
(defrule jolly1
(declare (salience 4900))
(id-root ?id jolly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mOjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jolly.clp 	jolly1   "  ?id "  mOjI )" crlf))
)

;"jolly","Adj","1.mOjI"
;She has a jolly nature.
;
;
