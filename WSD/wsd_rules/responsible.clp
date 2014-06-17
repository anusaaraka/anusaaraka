 
;
;Paul is directly responsible for the efficient running of the office. [cambridge dictionary] (adjective)
;पॉल दफ्तर को कुशलता से चलाने के लिए पूरी तरह उत्तरदायी है ।
;Her department is responsible for overseeing the councils. [cambridge dictionary] (adjective)
;उसका विभाग कॉउन्सिल का निरीक्षण करने लिए उत्तरदायी है ।
;be responsible to sb/sth › to be controlled by someone or something: 
;In Australia, the prime minister and the Cabinet are responsible to the House of Representatives. [cambridge dictionary]
;ऑस्ट्रेलिया में, प्रधानमंत्री और मंत्रिमंडल प्रतिनिधि सभा के लिए जिम्मेदार हैं ।
;
;having good judgment and the ability to act correctly and make decisions on your own: a hard-working ;and responsible employee 
;Let's stay calm and try to behave like responsible adults. [cambridge dictionary] (adjective)
;शांति में रहने दें और जिम्मेदार वयस्कों की तरह व्यवहार करने के लिए प्रयास करें.
;Many big companies are now becoming more responsible about the way they operate. [cambridge ;dictionary] (adjective)
;अनेक बड़ी कम्पनियाँ किस तरह से चलाई जाएं ,और अधिक जिम्मेदार हो गई हैं  ।  
;→ Opposite irresponsible B2 
;A responsible job or position involves making important decisions or doing important things. ;responsibly     /-bli/ adverb › 

;@@@ Added by Anita-28.4.2014
;Who's responsible for this mess? [oxford learner's dictionary] 
; इस गड़बड़ के लिए कौन उत्त्तरदायी है ?
;Paul is directly responsible for the efficient running of the office. [cambridge dictionary] 
;पॉल दफ्तर को कुशलता से चलाने के लिए पूरी तरह उत्तरदायी है ।
;Her department is responsible for overseeing the councils. [cambridge dictionary] 
;उसका विभाग कॉउन्सिल का निरीक्षण करने लिए उत्तरदायी है ।
(defrule responsible0
(declare (salience 2500))
(id-root ?id responsible)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-for_saMbanXI  ?id ?sam)(viSeRya-to_saMbanXI  ?id ?))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwraxAyI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " responsible.clp  responsible0 "  ?id "   uwwaraxAyI )" crlf))
)
;@@@ Added by Anita-29.4.2014
;Cigarette smoking is responsible for about 90 persent of deaths from lung cancer. [oxford learner's ;dictionary] (adjective)
;लगभग ९० प्रतिशत फेफड़ों में कैंसर की वजह से मृत्यु का कारण सिगरेट पीना  है ।
(defrule responsible1
(declare (salience 4500))
(id-root ?id responsible)
?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 persent)
(id-root ?id2 death)
(viSeRya-for_saMbanXI  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " responsible.clp  responsible1 "  ?id "   kAraNa )" crlf))
)

;@@@ Added by Anita-29.4.2014
;Everything will be done to bring those responsible to justice. [oxford learner's dictionary] 
;इसके लिए जो जिम्मेदार हैं उन्हें कानून के तहत लाया जाएगा ।
;Even where parents no longer live together, they each continue to be responsible for their children. [oxford learner's dictionary]
;यहाँ तक कि जहाँ माता पिता एक साथ नहीं रहते हैं, फिर भी वे दोनों ही अपने बच्चों के लिए जिम्मेदार रहते हैं ।
;The Council of Ministers is responsible to the Assembly. [oxford learner's dictionary] 
;मंत्रियों की परिषद इस सभा के लिए उत्तरदायी है ।

(defrule responsible2
(declare (salience 4000))
(id-root ?id responsible)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-to_saMbanXI  ?id ?)(kriyA-kriyArWa_kriyA  ? ?id))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jimmexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " responsible.clp  responsible2 "  ?id "   jimmexAra) )" crlf))
)

;@@@ Added by Anita-29.4.2014
;Mike is responsible for designing the entire project. [oxford learner's dictionary]
;माईक इस पूरी परियोजना को डिज़ाइन करने के लिए जवाबदेह है ।
(defrule responsible3
(declare (salience 4000))
(id-root ?id responsible)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 design|paint|write)
(id-root ?id2 project)
(viSeRya-for_saMbanXI  ?id ?id1)
(kriyA-object  ?id1 ?id2)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id javAbaxeha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " responsible.clp  responsible3 "  ?id "   javAbaxeha) )" crlf))
)
;############################default-rule#########################
;@@@ Added by Anita-28.4.2014
;He is mentally ill and cannot be held responsible for his actions. [oxford learner's dictionary] 
;वह मानसिकतौर पर अस्वस्थ है और उसके इस व्यवहार के लिए जिम्मेदार नहीं ठहराया जा सकता है ।
;Clare has a mature and responsible attitude to work. [oxford learner's dictionary] 
;क्लेर का काम के प्रति परिपक्व और जिम्मेदार रुख है ।
;He is mentally ill and cannot be held responsible for his actions. [oxford learner's dictionary] 
;वह मानसिकतौर पर अस्वस्थ है और उसके इस व्यवहार के लिए जिम्मेदार नहीं ठहराया जा सकता है ।
;Let's stay calm and try to behave like responsible adults. [cambridge dictionary] 
;शांति में रहने दें और जिम्मेदार वयस्कों की तरह व्यवहार करने के लिए प्रयास करें.
;Many big companies are now becoming more responsible about the way they operate. [cambridge ;dictionary] 
;अनेक बड़ी कम्पनियाँ किस तरह से चलाई जाएं ,और अधिक जिम्मेदार हो गई हैं  । 

(defrule responsible_default-rule
(declare (salience 0))
(id-root ?id responsible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jimmexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " responsible.clp  responsible_default-rule "  ?id "    jimmexAra )" crlf))
)


;When he saw the crash, the young boy acted very responsibly and called the police. [cambridge ;dictionary] (adverb)
; उसने जब दुर्घटना को देखा ,  नवयुवक ने बड़ी जिम्मेदारीपूर्वक व्यवहार किया और पुलिस को बुलाया ।
