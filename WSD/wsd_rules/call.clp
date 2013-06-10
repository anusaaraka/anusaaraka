;Added by Shirisha Manju(Suggested by Sukhada (7-06-13)
;This field is called electromagnetism. 
(defrule call_with_tam
(declare (salience 5001))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(root-verbchunk-tam-chunkids ? ? is_en $?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp      call_with_tam   "  ?id "  kaha )" crlf))
)

(defrule call0
(declare (salience 5000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat =(+ ?id 1) proper_noun)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp 	call0   "  ?id "  nAmaka )" crlf))
)

;following_category=prop_noun && category=verb	jisako_bulAyA_jAwA_WA	100
;it can also be jAwA_hE; nAmaka is neutral  but requires to be moved after the folloing Propoer noun, in Hindi
(defrule call1
(declare (salience 4900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AvaSyakawA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call1  "  ?id "  " ?id1 "  AvaSyakawA_ho  )" crlf))
)

;The critical situation of the patient must call for a doctor.
;marIjZa ko isa gazBIra sWiwi meM dAktara kI AvaSyakawA hE
(defrule call2
(declare (salience 4800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call2  "  ?id "  " ?id1 "  bulA  )" crlf))
)

;Call in the doctor,patient is in critical condition.
;dAktara ko bulAo ,marIjZa kI sWiwi bahuwa gazBIra hE
(defrule call3
(declare (salience 4700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 raxxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call3  "  ?id "  " ?id1 "  raxxa_kara  )" crlf))
)

;The class's being called off.
;kakRA raxxa kara xI gayI
(defrule call4
(declare (salience 4600))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sazBAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call4  "  ?id "  " ?id1 "  sazBAla  )" crlf))
)

;Please call your dog off .
;kqpyA apane kuwwe ko sazBAlo
(defrule call5
(declare (salience 4500))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAzga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call5  "  ?id "  " ?id1 "  mAzga_kara  )" crlf))
)

;They called on God for help.
;unhone ISvara se maxaxa kI mAzga kI
(defrule call6
(declare (salience 4400))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call6  "  ?id "  " ?id1 "  bulA  )" crlf))
)

;The sodiers were called out for the war.
;sEnikoM ko yuxXa ke lie bulAyA gayA
(defrule call7
(declare (salience 4300))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call7  "  ?id "  " ?id1 "  yAxa_kara  )" crlf))
)

;Seeing her studying called up my exam days
;use paDZawA xeKa muJe apane imwihAna ke xina yAxa A gae
(defrule call8
(declare (salience 4200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call8  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

;She called me up yesterday morning for the party.
;
(defrule call9
(declare (salience 4100))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAwe-jAwe_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call9  "  ?id "  " ?id1 "  jAwe-jAwe_mila  )" crlf))
)

(defrule call10
(declare (salience 4000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAwe-jAwe_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call10  "  ?id "  " ?id1 "  jAwe-jAwe_mila  )" crlf))
)

(defrule call11
(declare (salience 3900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jarUrawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call11  "  ?id "  " ?id1 "  jarUrawa_ho  )" crlf))
)

(defrule call12
(declare (salience 3800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jarUrawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call12  "  ?id "  " ?id1 "  jarUrawa_ho  )" crlf))
)

(defrule call13
(declare (salience 3700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call13  "  ?id "  " ?id1 "  xiKA  )" crlf))
)

(defrule call14
(declare (salience 3600))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call14  "  ?id "  " ?id1 "  xiKA  )" crlf))
)

(defrule call15
(declare (salience 3500))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call15  "  ?id "  " ?id1 "  bulA  )" crlf))
)

(defrule call16
(declare (salience 3400))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call16  "  ?id "  " ?id1 "  bulA  )" crlf))
)

(defrule call17
(declare (salience 3300))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 names)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gAlI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call17  "  ?id "  " ?id1 "  gAlI_xe  )" crlf))
)

(defrule call18
(declare (salience 3200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 names)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gAlI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call18  "  ?id "  " ?id1 "  gAlI_xe  )" crlf))
)

(defrule call19
(declare (salience 3100))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call19  "  ?id "  " ?id1 "  banxa_kara  )" crlf))
)

(defrule call20
(declare (salience 3000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call20  "  ?id "  " ?id1 "  banxa_kara  )" crlf))
)

(defrule call21
(declare (salience 2900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 milane_Gara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call21  "  ?id "  " ?id1 "  milane_Gara_jA  )" crlf))
)

(defrule call22
(declare (salience 2800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 milane_Gara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call22  "  ?id "  " ?id1 "  milane_Gara_jA  )" crlf))
)

(defrule call23
(declare (salience 2700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call23  "  ?id "  " ?id1 "  bulA  )" crlf))
)

(defrule call24
(declare (salience 2600))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call24  "  ?id "  " ?id1 "  bulA  )" crlf))
)

(defrule call25
(declare (salience 2500))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jora_jora_se_pukAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call25  "  ?id "  " ?id1 "  jora_jora_se_pukAra  )" crlf))
)

(defrule call26
(declare (salience 2400))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jora_jora_se_pukAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call26  "  ?id "  " ?id1 "  jora_jora_se_pukAra  )" crlf))
)

(defrule call27
(declare (salience 2300))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call27  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

(defrule call28
(declare (salience 2200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call28  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

(defrule call29
(declare (salience 2100))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nimaMwriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call29  "  ?id "  " ?id1 "  nimaMwriwa_kara  )" crlf))
)

(defrule call30
(declare (salience 2000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nimaMwriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call30  "  ?id "  " ?id1 "  nimaMwriwa_kara  )" crlf))
)

(defrule call31
(declare (salience 1900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call31  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

(defrule call32
(declare (salience 1800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call32  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

(defrule call33
(declare (salience 1700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 2) adjective)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp 	call33   "  ?id "  kaha )" crlf))
)

; You can not call her beautiful.
(defrule call34
(declare (salience 1600))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id called )
(id-cat_coarse ?id verb)
=>
 (retract ?mng)
 (assert (id-wsd_root_mng ?id bulA))
 (if ?*debug_flag* then
 (printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp   call34   "  ?id "  bulA )" crlf))
)
;The boy who you called yesterday has arrived 
; modified by maha laxmi
; Modified word mng as root mng 
; Removed (id-H_vib_mng ?id ed_en)

(defrule call35
(declare (salience 1500))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp 	call35   "  ?id "  bulA )" crlf))
)

;default_sense && category=verb	bulA	0
;"call","V","1.bulAnA"
;My mother calls me Papa.
;
;
(defrule call36
(declare (salience 1400))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp 	call36   "  ?id "  bulAvA )" crlf))
)

;"calling","N","1.vyavasAya"
;Teaching is considered an apt calling for women.
;
;
(defrule call37
(declare (salience 1300))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AvaSyakawA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call37  "  ?id "  " ?id1 "  AvaSyakawA_ho  )" crlf))
)

;The critical situation of the patient must call for a doctor.
;marIjZa ko isa gazBIra sWiwi meM dAktara kI AvaSyakawA hE
(defrule call38
(declare (salience 1200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call38  "  ?id "  " ?id1 "  bulA  )" crlf))
)

;Call in the doctor,patient is in critical condition.
;dAktara ko bulAo ,marIjZa kI sWiwi bahuwa gazBIra hE
(defrule call39
(declare (salience 1100))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 raxxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call39  "  ?id "  " ?id1 "  raxxa_kara  )" crlf))
)

;The class's being called off.
;kakRA raxxa kara xI gayI
(defrule call40
(declare (salience 1000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sazBAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call40  "  ?id "  " ?id1 "  sazBAla  )" crlf))
)

;Please call your dog off .
;kqpyA apane kuwwe ko sazBAlo
(defrule call41
(declare (salience 900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mAzga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call41  "  ?id "  " ?id1 "  mAzga_kara  )" crlf))
)

;They called on God for help.
;unhone ISvara se maxaxa kI mAzga kI
(defrule call42
(declare (salience 800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call42  "  ?id "  " ?id1 "  bulA  )" crlf))
)

;The sodiers were called out for the war.
;sEnikoM ko yuxXa ke lie bulAyA gayA
(defrule call43
(declare (salience 700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call43  "  ?id "  " ?id1 "  yAxa_kara  )" crlf))
)

;Seeing her studying called up my exam days
;use paDZawA xeKa muJe apane imwihAna ke xina yAxa A gae
(defrule call44
(declare (salience 600))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call44  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

;She called me up yesterday morning for the party.
;
(defrule call45
(declare (salience 500))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAwe-jAwe_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call45  "  ?id "  " ?id1 "  jAwe-jAwe_mila  )" crlf))
)

(defrule call46
(declare (salience 400))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAwe-jAwe_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call46  "  ?id "  " ?id1 "  jAwe-jAwe_mila  )" crlf))
)

(defrule call47
(declare (salience 300))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jarUrawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call47  "  ?id "  " ?id1 "  jarUrawa_ho  )" crlf))
)

(defrule call48
(declare (salience 200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 for)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jarUrawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call48  "  ?id "  " ?id1 "  jarUrawa_ho  )" crlf))
)

(defrule call49
(declare (salience 100))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call49  "  ?id "  " ?id1 "  xiKA  )" crlf))
)

(defrule call50
(declare (salience 0))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call50  "  ?id "  " ?id1 "  xiKA  )" crlf))
)

(defrule call51
(declare (salience -100))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call51  "  ?id "  " ?id1 "  bulA  )" crlf))
)

(defrule call52
(declare (salience -200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call52  "  ?id "  " ?id1 "  bulA  )" crlf))
)

(defrule call53
(declare (salience -300))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 names)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gAlI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call53  "  ?id "  " ?id1 "  gAlI_xe  )" crlf))
)

(defrule call54
(declare (salience -400))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 names)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 gAlI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call54  "  ?id "  " ?id1 "  gAlI_xe  )" crlf))
)

(defrule call55
(declare (salience -500))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call55  "  ?id "  " ?id1 "  banxa_kara  )" crlf))
)

(defrule call56
(declare (salience -600))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call56  "  ?id "  " ?id1 "  banxa_kara  )" crlf))
)

(defrule call57
(declare (salience -700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 milane_Gara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call57  "  ?id "  " ?id1 "  milane_Gara_jA  )" crlf))
)

(defrule call58
(declare (salience -800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 milane_Gara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call58  "  ?id "  " ?id1 "  milane_Gara_jA  )" crlf))
)

(defrule call59
(declare (salience -900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call59  "  ?id "  " ?id1 "  bulA  )" crlf))
)

(defrule call60
(declare (salience -1000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call60  "  ?id "  " ?id1 "  bulA  )" crlf))
)

(defrule call61
(declare (salience -1100))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jora_jora_se_pukAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call61  "  ?id "  " ?id1 "  jora_jora_se_pukAra  )" crlf))
)

(defrule call62
(declare (salience -1200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jora_jora_se_pukAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call62  "  ?id "  " ?id1 "  jora_jora_se_pukAra  )" crlf))
)

(defrule call63
(declare (salience -1300))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call63  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

(defrule call64
(declare (salience -1400))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call64  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

(defrule call65
(declare (salience -1500))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nimaMwriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call65  "  ?id "  " ?id1 "  nimaMwriwa_kara  )" crlf))
)

(defrule call66
(declare (salience -1600))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 upon)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nimaMwriwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call66  "  ?id "  " ?id1 "  nimaMwriwa_kara  )" crlf))
)

(defrule call67
(declare (salience -1700))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call67  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

(defrule call68
(declare (salience -1800))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 telIPona_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " call.clp	call68  "  ?id "  " ?id1 "  telIPona_kara  )" crlf))
)

(defrule call69
(declare (salience -1900))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse =(+ ?id 2) adjective)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp 	call69   "  ?id "  kaha )" crlf))
)

; You can not call her beautiful.
(defrule call70
(declare (salience -2000))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id calling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vyavasAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  call.clp  	call70   "  ?id "  vyavasAya )" crlf))
)

(defrule call71
(declare (salience -2100))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp 	call71   "  ?id "  bulA )" crlf))
)

;default_sense && category=verb	bulA	0
;"call","V","1.bulAnA"
;My mother calls me Papa.
;
;
(defrule call72
(declare (salience -2200))
(id-root ?id call)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  call.clp 	call72   "  ?id "  bulAvA )" crlf))
)

