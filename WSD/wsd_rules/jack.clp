
(defrule jack0
(declare (salience 5000))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manA_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " jack.clp jack0 " ?id "  manA_kara )" crlf)) 
)

;I asked my maid to clean my car but she jacked up on me.
;mEne apanI nOkarAnI se kahA ki merI kAra sAPa kara xe lekina usane manA kara xiyA
(defrule jack1
(declare (salience 4900))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 manA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jack.clp	jack1  "  ?id "  " ?id1 "  manA_kara  )" crlf))
)

;I asked my maid to clean my car but she jacked up on me.
;mEne apanI nOkarAnI se kahA ki merI kAra sAPa kara xe lekina usane manA kara xiyA
(defrule jack2
(declare (salience 4800))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jack.clp 	jack2   "  ?id "  jEka )" crlf))
)

;default_sense && category=noun	BArI_boJA_Upara_uTAne_kA_yanwra	0
;"jack","N","1.BArI_boJA_Upara_uTAne_kA_yanwra"
;I don't know how to use a jack.
;--"2.gulAma{wASa_ke_pawwoM_meM}"
;Jack is a Court Card in a pack of playing cards.
;--"3.eka_prakAra_kA_plaga"
;The speaker was connected to the tape recorder by a jack.
;
;

;@@@ Added by Prachi Rathore[12-3-14]
;Let's go. We're being jacked around here.[oald]
;हमें जाने दीजिये,हम यहाँ अपमानित किए जा रहे हैं . 
(defrule jack3
(declare (salience 5000))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 around)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 apamAniwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jack.clp	jack3  "  ?id "  " ?id1 "  apamAniwa_kara )" crlf))
)

;@@@ Added by Prachi Rathore[12-3-14]
;I'm jacking into the Internet now.[oald]
;मैं अब अन्तर्राष्ट्रीय कम्प्यूटर तन्त्र में जुड रहा हूँ . 
(defrule jack4
(declare (salience 5000))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id juda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jack.clp 	jack4   "  ?id "  juda )" crlf))
)


;@@@ Added by Prachi Rathore[12-3-14]
;After five years, he decided to jack it all in.[oald]
;He's jacked in his job.[cambridge]
;उसने नौकरी छोड़ दी
(defrule jack5
(declare (salience 5000))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Coda_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jack.clp	jack5  "  ?id "  " ?id1 "  Coda_xe )" crlf))
)

;@@@ Added by Prachi Rathore[12-3-14]
;The jack of clubs. [oald]
;चिडी का गुलाम . 
(defrule jack6
(declare (salience 5000))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 clubs|hearts|diamonds|spades)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gulAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jack.clp 	jack6   "  ?id "  gulAma )" crlf))
)


;@@@ Added by Prachi Rathore[12-3-14]
;Thieves jacked up the car and stole the wheels. [oald]
;चोरों ने गाडी जैक की सहायता से उठाई और पहिये चोरी किए . 
(defrule jack7
(declare (salience 5000))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 car)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jEka_kI_sahAyawA_se_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jack.clp	jack7  "  ?id "  " ?id1 "  jEka_kI_sahAyawA_se_uTA  )" crlf))
)


;@@@ Added by Prachi Rathore[12-3-14]
;Once the tourists arrive, the restaurants jack up their prices.[cambridge]
;एक बार जब पर्यटक आ जाते हैं, भोजनालय उनके मूल्य बढा देते हैं . 
(defrule jack8
(declare (salience 5000))
(id-root ?id jack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 price)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " jack.clp	jack8  "  ?id "  " ?id1 "  baDA_xe  )" crlf))
)
