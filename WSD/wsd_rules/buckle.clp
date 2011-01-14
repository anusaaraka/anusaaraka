
(defrule buckle0
(declare (salience 5000))
(id-root ?id buckle)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 to)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gaMBIrawA_se_kArya_SurU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buckle.clp	buckle0  "  ?id "  " ?id1 "  gaMBIrawA_se_kArya_SurU_kara  )" crlf))
)

;wuma gaMBIrawA se kArya karo yA cale jAo
(defrule buckle1
(declare (salience 4900))
(id-root ?id buckle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikuda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buckle.clp 	buckle1   "  ?id "  sikuda )" crlf))
)

;default_sense && category=verb	bakala_lagAnA/bakasuA_lagA	0
;"buckle","VT","1.bakala_lagAnA/bakasuA_lagAnA"
;He buckled the shoes tightly.
;--"2.mudZanA"
;His knees buckled
;The highway buckled during the heatwave
;
;