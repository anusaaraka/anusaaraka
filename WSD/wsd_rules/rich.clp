

;@@@ Added by Anita--2.5.2014
;He's the third richest man in Britain. [cambridge dictionary]
;वह ब्रिटेन का तीसरा सबसे अमीर आदमी है ।
;They're one of the world's richest nations. [cambridge dictionary]
;वे संसार के सबसे अमीर राष्ट्रों में  से एक हैं । 
;One of the richest women in the world .
;संसार की सबसे अमीर औरतों में से एक ।
(defrule rich0
(declare (salience 1000))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ?wrd&richest)  
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabase_amIra))
(assert (id-eng-src  ?id ?wrd  Word_mng)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  rich.clp  	rich0   "  ?id "  sabase_amIra )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-eng_src   " ?*wsd_dir* "  rich.clp     rich0   "  ?id "  "   ?wrd  " Word_mng )" crlf))
)
; @@@ Added by Anita - 1.5.2014
;This lipstick gives long-lasting rich colour. [cambridge dictionary]
;यह लिप्स्टिक ज्यादा देर तक रहने वाला गहरा रंग देती है ।
(defrule rich1
(declare (salience 2000))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 colour|color)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich1  "  ?id "  gaharA )" crlf))
)

; @@@ Added by Anita - 1.5.2014
;She produced a rich, deep tone from her clarinet. [cambridge dictionary]
;उसने अपनी शहनाई से एक मधुर गहन ध्वनि निकाली ।
(defrule rich2
(declare (salience 3000))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 tone)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich2  "  ?id "  maXura )" crlf))
)

;@@@ Added by Anita - 1.5.2014
;The wine has a rich aromatic flavour.  [cambridge dictionary]
;शराब का बहुत सुगन्धित स्वाद है ।
(defrule rich3
(declare (salience 4000))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  aromatic)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich3  "  ?id "  bahuwa )" crlf))
)

;@@@ Added by Anita - 1.5.2014
;A rich material is very beautiful and valuable: [cambridge dictionary]
;एक शानदार कपड़ा बहुत सुंदर और मूल्यवान है ।
(defrule rich4
(declare (salience 5000))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  material)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich4  "  ?id "  SAnaxAra )" crlf))
)

;@@@ Added by Anita - 1.5.2014
;She wore a velvet skirt and a rich brocade jacket. [cambridge dictionary]
;उसने मखमल स्कर्ट और एक चमकीली ब्रोकेड जैकेट पहनी थी ।
(defrule rich5
(declare (salience 5500))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  jacket)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camakIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich5  "  ?id "  camakIlA )" crlf))
)

;@@@ Added by Anita - 1.5.2014
;This chocolate mousse is too rich for me. [cambridge dictionary]
;यह चॉकलेट मूस मेरे लिए बहुत गरिष्ट है ।
(defrule rich6
(declare (salience 6000))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gariRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich6  "  ?id "  gariRta )" crlf))
)

;@@@ Added by Anita - 1.5.2014
;The education minister's criticism of the new exam system seems rich, considering it was he who demanded the changes in 
;the first place. [cambridge dictionary]
;नई परीक्षा प्रणाली की शिक्षा मंत्री की आलोचना काफी समृद्ध लगती है यह ध्यान में रखते हुए कि ये वही हैं जिन्होंने सबसे पहले परिवर्तन की मांग की थी ।
(defrule rich7
(declare (salience 6500))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 criticism)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich7  "  ?id "  samqxXa )" crlf))
)
;@@@ Added by Anita - 1.5.2014
;Oranges are rich in vitamin C. [oxford learner's dictionary]
;संतरे विटामिन सी से सम्पन्न हैं ।
;The area is rich in wildlife. [oxford learner's dictionary]
;यह क्षेत्र वन्य जीवन से सम्पन्न  है ।
(defrule rich8
(declare (salience 7000))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id ?)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sampanna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich8  "  ?id "  sampanna )" crlf))
)

;@@@ Added by Anita - 1.5.2014
;His novels are a rich source of material for the movie industry. [oxford learner's dictionary]
;उनके उपन्यास फिल्म उद्योग के लिए समृद्ध  सामग्री का स्रोत हैं ।
(defrule rich9
(declare (salience 7500))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 source)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich9  "  ?id "  samqxXa )" crlf))
)
;@@@ Added by Anita - 2.5.2014
;A rich creamy sauce . [oxford learner's dictionary]
;एक गाढ़ा मलाईदार सॉस ।
(defrule rich10
(declare (salience 8000))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 sauce)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gADZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich10  "  ?id "  gADZA )" crlf))
)
;@@@ Added by Anita - 2.5.2014
;A rich chocolate cake . [oxford learner's dictionary]
;अधिक चॉकलेट वाला  केक ।
(defrule rich11
(declare (salience 8500))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) chocolate)
(id-word =(+ ?id 2) cake)
;(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) =(+ ?id 2) aXika_cAkaleta_vAlA_keka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " rich.clp  rich11 "  ?id "  " (+ ?id 1) " " (+ ?id 2) " aXika_cAkaleta_vAlA_keka )" crlf))
)

;@@@ Added by Anita - 2.5.2014
;A rich well-drained soil. [oxford learner's dictionary]
;एक उपजाऊ अच्छी सूखी मिट्टी ।
(defrule rich12
(declare (salience 9000))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 soil)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upajAU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich12  "  ?id "  upajAU )" crlf))
)

;@@@ Added by Anita - 2.5.2014
;Very beautiful or pleasing rich dark reds [oxford learner's dictionary]
;बहुत सुन्दर  मनोहर गाढ़ा लाल रंग ।
(defrule rich13
(declare (salience 9500))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 pleasing)
;(viSeRya-viSeRaNa  ?id ?id1)
(conjunction-components  ? ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gADZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich13  "  ?id "  gADZA )" crlf))
)
;@@@ Added by Anita - 2.5.2014
;The rooms were decorated with rich fabrics. [oxford learner's dictionary]
;कमरे कीमती कपड़ों से सजाये गये थे ।
(defrule rich14
(declare (salience 10000))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 fabric)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kImawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich14  "  ?id "  kImawI )" crlf))
)
;@@@ Added by Anita - 2.5.2014
;She leads a rich life. [oxford learner's dictionary]
;वह एक समृद्ध और  विविध प्रकार का जीवन व्यतीत करती है ।
(defrule rich15
(declare (salience 9500))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 life)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id smqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich15  "?id "  samqxXa )" crlf))
)

;@@@ Added by Anita - 2.5.2014
;She leads a rich and varied life. [oxford learner's dictionary]
;वह एक समृद्ध और  विविध प्रकार का जीवन व्यतीत करती है ।
(defrule rich16
(declare (salience 9500))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 life)
(viSeRya-viSeRaNa  ?id1  ?con)
(conjunction-components  ?con ?id ?)
(id-root ?con and)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id smqxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rich.clp     rich16  "  ?id "  samqxXa )" crlf))
)

;##########################################default-rule################################

; @@@ Added by Anita - 1.5.2014
;He is determined to get rich quickly. [cambridge dictionary]
;वह जल्दी से जल्दी अमीर बनने के लिए  दृढ़ संकल्प है ।
;Nobody gets rich from writing now a days.
;आज-कल लेखन से कोई अमीर नहीं बनता 
;It's a favourite resort for the rich and famous. [oxford learner's dictionary]
;यह अमीर और प्रसिद्ध के लिए एक पसंदीदा पर्यटन स्थल है ।
(defrule rich_default-rule
(declare (salience 0))
(id-root ?id rich)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id amIra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  rich.clp  	rich_default-rule   "  ?id "  amIra )" crlf))
)
