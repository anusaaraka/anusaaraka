
;@@@ Added by Anita-23.4.2014
;The hotel has a bad reputation. [cambridge dictionary]
;होटल का अच्छा नाम है ।
;He earned a reputation as an entertaining speaker. [cambridge dictionary]
;उसने दिलचस्प वक्ता के रूप में नाम कमाया ।
;He acquired a reputation as an entertaining speaker. [cambridge dictionary]
;उसने दिलचस्प वक्ता के रूप में नाम कमाया।
;She soon acquired a reputation as a first-class cook. 
;उसने शीघ्र एक प्रथम दर्जे के रसोइये के रूप में नाम अर्जित कर लिया । 
(defrule reputation0
(declare (salience 2450))
(id-root ?id reputation)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id ?)(viSeRya-det_viSeRaNa  ?id ?))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reputation.clp 	reputation0   "  ?id "  nAma )" crlf))
)
;@@@ Added by Anita-23.4.2014
;I am aware of Mark's reputation for being late. [oxford learner's dictionary]
;मैं मार्क के देर से आने की आदत से अवगत हूँ ।
(defrule reputation1
(declare (salience 2600))
(id-root ?id reputation)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 late)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Axawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reputation.clp 	reputation1   "  ?id "  Axawa )" crlf))
)

;@@@ Added by Anita-23.4.2014
;The weather in England is living up to its reputation .
;इंग्लैंड में मौसम अपनी ख्याति को बनाए रखे हुए है ।
;The company has a worldwide reputation for quality. [cambridge dictionary]  
;गुणवत्ता के लिए कंपनी की  विश्वव्यापक ख्याति है ।
;She has the reputation of being a good doctor. 
;उसकी एक अच्छी डॉक्टर के रूप में ख्याति है ।

(defrule reputation2
(declare (salience 2500))
(id-root ?id reputation)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-to_saMbanXI  ? ?id)(viSeRya-for_saMbanXI  ?id ?)(viSeRya-of_saMbanXI  ?id ?))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KyAwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reputation.clp 	reputation2   "  ?id "  KyAwi )" crlf))
)
;@@@ Added by Anita-23.4.2014
;She is, by reputation, very difficult to please. [oxford learner's dictionary]
;वह इसके लिए जानी जाती है कि उसका खुश होना बहुत मुश्किल है ।
(defrule reputation3
(declare (salience 3000))
(id-root ?id reputation)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-by_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnI_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reputation.clp 	reputation3   "  ?id " jAnI_jA )" crlf))
)
;@@@ Added by Anita-24.4.2014
;She was young and pretty, with a spotless reputation.[cambridge dictionary]
;वह बेदाग ख्याति के साथ तरुण और सुन्दर थी ।
(defrule reputation4
(declare (salience 4000))
(id-root ?id reputation)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 spotless)
(viSeRya-viSeRaNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ijjawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reputation.clp 	reputation4   "  ?id " ijjawa )" crlf))
)
;###################################default-rule#######################################

;@@@ Added by Anita-23.4.2014
;His reputation was destroyed when he was caught stealing some money. 
;उसकी प्रतिष्ठा नष्ट हो गयी जब वह कुछ पैसे चोरी करते हुए पकड़ा गया था ।
(defrule reputation_default-rule
(declare (salience 0))
(id-root ?id reputation)
?mng <-(meaning_to_be_decided ?id)
;(viSeRya-RaRTI_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiRTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reputation.clp 	reputation_default-rule   "  ?id "  prawiRTA )" crlf))
)
