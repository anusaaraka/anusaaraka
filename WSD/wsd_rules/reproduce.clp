
;@@@ Added by Anita-21.4.2014
;His work was reproduced on leaflets.  [cambridge dictionary]
;उसका कार्य सूचना पत्रों पर फिर से दिखाई दिया ।
(defrule reproduce0
(declare (salience 1000))
(id-root ?id reproduce)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 leaflet|magazine)
(kriyA-on_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_se_xiKA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproduce.clp 	reproduce0   "  ?id "  Pira_se_xiKA_xe )" crlf))
)

;@@@ Added by Anita-21.4.2014
;They said the printing was too faint to reproduce well.[cambridge dictionary]
;उन्होंने कहा कि अच्छी प्रतिलिपि बनाने के लिए मुद्रण बहुत हल्का था ।
;The photocopier reproduces colours very well. [oxford learner's dictionary]
;फोटोकॉपी मशीन रंगों की बहुत अच्छी प्रतिलिपि बनाती है । 
;This material can be reproduced without payment. [oxford learner's dictionary]
;इस सामग्री की बिना किसी  भुगतान के प्रतिलिपि बनाई जा सकती है ।
;All illustrations are reproduced by kind permission of the Mercury Gallery. [oxford learner's dictionary]
;पारा गैलरी की रज़ामंदी से सभी चित्रों की प्रतिलिपि बनाई गईं ।
(defrule reproduce1
(declare (salience 2000))
(id-root ?id reproduce)
?mng <-(meaning_to_be_decided ?id)
;(to-infinitive ? ?id)
(or(kriyA-kriyA_viSeRaNa  ?id ?)(kriyA-without_saMbanXI  ?id ?)(kriyA-by_saMbanXI  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawilipi_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproduce.clp 	reproduce1   "  ?id "  prawilipi_banA )" crlf))
)
;@@@ Added by Anita-21.4.2014
;The new design unfortunately reproduced some of the problems of the earlier model. [cambridge ;dictionary]
;दुर्भाग्यवश नए डिज़ाइनों ने पुराने नमूने में समस्याएं फिर से पैदा कर दीं । 
(defrule reproduce2
(declare (salience 2000))
(id-root ?id reproduce)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 design)
(kriyA-subject  ?id ?id1)
(viSeRya-viSeRaNa  ?id1 ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_se_pExA_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproduce.clp 	reproduce2   "  ?id "  Pira_se_pExA_kara_xe )" crlf))
)
;@@@ Added by Anita-22.4.2014
;It is illegal to reproduce these worksheets without permission from the publisher. [oxford learner's dictionary]
;प्रकाशक की अनुमति के बिना वर्कशीट फिर से छापना अवैध है ।
(defrule reproduce3
(declare (salience 3000))
(id-root ?id reproduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_se_CApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproduce.clp 	reproduce3   " ?id "  Pira_se_CApa )" crlf))
)

;@@@ Added by Anita-22.4.2014
;The results are reproduced in Table 2. [oxford learner's dictionary]
;परिणाम तालिका २ में फिर से दिखाए गए हैं । 
(defrule reproduce4
(declare (salience 4000))
(id-root ?id reproduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pira_se_xiKA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproduce.clp 	reproduce4   "  ?id "  Pira_se_xiKA_jA )" crlf))
)
;###################################default-rule#####################################
;@@@ Added by Anita-22.4.2014
;Some creatures were better at surviving and reproducing themselves than others. [cambridge ;dictionary]
;कुछ जीव अन्य की अपेक्षा खुद जीवित रहने और प्रजनन करने में अधिक बेहतर थे ।
(defrule reproduce_default-rule
(declare (salience 0))
(id-root ?id reproduce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prajanana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reproduce.clp 	reproduce_default-rule   "  ?id "  prajanana_kara )" crlf))
)

;Most reptiles reproduce by laying eggs on land. [oxford learner's dictionary]
;बहुत सारे रेंगने वाले कीड़े जमीन पर अंडे देकर प्रजनन करते हैं ।
