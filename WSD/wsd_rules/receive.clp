;@@@ Added by Anita-2013
;She stood by the door to receive her guests as they arrived. [cambridge.org/dictionary/learner-;english]
;अतिथियों के आगमन पर स्वागत के लिए वह दरवाजे पर खड़ी थी  ।
;The prime minister's speech was well/warmly/coldly, etc. received by the conference delegates.
;[cambridge.org/dictionary/learner-english]
;प्रधानमंत्री के भाषण का कांफ्रेंस के प्रतिनिधियों ने गर्मजोशी से स्वागत किया  ।
(defrule receive1
(declare (salience 10))
(id-root ?id receive)
?mng <-(meaning_to_be_decided ?id)
(or (kriyA-object  ?id ?id1)(kriyA-by_saMbanXI  ?id ?id1))
(id-root ?id1 guest|minister|delegate)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAgawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  receive.clp 	receive1   "?id "  svAgawa_kara )" crlf))
)

;@@@ Added by Anita-2013
;He was received into the church. [cambridge.org/dictionary/learner-english]
;उसको चर्च में शामिल किया गया  ।
(defrule receive2
(declare (salience 15))
(id-root ?id receive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAmila_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  receive.clp 	receive2   "?id "  SAmila_kara )" crlf))
)

;#####################Default rule################################
;@@@ Added by Anita-2013
;Did you receive my letter? [cambridge.org/dictionary/learner-english]
;क्या आपने मेरा पत्र प्राप्त किया ?[verified-sentence]
;I received a phone call from your mother. [cambridge.org/dictionary/learner-english]
;तुम्हारी माँ से मुझे फ़ोन कॉल प्राप्त हुई थी ।
;Members of Parliament received a 4.2% pay increase this year. [cambridge.;org/dictionary/learner-english]
;पार्लियामेंट के सदस्यों को इस वर्ष ४.२ % की बढोत्तरी प्राप्त हुई ।
;She died after receiving a blow to the head. [cambridge.org/dictionary/learner-english]
;सिर पर चोट लगने के बाद वह मृत्यु को प्राप्त हुआ ।
;I'm receiving you loud and clear . [cambridge.org/dictionary/learner-english]
;मैं तुम्हारी आवाज़ बिल्कुल स्पष्ट और ज़ोर से प्राप्त कर रहा हूँ ।
;He received a phone call from the police this morning. [By mail]
;उसने आज सुबह पुलिस से एक फोन कॉल प्राप्त की ।
(defrule receive0
(id-root ?id receive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  receive.clp 	receive0   "?id "  prApwa_kara )" crlf))
)
