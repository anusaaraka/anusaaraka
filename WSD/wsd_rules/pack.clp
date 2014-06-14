
(defrule pack0
(declare (salience 5000))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id packing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bAzXane_ke_liye_prayukwa_paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  pack.clp  	pack0   "  ?id "  bAzXane_ke_liye_prayukwa_paxArWa )" crlf))
)

;"packing","N","1.bAzXane ke liye prayukwa paxArWa"
;He was packing his luggage for a holiday tour.
;
;
(defrule pack1
(declare (salience 4900))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pack.clp	pack1  "  ?id "  " ?id1 "  CodZa  )" crlf))
)

;This idea is not feasible.just pack in!!
;yaha vicAra sahaja nahIM hE,ise CodZa xo
(defrule pack2
(declare (salience 4800))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pack.clp	pack2  "  ?id "  " ?id1 "  Beja  )" crlf))
)

;Have you packed the kids off to bed?
;kyA wumane baccoM ko sone ke lie Beja xiyA?
(defrule pack3
(declare (salience 4700))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pack.clp	pack3  "  ?id "  " ?id1 "  baMxa_kara  )" crlf))
)

;isa kArya ko baMxa karo Ora mere sAWa calo !
(defrule pack4
(declare (salience 4600))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 articles)
(kriyA-articles_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAna_raKa));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " pack.clp pack4 " ?id "  sAmAna_raKa )" crlf)) 
)

(defrule pack5
(declare (salience 4500))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 articles)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAmAna_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pack.clp	pack5  "  ?id "  " ?id1 "  sAmAna_raKa  )" crlf))
)

;$$$Modified by Sonam Gupta MTech IT Banasthali 2013
;The information pack consists of a brochure and a map.
;सूचना प्रक्रम में विवरण पुस्तिका और एक नक्शा भी शामिल है .
(defrule pack6
(declare (salience 4400))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack6   "  ?id "  prakrama )" crlf))
)

;"pack","N","1.potalI"
;My father asked me to bring a pack of biscuits from the market.
;Everyday I carry a pack of books to school.
;--"2.samUha"
;A pack of scientists was sent to America for some research.
;Last Sunday a wild pack of wolves were brought down to the zoo from the jungles.
;

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;We're leaving early tomorrow morning, so you'd better pack tonight. [Veena mam]
;हम कल सुबह जल्दी जा रहें हैं ,इसलिए आज रात को ही सारा सामान बांध ले.
(defrule pack7
(declare (salience 4300))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?)
(kriyA-vAkyakarma  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAna_bAzXa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack7   "  ?id "  sAmAna_bAzXa_le )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;She packed a small suitcase for the weekend.
;उसने सप्ताहांत के लिए एक छोटे से सूटकेस में सामान रक्खा . 
(defrule pack8
(declare (salience 4200))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAna_raKA))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack8   "  ?id "  sAmAna_raKA )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;He just packed his bags and walked out on his wife and children.
;उसने अपना सामान बांधा और अपनी पत्नी तथा बच्चों को छोड़ कर चला गया .
(defrule pack9
(declare (salience 4100))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 bag|bags|suitcase|luggage)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAna_bAzXA))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack9   "  ?id "  sAmAna_bAzXA )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;I haven't packed my clothes (= put them into a bag, etc.) yet.
;मैने अभी तक अपने कपड़े नहीं बांधें.
(defrule pack10
(declare (salience 4000))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?)
(kriyA-kriyA_niReXaka  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack10   "  ?id "  bAzXa )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;She packed the vase in tissue paper to protect it.
;उसने फूलदान कीं सुरक्षा के लिए उसे पेपर में लपेटा .
(defrule pack11
(declare (salience 3900))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lapetA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack11   "  ?id "  lapetA )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Thousands of fans are packing into the stadium.
;सैकडों प्रशंसक क्रीड़ांगन में एकत्रित हुए .
(defrule pack12
(declare (salience 3800))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekawriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack12   "  ?id "  ekawriwa )" crlf))
)



;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;The snow has packed down tightly, making the streets dangerous to walk on.
;वर्फ कीं पर्त इतनी मोटी है कि ,गलियों में चलना खतरनाक हो गया है.
(defrule pack13
(declare (salience 3700))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 snow)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id motI_parawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack13   "  ?id "  motI_parawa )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Fans packed the stadium to watch the final match.
;अंतिम मैच देखने के लिए स्टेडियम प्रशंसकऑ से भरा हुआ था 
(defrule pack14
(declare (salience 3600))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 fans|viewers|audience)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarA_huA))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack14   "  ?id "  BarA_huA )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Quantum theory tells us that in the tightly packed material inside a white dwarf a new kind of pressure is built up which resists 
;further compression.  [Gyan nidhi]
;परिमाण सिद्धान्त हमें वह एक सफेद बौने के अन्दर ठसाठस दबाया हुआ पदार्थ  बताता है कि दाब एक नया प्रकार का निर्माण किया हुआ है जो और अधिक दबाव विरोध करता है . 
(defrule pack15
(declare (salience 3500))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?)
(viSeRaNa-viSeRaka  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack15   "  ?id "  xabA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 16-1-2014
;A tightly packed crowd of tourists. [OALD]
;पर्यटकों की एक ठसाठस भरी हुई भीड . 
(defrule pack16
(declare (salience 3600))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 crowd|mob|group|mass|gathering)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack16   "  ?id "  Bara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 20-1-2014
;Could you pack me a spare pair of shoes, please? [Veena Mam]
;क्या आप कृप्या मेरे लिए एक जोङी अतिरिक्त जूते बाँध लेंगे.
(defrule pack17
(declare (salience 4000))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack17   "  ?id "  bAzXa )" crlf))
)

(defrule pack18
(declare (salience 3400))
(id-root ?id pack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaTarI_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pack.clp 	pack18   "  ?id "  gaTarI_banA )" crlf))
)

;"pack","V","1.gaTarI_banAnA"
;Pack your luggage as soon as possible.
;Usually glassware is protected against breaking by packing a cover of soft materials like cotton && hay around them.
;
