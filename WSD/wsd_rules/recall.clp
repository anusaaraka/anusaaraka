
;@@@ Added by Anita 25.11.2013
;An emergency recall of Parliament 
;पार्लियामेंट का आपातकालीन बुलावा ।
;I can't recall her name at present.
;अभी मैं उसका नाम याद नहीं कर सकती हूँ ।
;I can't recall meeting her before. 
;मैं याद नहीं कर सकता हूँ कि मैं पहले उससे मिला हूँ ।
(defrule recall1
(declare (salience 4975))
(id-root ?id recall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 meet|name)
(kriyA-kqxanwa_karma  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recall.clp 	recall1   "  ?id "  yAxa_kara )" crlf))
)

;"recall","V","1.yAxa_kara[vApasa_bulA]"

;"recall","VT","1.yAxa_AnA"
;Try to recall the information.
;He recalled that she always came home late on Wednesdays. [oxford advance ;learner's dictionary]
;उसे याद आया कि वह बुधवार को घर हमेशा देर से आती थी ।
;$$$ Modified by Anita 25.11.2013  --- Added '(id-word ?id recalled)' fact
(defrule recall2
(declare (salience 4000))
(id-root ?id recall)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id recalled)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recall.clp 	recall2   "  ?id "  yAxa_A )" crlf))
)
 
;--"2.Pira_bulAnA"
;The speaker recalled the members of Parliament for a special debate. 
;वक्ता ने एक विशेष बहस के लिए संसद के सदस्यों को वापस बुलाया ।
;@@@ Added by Anita 25.11.2013
(defrule recall3
(declare (salience 4900))
(id-root ?id recall)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vApasa_bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recall.clp 	recall3   "  ?id "  vApasa_bulA )" crlf))
)
;If I recall correctly, he lives in Luton. [oxford advance learner's dictionary]
;अगर मुझे ठीक याद है कि वह ल्यूटन में रहता है ।
;@@@ Added by Anita 25.11.2013
(defrule recall4
(declare (salience 4950))
(id-root ?id recall)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recall.clp 	recall4   "  ?id "  yAxa )" crlf))
)

;--"3.raxxa_karanA"
;I recalled my decision of going there.
;मैंने वहाँ जाने का निर्णय रद्द कर दिया ।
;@@@ Added by Anita 25.11.2013
(defrule recall5
(declare (salience 4960))
(id-root ?id recall)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 decision)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recall.clp 	recall5   "  ?id "  raxxa_kara)" crlf))
)

;His paintings recall the style of Picasso. [oxford advance learner's dictionary]
;उसकी चित्रकलाएं पिकासो की शैली को याद दिलाती हैं ।
;The poem recalls Eliot's ‘The Waste Land’.
;‘द वेस्ट लैंड’ कविता इलियट की याद दिलाती है । 
;@@@ Added by Anita 25.11.2013
(defrule recall6
(declare (salience 4965))
(id-root ?id recall)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 painting)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_xilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recall.clp 	recall6   "  ?id "  yAxa_xilA)" crlf))
)
;#####################defaultrule################################

;"recall","N","1.yAxaxASwa"
;Added example sentences with translation by Anita
;Old people often have astonishing powers of recall. [oxford advance learner's dictionary]
;अक्सर वृद्ध लोगों की आश्चर्यजनक याददाश्त होती है ।
;My brother has total recall . [oxford advance learner's dictionary]
;मेरे भाई की तेज याददाश्त है ।
;A student is gifted with instant recall. [old clp sentence]
;विद्यार्थी को तीव्र याददाश्त एक देन है ।
(defrule recall0
(declare (salience 5000))
(id-root ?id recall)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxaxASwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  recall.clp 	recall0   "  ?id "  yAxaxASwa )" crlf))
)
