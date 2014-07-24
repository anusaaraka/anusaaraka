
;FILE MODIFIED BY Meena(20.5.10); deleted the redundant rules





;Added by Meena(4.12.09)
;I am in Newyork and I would like to see you.
(defrule see0
(declare (salience 3200))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(not(id-cat_coarse =(+ ?id 1) determiner))
(or(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))(id-cat_coarse ?id1 PropN))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  see.clp      see0   "  ?id "  mila )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  see.clp      see0   "  ?id " se )" crlf)
)
)

;Modified this rule by Roja(17-07-12). As the fact is (affecting_id-affected_id-mng_to_be_overwrite) not in use.
(defrule see1
(declare (salience 3900))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 through)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
;(assert (affecting_id-affected_id-mng_to_be_overwrite ?id ?id1 -)) 
;(assert (id-wsd_root_mng ?id samaJa))
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  see.clp       see1   "  ?id " " ?id1" samaJa )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  see.clp 	see1   "  ?id "  samaJa )" crlf))
))

;Added by Meena(20.5.10)
;I must see about lunch .
(defrule see2
(declare (salience 4900))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) about)
(id-root ?id1 lunch|dinner|party|meeting)
(kriyA-about_saMbanXI ?id  ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1)  kA_prabanXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " see.clp  see2  "  ?id "  " (+ ?id 1) " kA_prabanXa_kara  )" crlf))
)




;Added by Meena(20.5.10)
;;Typically , a doctor will see about thirty patients a day . 
;(defrule see3
;(declare (salience 4800))
;(id-root ?id see)
;?mng <-(meaning_to_be_decided ?id)
;(id-word =(+ ?id 1) about)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id xeKa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see3   "  ?id "  xeKa )" crlf))
;)




(defrule see4
(declare (salience 3100))
;(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id saw)
(kriyA-object ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
;(assert (id-wsd_root ?id see))
(assert (kriyA_id-object_viBakwi ?id ko))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  see.clp    see4   "  ?id "  xeKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  see.clp    see4   "  ?id " ko )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  see.clp    see4   "  ?id " ne )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  see.clp    see4   "  ?id " see )" crlf)
)
)




;Modified by sheetal(2-01-10).
(defrule see5
(declare (salience 3000))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not (id-word ?id1 anything));added by sheetal.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  see.clp       see5   "  ?id "  xeKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   "?*wsd_dir* "  see.clp       see5   "  ?id " ko )" crlf)
)
)
;Added by jagriti(29.11.2013)
;I was surprised that they couldn't see my point of view.[veena mam]
;मुझे आश्चर्य हुआ कि वे मेरे दृष्टिकोण (नजरिए ) को समझ नहीं सकें .(जान पाए)
(defrule see6
(declare (salience 4700))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 point|view)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see6  "  ?id " samaJa )" crlf))
)

;Added by jagriti(29.11.2013)
;They didn't see the need/any need (= understand that it was important) to notify their members of the changes in writing. [veena mam]
;उनको लगता था कि मेम्बेर्स को लिखित रूप से बताना जरूरी नहीं था .

(defrule see7
(declare (salience 4600))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_niReXaka  ?id ?)
(kriyA-object ?id ?id1)
(id-root ?id1 need)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see7  "  ?id " laga )" crlf))
)
;Added by jagriti(29.11.2013)
;He saw his visitors to the door .
;वह अपने अतिथियों को दरबाजे तक छोड़ने आया ..[veena mam]
;Her friends saw her home .
;उसके मित्रों ने उसे घर तक छोड़ा .
(defrule see8
(declare (salience 4500))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-till_saMbanXI  ?id ?id1)(kriyA-to_saMbanXI  ?id ?id1)(kriyA-object ?id ?id1))
(id-root ?id1 home|gate|door)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see8  "  ?id " CodZa )" crlf))
)
;;Added by jagriti(29.11.2013)
;My parents saw me off at the airport.[veena mam]
;मेरे माता-पिता हवाईअड्डे पर मुझे अलबिदा कहने आए.
;We all went to the airport to see her off. 
(defrule see9
(declare (salience 4400))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
(or(kriyA-at_saMbanXI  ? ?id2)(kriyA-to_saMbanXI  ? ?id2))
(id-root ?id2 airport|station|door)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alavixA_kahane_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see9  "  ?id " alavixA_kahane_A )" crlf))
)
;Added by jagriti(29.11.2013)
;The caretaker ran out and saw off the boys who had been damaging the fence.
; प्रभारी ने दौड़ कर बाहर आकर जिन लडकों ने बाड को नुकसान पहुंचाया था उन्हें भगाया .
(defrule see10
(declare (salience 4300))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 off)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see10  "  ?id " BagA )" crlf))
)
;Added by jagriti(29.11.2013)
;England saw off Luxembourg 5-0.[veena mam]
;इंग्लैंड ने लक्सेम्बर्ग को ५ –० से हराया .
(defrule see11
(declare (salience 4200))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-off_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see11  "  ?id " harA )" crlf))
)
;Added by jagriti(29.11.2013)
;They saw out the storm in the best shelter they could find.[veena mam]
; उन्होंने तूफान के बंद होने तक जो सबसे सुरक्षित स्थान मिला वहाँ इंतजार किया .
(defrule see12
(declare (salience 4100))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 out)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kawma_hone_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see12  "  ?id " Kawma_hone_waka )" crlf))
)
;Added by jagriti(29.11.2013)
;The course would take me three years to complete, but I was determined to see it through.
; कोर्स खत्म करने में मुझे तीन वर्ष का समय लगेगा ,लेकिन मैंने उसे पूरा करने का निश्चय कर लिया था .
(defrule see13
(declare (salience 4000))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 through)
(kriyA-kriyArWa_kriyA  ?id2 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara_dAla ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see13  "  ?id " pUrA_kara_dAla )" crlf))
)
;Added by jagriti(29.11.2013)
;They were very friendly, but I quickly saw through them.
;वे बहुत मिलनसार थे ,लेकिन मैंने जल्दी ही उनके स्वभाव को भांप लिया .
;She saw through his excuse at once.
;उसने एकदम से उसके बहाने को पहचान लिया .(भांप लिया )
(defrule see14
(declare (salience 4800))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-through_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAMpa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see14  "  ?id " BAMpa_le )" crlf))
)
;Added by jagriti(30.11.2013)
;We're seeing friends at the weekend.[veena mam]
;हम सप्ताहांत में मित्रों से मिलेंगे .
;They see a lot of each other (= are often together) at weekends.
;सप्ताहांत में वे एक दूसरे से काफी मिलते हैं .
(defrule see15
(declare (salience 3900))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(viSeRya-of_saMbanXI ?id1 ?id2)
(viSeRya-at_saMbanXI ?id2 ?id3)
(id-root ?id3 weekend)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see15  "  ?id " mila )" crlf))
)
;Added by jagriti(30.11.2013)

;It was easy to see the gift as a sort of bribe.[veena mam]
;भेट को रिश्वत के रूप में सोचना आसान था .(देखना )
(defrule see16
(declare (salience 3800))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  see.clp  	see16  "  ?id " samaJa )" crlf))
)


(defrule see17
(declare (salience 1))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id seen )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xeKa))
(assert (id-H_vib_mng ?id yA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  see.clp  	see17  "  ?id "  xeKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  see.clp        see17  "  ?id "  yA )" crlf))
)
;@@@ Added by jagriti(20.3.2014)
;The police will see into the matter.[rajpal]
;पुलीस मामले की जाँच करेगी . 
(defrule see18
(declare (salience 3700))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI ?id ?id1)
(id-root =(+ ?id 1) into)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) kI_jAMca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " see.clp	see18  "  ?id "  " =(+ ?id 1) "  kI_jAMca_kara  )" crlf))
)
;@@@ Added by jagriti(20.3.2014)
;A nurse sees after the patient.[rajpal]
;परिचारिका मरीज की देखभल करती है . 
(defrule see19
(declare (salience 3600))
(id-root ?id see)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-after_saMbanXI ?id ?id1)
(id-root =(+ ?id 1) after)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) kI_xeKaBala_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " see.clp	see19  "  ?id "  " =(+ ?id 1) "  kI_xeKaBala_kara  )" crlf))
)
;"seen","V","1.xeKA"
;I haven't seen her for ages.






;It was so dark that I could not see anything . 
;default_sense && category=verb xeKa    0
;"see","V","1.xeKanA"
;I can see sun setting behind the sea.
;--"2.se milanA"
;The principal wants to see you in the interval.
;--"3.pawA lagAnA"
;Just go && see what children are doing .
;--"4.samaJanA"
;He didn't see the joke.
;--"5.anuBava karanA"
;He has seen a great deal in his long life.
;--"6.sAWa jAnA"
;I saw the old lady across the road.
;--"7.kalpanA karanA"
;Her colleagues see her as a future director.
;
;
;default_sense && category=verb	xeKa	0
;"see","V","1.xeKanA"
;I can see sun setting behind the sea.
;--"2.se milanA"
;The principal wants to see you in the interval.
;--"3.pawA lagAnA"
;Just go && see what children are doing .
;--"4.samaJanA"
;He didn't see the joke.
;--"5.anuBava karanA"
;He has seen a great deal in his long life.
;--"6.sAWa jAnA"
;I saw the old lady across the road.
;--"7.kalpanA karanA"
;Her colleagues see her as a future director.
;
;
