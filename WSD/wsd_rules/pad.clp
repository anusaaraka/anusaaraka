
(defrule pad0
(declare (salience 4600))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAgajZa_yA_soKawe_kI_gaddI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad0   "  ?id "  kAgajZa_yA_soKawe_kI_gaddI )" crlf))
)

;"pad","N","1.kAgajZa_yA_soKawe_kI_gaddI"
;Yesterday I purchased a very beautiful pad.
;


;$$$ Modified by Sonam Gupta MTech IT Banasthali 15-2-2014 (added relation)
;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Medicated cleansing pads for sensitive skin. [OALD]
;संवेदनशील त्वचा के लिये दवा युक्त सफाई करने वाली गद्दी . 
(defrule pad1
(declare (salience 4900))
(id-word ?id pads)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-for_saMbanXI  ?id ?)(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaxxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad1   "  ?id "  gaxxI )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;He padded downstairs and out of the front door. [Cambridge]
;वह सीढी के नीचे और मुखद्वार के बाहर मन्दगति से चला . 
(defrule pad2
(declare (salience 4800))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 pronoun|noun)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng) 
(assert (id-wsd_root_mng ?id manxagawi_se_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad2   "  ?id "  manxagawi_se_cala )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Helicopter landing pads. [OALD]
;हेलिकॉप्टर के उतरने का हवाई अड्डा.
(defrule pad3
(declare (salience 4700))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 helicopter|plane|chopper)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havAI_addA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad3   "  ?id "  havAI_addA )" crlf))
)




(defrule pad5
(declare (salience 4600))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad5   "  ?id "  Bara_xe )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;He was padding his speech. [Rajpal]
;वह अपने भाषण को व्यर्थ का विस्तार दे रहा था .
(defrule pad6
(declare (salience 5200))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 speech|lecture|article)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyarWa_kA_viswAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad6   "  ?id "  vyarWa_kA_viswAra_xe )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;I always keep a pad of paper by the phone. [cambridge]
;मैं हमेशा फोन के पास कागज की गड्डी रखता हूँ .
(defrule pad7
(declare (salience 5200))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaddI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad7   "  ?id "  gaddI )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;Missiles have been launched from their pads deep in enemy territory. [cambridge]
;शत्रु इलाके की हवाई पट्टी से मिसाइल छोड़ दी गई हैं . 
(defrule pad8
(declare (salience 5200))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-from_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havAI_pattI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad8   "  ?id "  havAI_pattI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;These walking boots are padded with shock-resistant foam. [cambridge]
;यह जूते आघात रोधक गद्दी से भरी हुई है .
(defrule pad9
(declare (salience 5200))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad9   "  ?id "  BarA_ho )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;A padded jacket. [oald]
;एक गद्दीदार जैकेट .
(defrule pad10
(declare (salience 5200))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaxxIxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pad.clp 	pad10   "  ?id "  gaxxIxAra )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 15-2-2014
;The report was padded out with extracts from previous documents. [oald]
;रिपोर्ट पिछले दस्तावेजों के निष्कर्ष से भरी हुई थी .
(defrule pad11
(declare (salience 5200))
(id-root ?id pad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BarI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pad.clp  pad11  "  ?id "  " ?id1 "  BarI_ho  )" crlf))
)




;"pad","V","1.Bara_xenA"
;Yesterday I padded my torn clothes in a packet.
;--"2.maMxagawi_se_calanA"
;Tortoise walks with a very pad movements.
;
