
(defrule sorry0
(declare (salience 5000))
(id-root ?id sorry)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 very)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sorry.clp 	sorry0   "  ?id "  xuKI )" crlf))
)

;$$$ Modified meaning from 'xuKI' to 'Kexa' by Roja. Suggested by Chaitanya Sir (22-04-14)
;Ex: I am sorry.
;muJe Kexa hE.
(defrule sorry1
;(declare (salience 4900))
(id-root ?id sorry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kexa)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sorry.clp 	sorry1   "  ?id "  Kexa )" crlf))
)

;@@@ Added by Roja. Suggested by Chaitanya Sir(22-04-14)
;I am sorry.
;muJe Kexa hE .
(defrule sorry2
(declare (salience 4900))
(id-root ?id sorry)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?sub ?id)
(kriyA-subject  ?kri ?sub)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?kri  Kexa_hE))
(assert (kriyA_id-subject_viBakwi ?kri ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  sorry.clp    sorry2   "  ?id "  "  ?kri   "Kexa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  sorry.clp      sorry2   "  ?id " ko )" crlf))
)


;muJe Kexa hE Vs mEM hUz xuKI
;default_sense && category=adjective	Kexa	0
;"sorry","Adj","1.Kexa"
;I am sorry that I could not pick you up.
;--"2.glAni se BarapUra"
;I am sorry about my deed.
;--"3.GatiyA"
;It's a sorry seen.
;--"4.xayanIya"
;The school is in a sorry condition.
;
;
