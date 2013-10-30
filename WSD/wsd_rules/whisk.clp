
(defrule whisk0
(declare (salience 5000))
(id-root ?id whisk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-away_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whisk.clp	whisk0  "  ?id "  " ?id1 "  JAdZa  )" crlf))
)

(defrule whisk1
(declare (salience 4900))
(id-root ?id whisk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whisk.clp	whisk1  "  ?id "  " ?id1 "  JAdZa  )" crlf))
)

(defrule whisk2
(declare (salience 4800))
(id-root ?id whisk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-by_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_se_wejZI_se_gujZara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whisk.clp	whisk2  "  ?id "  " ?id1 "  pAsa_se_wejZI_se_gujZara  )" crlf))
)

(defrule whisk3
(declare (salience 4700))
(id-root ?id whisk)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAsa_se_wejZI_se_gujZara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whisk.clp	whisk3  "  ?id "  " ?id1 "  pAsa_se_wejZI_se_gujZara  )" crlf))
)

(defrule whisk4
(declare (salience 4600))
(id-root ?id whisk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMtanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whisk.clp 	whisk4   "  ?id "  PeMtanI )" crlf))
)

;"whisk","N","1.PeMtanI"
;Take the electric whisk.
;--"2.JAdana"
;It was a whisk of a horse's tail.
;
(defrule whisk5
(declare (salience 4500))
(id-root ?id whisk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cupake_se_hatA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whisk.clp 	whisk5   "  ?id "  cupake_se_hatA_le )" crlf))
)

;"whisk","VTI","1.cupake_se_hatA_lenA"
;The servant whisked away the money from the shelf.
;--"2.PeMtanA"
;Whisk the egg with cream.
;
