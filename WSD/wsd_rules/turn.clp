;;$$$ meaning changed from nOkarI_se_nikAla to muzha_moda_le by Prachi Rathore[26-11-13]
;When they show an operation on TV, I have to turn away.
;दूरदर्शन पर जब आपरेशन करते हुए दिखाते है,मैं अपना मुँह दूसरी तरफ मोड़ लेता हूँ.
(defrule turn0
(declare (salience 5000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 muzha_moda_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn0  "  ?id "  " ?id1 "  muzha_moda_le  )" crlf))
)


(defrule turn1
(declare (salience 4800))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id  proposal)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 TukarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn1  "  ?id "  " ?id1 "  TukarA  )" crlf))
)



;Added by Amba
(defrule turn2
(declare (salience 4700))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 inakAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn2  "  ?id "  " ?id1 "  inakAra_kara  )" crlf))
)




(defrule turn3
(declare (salience 4600))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAhara_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn3  "  ?id "  " ?id1 "  bAhara_nikAla  )" crlf))
)


;$$$ meaning changed from Ulata to palata by Prachi Rathore[26-11-13]
(defrule turn4
(declare (salience 4400))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 over)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 palata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn4  "  ?id "  " ?id1 "  palata  )" crlf))
)



(defrule turn5
(declare (salience 4200))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 upasWiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn5  "  ?id "  " ?id1 "  upasWiwa_ho  )" crlf))
)


;The rule can be deleted as it has been taken care of in rule8 (Meena 30.4.10).
; Added by human
(defrule turn6
(declare (salience 4000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 left)
(viSeRya-viSeRaNa ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id moda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn6   "  ?id "  moda )" crlf))
)

;The milk has turned sour
(defrule turn7
(declare (salience 3900))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 sour|red|blue|green)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn7   "  ?id "  ho )" crlf))
)



;Modified by Meena(25.1.11) ; added (conjunction-components  ?conj  ?id2 ?id) for the cases like the example below.
;The path has many twists and turns. 
;Modified by Meena(30.4.10)
;Go straight and take a right turn . 
(defrule turn8
(declare (salience 3500))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa ?id ?id1)(viSeRya-det_viSeRaNa ?id ?id1)(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id1)(conjunction-components  ?conj  ?id ?id2)(conjunction-components  ?conj  ?id1 ?id)) ;Interchanged conjunction components ids  by Roja(15-02-11)
;$$$ (conjunction-components  ?conj  ?id1 ?id) Again added by  Prachi Rathore[25-11-13]
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn8   "  ?id "  modZa )" crlf))
)




(defrule turn9
(declare (salience 3400))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GumA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn9   "  ?id "  GumA )" crlf))
)

(defrule turn10
(declare (salience 3300))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn10   "  ?id "  muda )" crlf))
)

;"turn","VTI","1.GumAnA"
;You turn the wheel.
;
;


;Salience reduced by Meena(30.4.10)
;Added by Veena Bagga (01-01-2010)
(defrule turn11
;(declare (salience 3500))
(id-root ?id turn)
;(Any)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn11 " ?id " bArI)" crlf))
)
;She is waiting for her turn .


;Added by Roja(18-09-10)
;The lights in the street turn on only during night.
(defrule turn12
(declare (salience 4000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga  ?id  ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp  turn12  "  ?id "  " ?id1 "  jala)" crlf))
)


;@@@ Added by Prachi Rathore[26-11-13]
;Suddenly she just turned on me and accused me of undermining her.
;अचानक से वह मुझ पर दोष लगाने लगी और उसने मुझे गुप्तरूप से हानि पहुँचाने के लिए अपराधी ठहराया.
(defrule turn13
(declare (salience 4000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn13 " ?id " xoRa_lagA)" crlf))
)


;@@@ Added by Prachi Rathore[26-11-13]
;Now turn the page, please, and start work on Exercise 2.
;अब कृपया पन्ना पलटें,और दूसरे अभ्यास पर काम करना शुरू करें.
(defrule turn14
(declare (salience 4000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 page)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id palata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn14 " ?id " palata)" crlf))
)

;@@@ Added by Prachi Rathore[26-11-13]
;The weather has suddenly turned cold.
;मौसम अचानक ठंडा हो गया
(defrule turn15
(declare (salience 4000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(subject-subject_samAnAXikaraNa  ?id1 ?id2)
(kriyA-subject  ?id ?id1)
(id-root ?id2 cold|pale|nasty|solemn|sour|bad|good)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn15 " ?id " ho_jA)" crlf))
)


;@@@ Added by Prachi Rathore[26-11-13]
;Turn off the light.
;बत्ती बुझा दो
(defrule turn16
(declare (salience 4200))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(not(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 buJA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn16  "  ?id "  " ?id1 "  buJA_xe  )" crlf))
)

;@@@ Added by Prachi Rathore[26-11-13]
;She turned her ankle on the rocks and had to hobble back to camp.
;उसका टखना चट्टान पर मुड गया और उसे वापिस शिविर तक लंगड़ा कर चलना पड़ा.
(defrule turn17
(declare (salience 4300))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muda_jA))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn17 " ?id " muda_jA)" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  turn.clp     turn17   "  ?id "  kA )" crlf))
)



;@@@ Added by Prachi Rathore[26-11-13]
;Surely you won't turn your back on them?
;विश्वास है तुम उनके प्रति अपनी सहायता से मुँह नही मोड़ोगे
(defrule turn18
(declare (salience 4100))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 back)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 muzha_moda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn18  "  ?id "  " ?id2 "  muzha_moda )" crlf))
)

;@@@ Added by Prachi Rathore[26-11-13]
;Spain cannot afford to turn its back on tourism.
;स्पेन पर्यटन के प्रति विमुख नही हो सकता.
(defrule turn19
(declare (salience 4100))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 back)
(not(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 vimuKa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn19  "  ?id "  " ?id2 "  vimuKa_ho )" crlf))
)

;@@@ Added by Prachi Rathore[26-11-13]
;In this game if you give the wrong answer you have to miss a turn.
;इस खेल में अगर तुम गलत उत्तर देते हो तो तुम्हें एक बारी छोड़नी पड़ेगी.
(defrule turn20
(declare (salience 3600))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 miss)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn20 " ?id " bArI)" crlf))
)

;@@@ Added by Prachi Rathore[26-11-13]
;The girl's natural father claimed that her stepfather was turning her against him.
;लड़की के जैविक पिता ने दावा किया है कि उसके सौतेले पिता उसे उनके विरूद्ध कर रहें थे.
(defrule turn21
(declare (salience 3600))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-against_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn21 " ?id " kara)" crlf))
)

;@@@ Added by Prachi Rathore[26-11-13]
;The girl's natural father claimed that her stepfather was turning her against him.
;लड़की के जैविक पिता ने दावा किया है कि उसके सौतेले पिता उसे उनके विरूद्ध कर रहें थे.
(defrule turn22
(declare (salience 3600))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-against_saMbanXI  ?id ?id1)
(not(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn22 " ?id " ho)" crlf))
)

;@@@ Added by Prachi Rathore[26-11-13]
;They turned us away at the entrance because we hadn't got tickets.
;हमारे पास टिकिट नही थे इसलिए प्रवेश-द्वार से ही हमे वापिस भेज दिया गया  (अंदर जाने नही दिया)
(defrule turn23
(declare (salience 3600))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id2)
(id-root ?id2 away)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 vApasa_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn23  "  ?id "  " ?id2 "  vApasa_Beja )" crlf))
)

;@@@ Added by Prachi Rathore[26-11-13]
;I usually turn in at about midnight.
; मैं ज्यादातर मध्यरात्रि में बिस्तर में जाकर सोता हूँ.
(defrule turn24
(declare (salience 5000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 biswara_me_so))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn24  "  ?id "  " ?id1 "  biswara_me_so  )" crlf))
)

;@@@ Added by Prachi Rathore[26-11-13]
;Thousands of weapons were turned in during the national gun amnesty.
;हजारों शस्त्र राष्ट्रीयक्षमा के दौरान वापिस कर दिए गए.
(defrule turn25
(declare (salience 3600))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_during_saMbanXI  ?id ?)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(not(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApasa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn26 " ?id " vApasa_kara)" crlf))
)

;@@@ Added by Prachi Rathore[26-11-13]
;Both companies turn in pre-tax profits of over 5.5 million annually.
;दोनों कम्पनियों ने टैक्स के प्रोफिट को छोड़कर करीब ५.५ मिलियन का लाभ कमाया.
(defrule turn26
(declare (salience 3600))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn26 " ?id " kamA)" crlf))
)

;@@@ Added by Prachi Rathore[26-11-13]
;I should think the smell of her breath would turn any man off.
;मेरे विचार से उसके मुहँ की दुर्गन्ध से कोई भी व्यक्ति उससे मुख मोड़ लेगा. 
(defrule turn27
(declare (salience 4300))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriya-object ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 muzKa_moda_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn27  "  ?id "  " ?id1 "  muzKa_moda_le  )" crlf))
)


;@@@ Added by Prachi Rathore[26-11-13]
;Short men really turn me on.
;छोटे कद के आदमी मुझे आकर्षित करते हैं. 
(defrule turn28
(declare (salience 4300))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AkarRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn28  "  ?id "  " ?id1 "  AkarRiwa_kara  )" crlf))
)

;@@@ Added by Prachi Rathore[03-12-13]
; If nothing else, the school will turn her into an individual.[03-12-13][cambridge]
;यदि कुछ भी नही अन्य, तो विद्यालय एक विशिष्ट व्यक्ति में उसको बदल देगा . 
(defrule turn29
(declare (salience 4300))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxala_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn29 " ?id " baxala_xe)" crlf))
)

;@@@ Added by Prachi Rathore
;To turn the volume up.[oald]
(defrule turn30
(declare (salience 5000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 volume)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn30 " ?id " kara_xe)" crlf))
)


;@@@ Added by Prachi Rathore
;To turn the volume down.[oald]
; आवाज कम/धीमी कर देने के लिये . 
(defrule turn31
(declare (salience 5000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 volume)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp      turn31 " ?id " kara_xe)" crlf))
)
;@@@ Added by Prachi Rathore
;Two years ago I shot a Royal Bengal Tiger which had turned man-eater. 
;दो वर्ष पहले मैंने एक ऐसे ही रायल बंगाल टाइगर को मारा था, जो आदमखोर हो चुका था।
(defrule turn32
(declare (salience 3400))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb )
(kriyA-object ?id ?id1)
(id-root ?id1 man-eater)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn32   "  ?id "  ho_jA )" crlf))
)

;@@@ Added by Prachi Rathore
;Turn the engine off.[cambridge]
;इंजन बंद कीजिए .
(defrule turn33
(declare (salience 3400))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn33  "  ?id "  " ?id1 "  baMxa_kara  )" crlf))
)

;@@@ Added by Prachi Rathore[8-1-14]
;United turned up the heat on their opponents with a second goal.[oald]
(defrule turn34
(declare (salience 5000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 heat)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 dAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn33  "  ?id "  " ?id1 "  dAla_xe )" crlf))
)

;@@@ Added by Prachi Rathore[16-1-14]
; He turned tail and ran from the fight.[m-w]
;;उसने दुम दबाई और लडाई से भागा . 
(defrule turn35
(declare (salience 4000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object  ?id ?id1)
(id-root ?id1 tail)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  turn.clp 	turn35   "  ?id "  xabA )" crlf))
)


;@@@ Added by Prachi Rathore[18-1-14]
;She turned up the radio to drown out the noise from next door.[oald]
(defrule turn36
(declare (salience 5000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2 radio)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 calA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn36  "  ?id "  " ?id1 "  calA_xe )" crlf))
)

;@@@ Added by Prachi Rathore[13-2-14]
;This year has turned out a hard one for me .:www.online-literature.com/tolstoy/2891/.........
;यह वर्ष मेरे लिये  मुश्किलों से भरा रहा है . /यह  वर्ष  मेरे लिये  मुश्किल वाला रहा है . 
(defrule turn37
(declare (salience 5000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-out_saMbanXI  ?id ?id2)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rahA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn37  "  ?id "  " ?id1 "  rahA)" crlf))
)


;@@@ Added by Prachi Rathore[13-2-14]
;It turned out that she was a friend of my sister.[oald]
;यह पता चला कि वह मेरी बहन की मित्र थी . 
(defrule turn38
(declare (salience 5000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(id-root =(+ ?id1 1) that) 
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  pawA_calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn38  "  ?id "  " ?id1 "  pawA_calA )" crlf))
)


;@@@ Added by Prachi Rathore[13-2-14]
;The job turned out to be harder than we thought.[oald]
;नौकरी हमारी सोच  की तुलना में अधिक कठिन निकली  . 
(defrule turn39
(declare (salience 5000))
(id-root ?id turn)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(to-infinitive  ?id2 ?id3)
(id-root ?id3 be)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ?id3 nikalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " turn.clp	turn39  "  ?id "  " ?id1 "  nikalA )" crlf))
)

