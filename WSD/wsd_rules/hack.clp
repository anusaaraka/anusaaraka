
(defrule hack0
(declare (salience 5000))
(id-root ?id hack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 at)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kisI_wejZa_OjZAra_se_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hack.clp	hack0  "  ?id "  " ?id1 "  kisI_wejZa_OjZAra_se_mAra  )" crlf))
)

;He hacked at the trunk of the tree.
;usane pedZa kI SAKZa para wejZa OjZAra se mArA
(defrule hack1
(declare (salience 4900))
(id-root ?id hack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAye_kA_GodZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hack.clp 	hack1   "  ?id "  kirAye_kA_GodZA )" crlf))
)

;"hack","N","1.kirAye_kA_GodZA"
;Many pilgrims of Amarnath hire the hack for pilgrimage .
;amaranAWa jAne vAle kaI wIrWayAwrI kirAye ke Gode para caDZa kara yAwrA karawe hEM.
;
(defrule hack2
(declare (salience 4800))
(id-root ?id hack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hack.clp 	hack2   "  ?id "  kAta )" crlf))
)

;"hack","V","1.kAtanA"
;Environment is getting spoiled through hacking of trees .
;vqkRoM ko kAtane se paryAvaraNa KarAba ho rahA hE .
;
