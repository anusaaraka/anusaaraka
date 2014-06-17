;"whipping","N","1.kodoM_kI_mAra"
;The slave got a whipping.
;
;

;$$$ Modified by Pramila(BU) on 11-03-2014 [changed meaning from 'CIna_le' to 'samApwa_kara']
;We whipped through customs in ten minutes.   ;oald
;हमने रिवाज १० मिनटों में समाप्त किए.
(defrule whip0
(declare (salience 5000))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-through_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " whip.clp whip0 " ?id "  samApwa_kara )" crlf)) 
)


(defrule whip1
(declare (salience 4900))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CIna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whip.clp	whip1  "  ?id "  " ?id1 "  CIna_le  )" crlf))
)

(defrule whip2
(declare (salience 4800))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id whipping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kodoM_kI_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  whip.clp  	whip2   "  ?id "  kodoM_kI_mAra )" crlf))
)

(defrule whip3
(declare (salience 100))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAbuka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whip.clp 	whip3   "  ?id "  cAbuka )" crlf))
)

(defrule whip4
(declare (salience 100))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAbuka_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whip.clp 	whip4   "  ?id "  cAbuka_mAra )" crlf))
)

;"whip","VTI","1.cAbuka_mAranA"
;The teacher whipped the boy.
;--"2.PeMtanA"
;She whipped the cream.
;--"3.xiSA_kI_ora_calanA"
;Chill winds whipped the desert.
;--"4.Jatake_se_nikAlanA"
;The man whipped out a knife.
;
;

;@@@ Added by Pramila(BU) on 11-03-2014
;The man whipped out a knife.    [old clp]
;आदमी ने चाकू झटके से निकाला.
(defrule whip5
(declare (salience 4900))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-out_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Jatake_se_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whip.clp	whip5  "  ?id "  " ?id1 " Jatake_se_nikAla  )" crlf))
)

;@@@ Added by Pramila(BU) on 11-03-2014
;She whipped the cream.   [old clp]
;उसने क्रीम फेंटी.
(defrule whip6
(declare (salience 5000))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 egg|cream)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whip.clp 	whip6   "  ?id "  PeMta )" crlf))
)

;@@@ Added by Pramila(BU) on 11-03-2014
;He is the whip of this party.   ;shiksharthi
;वह इस पार्टी का सचेतक है.
(defrule whip7
(declare (salience 5000))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sacewaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whip.clp 	whip7   "  ?id "  sacewaka )" crlf))
)

;@@@ Added by Pramila(BU) on 11-03-2014
;A whip was issued to all the partymen.   ;shiksharthi
;दल के सभी सदस्यो को आदेश जारी किया गया.
(defrule whip8
(declare (salience 5000))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-subject  ?kri ?id)(kriyA-karma  ?kri ?id))
(id-root ?kri issue)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AxeSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whip.clp 	whip8   "  ?id "  AxeSa )" crlf))
)

;@@@ Added by Pramila(BU) on 11-03-2014
;The dog whipped off the bread from child's hand.   ;shiksharthi 
;कुत्ते ने बच्चे के हाथ से रोटी छीन ली. 
(defrule whip9
(declare (salience 5000))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CIna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whip.clp	 whip9  "  ?id "  " ?id1 " CIna_le  )" crlf))
)

;@@@ Added by Pramila(BU) on 11-03-2014
;He whipped out into the street.    ;shiksharthi 
;वह जल्दी से गली में निकल गया.
(defrule whip10
(declare (salience 4900))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-into_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jalxI_se_nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whip.clp	whip10  "  ?id "  " ?id1 " jalxI_se_nikala_jA  )" crlf))
)

;@@@ Added by Pramila(BU) on 11-03-2014
;She whipped around to see me.  ;shiksharthi 
;वह मुझे देखने के लिए मुड़ गई.
(defrule whip11
(declare (salience 4900))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whip.clp	whip11  "  ?id "  " ?id1 " mudZa  )" crlf))
)

;@@@ Added by Pramila(BU) on 11-03-2014
;They whipped Australia 18–3 in the final game.   ;oald
;उन्होंने अंतिम मैच में ऑस्ट्रेलिया को 18-3 से हरा दिया.
(defrule whip12
(declare (salience 4900))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
(id-root ?id1 game|match)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whip.clp 	whip12   "  ?id "  harA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "   whip.clp 	whip12    "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "   whip.clp 	whip12    "  ?id " ko )" crlf))
)


;@@@ Added by Pramila(BU) on 11-03-2014
;The team whipped its opponents by 35 points.   ;oald
;टीम ने अपने विरोधियों को 35 अंक से हरा दिया.
(defrule whip13
(declare (salience 4900))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 team)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whip.clp 	whip13   "  ?id "  harA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "   whip.clp 	whip13    "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "   whip.clp 	whip13    "  ?id " ko )" crlf))
)

;@@@ Added by Pramila(BU) on 11-03-2014
;He was a speaker who could really whip up a crowd.   ;oald
;वह एक वक्ता था जो भीड़ को प्रेरित कर सका.
(defrule whip14
(declare (salience 4900))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 preriwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whip.clp	whip14  "  ?id "  " ?id1 " preriwa_kara  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "   whip.clp 	whip14    "  ?id " ko )" crlf))
)

;@@@ Added by Pramila(BU) on 11-03-2014
;I am whipping up eggs.   ;oald
;मैं अंडो को फेंट रहा हूँ.
(defrule whip15
(declare (salience 5000))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 egg|cream)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PeMta))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whip.clp	whip15  "  ?id "  " ?id1 " PeMta  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "   whip.clp 	whip15    "  ?id " ko )" crlf))
)

;@@@ Added by Pramila(BU) on 11-03-2014
;A branch whipped across the car window.   ;oald
;एक शाखा कार की खिड़की के तरफ मुड़ गई.
(defrule whip16
(declare (salience 4900))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-across_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mudZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whip.clp	whip16  "  ?id "  " ?id1 " mudZa_jA  )" crlf))
)


;@@@ Added by Pramila(BU) on 11-03-2014
;She whipped the mask off her face.   ;oald 
;उसने अपने चेहरे से मुखौटा हटाया.
(defrule whip17
(declare (salience 5000))
(id-root ?id whip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-off_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  whip.clp  	whip17   "  ?id "  hatA)" crlf))
)

