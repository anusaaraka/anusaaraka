
(defrule climb0
(declare (salience 5000))
(id-root ?id climb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nIce_kI_ora_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " climb.clp	climb0  "  ?id "  " ?id1 "  nIce_kI_ora_jA  )" crlf))
)

;It was difficult to climb down of the rock.
;pahAdZa se nIce uwaranA muSkila WA
(defrule climb1
(declare (salience 4900))
(id-root ?id climb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAra_svIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " climb.clp	climb1  "  ?id "  " ?id1 "  hAra_svIkAra_kara  )" crlf))
)

;He chose to climb down in the face of pressure.
;xabAva meM Akara usanE hAra svIkAra kara lI
(defrule climb2
(declare (salience 4800))
(id-root ?id climb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " climb.clp	climb2  "  ?id "  " ?id1 "  uwara  )" crlf))
)

(defrule climb3
(declare (salience 4700))
(id-root ?id climb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " climb.clp	climb3  "  ?id "  " ?id1 "  uwara  )" crlf))
)

(defrule climb4
(declare (salience 4600))
(id-root ?id climb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 caDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " climb.clp	climb4  "  ?id "  " ?id1 "  caDZa  )" crlf))
)

(defrule climb5
(declare (salience 4500))
(id-root ?id climb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 caDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " climb.clp	climb5  "  ?id "  " ?id1 "  caDZa  )" crlf))
)

(defrule climb6
(declare (salience 4400))
(id-root ?id climb)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 caDa_kara_bAhara_Ana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " climb.clp	climb6  "  ?id "  " ?id1 "  caDa_kara_bAhara_Ana  )" crlf))
)

(defrule climb7
(declare (salience 4300))
(id-root ?id climb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDZAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  climb.clp 	climb7   "  ?id "  caDZAva )" crlf))
)

;"climb","N","1.caDZAva"
;It's an hours climb to the summit.
;
(defrule climb8
(declare (salience 4200))
(id-root ?id climb)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDZa))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  climb.clp 	climb8   "  ?id "  caDZa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  climb.clp     climb8   "  ?id " para )" crlf)
)
)

;"climb","V","1.caDZa"
;--"2.caDZanA"
;We climbed the tree to pluck mangoes.
;--"3.ArohaNa_karanA"
;The road climbes  steeply for several kilometres.
;--"4.unnawi_karanA"
;He climbed to the top of his profession at the age of 45.
;
