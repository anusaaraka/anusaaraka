
(defrule bring0
(declare (salience 5000))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pawana_kA_kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring0  "  ?id "  " ?id1 "  pawana_kA_kAraNa  )" crlf))
)

;Heavy rain brought all the crop down.
;aXika varRA Pasala ke pawana kA kAraNa banI
(defrule bring1
(declare (salience 4900))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring1  "  ?id "  " ?id1 "  prApwa_kara  )" crlf))
)

;He brought off an unexpected result in his college.
;usane apane kAleja meM ASA ke viparIwa pariNAma prApwa kiye 
;particle_about_- && category=verb	hone_kA_kAraNa_pExA_kara	100
;PP_null_about && category=verb	hone_kA_kAraNa_pExA_kara	100
(defrule bring2
(declare (salience 4800))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pExA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring2  "  ?id "  " ?id1 "  pExA_kara  )" crlf))
)



(defrule bring3
(declare (salience 4600))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 along)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring3  "  ?id "  " ?id1 "  lA  )" crlf))
)



(defrule bring4
(declare (salience 4400))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 smaraNa_xilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring4  "  ?id "  " ?id1 "  smaraNa_xilA  )" crlf))
)



(defrule bring5
(declare (salience 4200))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 girA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring5  "  ?id "  " ?id1 "  girA  )" crlf))
)



(defrule bring6
(declare (salience 4000))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uwpanna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring6  "  ?id "  " ?id1 "  uwpanna_kara  )" crlf))
)



(defrule bring7
(declare (salience 3800))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forward)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring7  "  ?id "  " ?id1 "  praswuwa_kara  )" crlf))
)



(defrule bring8
(declare (salience 3600))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 home)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring8  "  ?id "  " ?id1 "  lA  )" crlf))
)


(defrule bring9
(declare (salience 3400))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring9  "  ?id "  " ?id1 "  lA  )" crlf))
)



(defrule bring10
(declare (salience 3200))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring10  "  ?id "  " ?id1 "  pUrA_kara  )" crlf))
)



(defrule bring11
(declare (salience 3000))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prAramBa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring11  "  ?id "  " ?id1 "  prAramBa_kara  )" crlf))
)



(defrule bring12
(declare (salience 2800))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring12  "  ?id "  " ?id1 "  nikAla  )" crlf))
)



(defrule bring13
(declare (salience 2600))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 le_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring13  "  ?id "  " ?id1 "  le_A  )" crlf))
)




(defrule bring14
(declare (salience 2400))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 round)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hoSa_me_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring14  "  ?id "  " ?id1 "  hoSa_me_lA  )" crlf))
)




(defrule bring15
(declare (salience 2200))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAWa_meM_lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring15  "  ?id "  " ?id1 "  sAWa_meM_lA  )" crlf))
)




(defrule bring16
(declare (salience 2000))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pAlana_poRaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring16  "  ?id "  " ?id1 "  pAlana_poRaNa_kara  )" crlf))
)



(defrule bring17
(declare (salience 1800))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_lAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bring.clp	bring17  "  ?id "  " ?id1 "  bAhara_lAna  )" crlf))
)

;The mother crocodile brings them out of the hole.



;Added by Meena(17.01.10)
;Criminal charges will be brought against the driver .
(defrule bring18
(declare (salience 2000))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(kriyA-against_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bring.clp     bring18   "  ?id "  lagA )" crlf))
)




(defrule bring19
(declare (salience 1700))
(id-root ?id bring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bring.clp 	bring19   "  ?id "  lA )" crlf))
(assert (kriyA_id-object2_viBakwi ?id ke_liye))
)

;default_sense && category=verb	lAnA[le_AnA]	0
;"bring","VT","1.lAnA[le_AnA]"
;Can I bring my cousing to the dinner?
;Bring an extra cup for me.
;
