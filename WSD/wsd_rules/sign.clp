
(defrule sign0
(declare (salience 5000))
(id-root ?id sign)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya_keliye_saMJowA_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " sign.clp sign0 " ?id "  kArya_keliye_saMJowA_kara )" crlf)) 
)

(defrule sign1
(declare (salience 4900))
(id-root ?id sign)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kArya_keliye_saMJowA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " sign.clp	sign1  "  ?id "  " ?id1 "  kArya_keliye_saMJowA_kara  )" crlf))
)

(defrule sign2
(declare (salience 4800))
(id-root ?id sign)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 emotion)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sign.clp 	sign2   "  ?id "  saMkewa )" crlf))
)

(defrule sign3
(declare (salience 4700))
(id-root ?id sign)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haswAkRara_kara))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sign.clp 	sign3   "  ?id "  haswAkRara_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  sign.clp      sign3   "  ?id " para )" crlf)
)
)
;default_sense && category=verb	haswAkRara kara	0
;"sign","V","1.haswAkRara karanA"
;The painting is not signed  so we don't know whose it is.
;
;
