
(defrule check0
(declare (salience 5000))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bila_Barakara_jagaha_KAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check0  "  ?id "  " ?id1 "  bila_Barakara_jagaha_KAlI_kara  )" crlf))
)


(defrule check1
(declare (salience 4900))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id checked )
(viSeRya-viSeRaNa =(+ ?id 1) ?id)
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jAzcA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  check.clp  	check1   "  ?id "  jAzcA_huA )" crlf))
)

;Added by sheetal(3-01-10).
(defrule check200
(declare (salience 4850))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 dacoit)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  check.clp      check200  "  ?id "   roka )" crlf))
)
;The government took serious steps to check the dacoits . 

(defrule check2
(declare (salience 4800))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id checked )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jAzca))
;(assert (id-wsd_word_mng ?id bila_Barakara_jagaha_KAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  check.clp  	check2  "  ?id "   jAzca )" crlf))
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  check.clp       check3   "  ?id "  bila_Barakara_jagaha_KAlI_kara )" crlf))
)

(defrule check3
(declare (salience 4700))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id checked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id cAraKAne_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  check.clp  	check3  "  ?id "  cAraKAne_vAlA )" crlf))
)

;"checked","Adj","1.cAraKAne_vAlA"
;He was wearing a checked shirt.
;
;
(defrule check4
(declare (salience 4600))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahuzcanA_Ora_haswAkRara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check4  "  ?id "  " ?id1 "  pahuzcanA_Ora_haswAkRara_kara  )" crlf))
)

;He checked into a cheap hotel near the station.
;vaha steSana ke pAsa eka saswe hotala meM rukA
(defrule check5
(declare (salience 4500))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kamarA_ArakRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check5  "  ?id "  " ?id1 "  kamarA_ArakRiwa_kara  )" crlf))
)

;He checked us in at the Taj Hotel.
;usane wAja hotala meM hamArA kamarA ArakRiwa kiyA
(defrule check6
(declare (salience 4400))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 le_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check6  "  ?id "  " ?id1 "  le_le  )" crlf))
)

;We'll check in our luggage after having lunch.
;hama Bojana ke bAxa apanA sAmAna le leMge
(defrule check7
(declare (salience 4300))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bila_cukAkara_hotala_CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check7  "  ?id "  " ?id1 "  bila_cukAkara_hotala_CodZa  )" crlf))
)

;We checked out the Motel next morning.
;hamane agalI subaha hotala (bila cukAkara) CodZa xiyA
(defrule check8
(declare (salience 4200))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check8  "  ?id "  " ?id1 "  jAzca_kara  )" crlf))
)

;None of the information he gave me checked out.
;koI BI sUcanA usane muJe jAzca karake nahIM xI
(defrule check9
(declare (salience 4100))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check9  "  ?id "  " ?id1 "  jAzca_kara  )" crlf))
)

;Inspector checked up on the company && discovered that it had not been paying enough tax.
;iMspEktara ne kaMpanI kI jAzca kI Ora pAyA ki vaha pUrA tEksa nahIM Bara rahI hE
(defrule check10
(declare (salience 4000))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nAma_xarja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check10  "  ?id "  " ?id1 "  nAma_xarja_kara  )" crlf))
)


(defrule check11
(declare (salience 3900))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 into)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nAma_xarja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check11  "  ?id "  " ?id1 "  nAma_xarja_kara  )" crlf))
)


(defrule check12
(declare (salience 3800))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sahI_kA_cihna_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check12  "  ?id "  " ?id1 "  sahI_kA_cihna_lagA  )" crlf))
)

(defrule check13
(declare (salience 3700))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check13  "  ?id "  " ?id1 "  jAzca_kara  )" crlf))
)


(defrule check14
(declare (salience 3600))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check14  "  ?id "  " ?id1 "  roka  )" crlf))
)


(defrule check15
(declare (salience 3500))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check15  "  ?id "  " ?id1 "  jAzca_kara  )" crlf))
)

(defrule check16
(declare (salience 3400))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parIkRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  check.clp 	check16   "  ?id "  parIkRaNa )" crlf))
)

(defrule check17
(declare (salience 3300))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sawya_kI_jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " check.clp	check17  "  ?id "  " ?id1 "  sawya_kI_jAzca_kara  )" crlf))
)



(defrule check18
(declare (salience 3200))
(id-root ?id check)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acAnaka_roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  check.clp 	check18   "  ?id "  acAnaka_roka )" crlf))
)

;default_sense && category=noun	jAzca	0
;"check","N","1.jAzca"
;The police had a check of the area where the murder took place.
;--"2.saMyama"
;One should keep one's temper in check.
;--"3.roka"
;Dams give checks to the flow of river water.
;--"4.mAwa{SawaraMja_ke_Kela_meM}"
;He was in check after three moves itself.
;--"5.cAraKAnA"
;He was wearing a shirt with checks.
;
;
