;He carved out a gold watch in the game.
;usane Kela meM sone kI GadZI prApwa kI
(defrule carve0
(declare (salience 5000))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carve.clp	carve0  "  ?id "  " ?id1 "  prApwa_kara  )" crlf))
)


;He always carve up the money between his two sons.
;vaha hameMSAM apane xo betoM ke bIca pEsA bAztawA hE
(defrule carve1
(declare (salience 4900))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carve.clp	carve1  "  ?id "  " ?id1 "  bAzta  )" crlf))
)


;She carved up the chicken.
;usane mAzsa ko cAkU se kAtA
(defrule carve2
(declare (salience 4800))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cAkU_se_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carve.clp	carve2  "  ?id "  " ?id1 "  cAkU_se_kAta  )" crlf))
)



(defrule carve3
(declare (salience 4700))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Koxakara_mUrwi_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carve.clp	carve3  "  ?id "  " ?id1 "  Koxakara_mUrwi_banA  )" crlf))
)

(defrule carve4
(declare (salience 4500))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nakkASI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " carve.clp	carve4  "  ?id "  " ?id1 "  nakkASI_kara  )" crlf))
)


;"carve","V","1.kAta_kara_ciwra_banAnA"
;Some tourists carvename into their name on the bark.
(defrule carve5
(declare (salience 4300))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta_kara_ciwra_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carve.clp 	carve5   "  ?id "  kAta_kara_ciwra_banA )" crlf))
(assert (kriyA_id-object2_viBakwi ?id ke_liye))
)


;

;There is some fine carving on the wall.
(defrule carve6
(declare (salience 4500))
(id-root ?id carve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id carving)
(viSeRya-viSeRaNa ?id =(- ?id 1))
;(id-cat_coarse =(- ?id 1) adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakkASI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carve.clp      carve6   "  ?id "  nakkASI )" crlf))
)


;Carving walls is a difficult job.
(defrule carve7
(declare (salience 4400))
;(id-root ?id carve)
(id-word ?id carving)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 1) noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakkASI_kara))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  carve.clp      carve7   "  ?id "  nakkASI_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  carve.clp      carve7   "  ?id " para )" crlf)
)
)

