;@@@ Added by Anita-31.12.2013
;Where did you park the car, I can't remember. [cambridge.org/dictionary/learner-english]
;तुमने कार कहाँ पार्क की थी, मैं याद नहीं रख सकता हूँ । 
(defrule remember0
(declare (salience 10))
(id-root ?id remember)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_niReXaka  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remember.clp 	remember0   "?id "  yAxa_raKa )" crlf))
)

;@@@ Added by Anita-31.12.2013
;I do not remember signing a contract. [cambridge.org/dictionary/learner-english]
;कॉन्ट्रैक्ट पर दस्तखत करना मुझे याद नहीं है ।
;We went and had tea in the little cafe on Primrose Hill - you remember, the one next to the bookshop. [cambridge.;org/dictionary/learner-english]
;हमने प्रिमोरसे हिल में एक छोटे से कैफ़े में जाकर चाय पी थी –तुम्हें याद है ,जो किताब की दुकान के बाद है ।
;Did you remember to do the shopping?
;क्या तुम्हें खरीदारी करना याद है ?
(defrule remember1
(declare (salience 15))
(id-root ?id remember)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kriyArWa_kriyA ?id ?)(kriyA-vAkyakarma  ?id ?)(kriyA-on_saMbanXI  ? ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remember.clp 	remember1   "?id "  yAxa_ho )" crlf))
)

;@@@ Added by Anita-31.12.2013
;She will be remembered for her courage. [cambridge.org/dictionary/learner-english]
;उसे उसके साहस के लिए याद किया जायेगा .
;I remember him as a rather annoying man. [cambridge.org/dictionary/learner-english]
;मैं उसे एक गुस्सा दिलाने वाले व्यक्ति के रूप में याद करता हूँ ।
;Can you remember what her telephone number is? [cambridge.org/dictionary/learner-english]
;क्या तुम उसका टेलीफोन नंबर याद कर सकते हो ? (or) उसका टेलीफोन नंबर क्या तुम्हें याद है ?
(defrule remember2
(declare (salience 20))
(id-root ?id remember)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-as_saMbanXI  ?id ?)(kriyA-for_saMbanXI  ?id ?)(kriyA-vAkyakarma  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remember.clp 	remember2   "?id "  yAxa_kara )" crlf))
)

;@@@ Added by Anita-31.12.2013
;I can remember people's faces, but not their names. [cambridge.org/dictionary/learner-english]
;मुझे लोगों के चेहरे तो याद रह सकते हैं पर नाम नहीं ।
(defrule remember3
(declare (salience 25))
(id-root ?id remember)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 face)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remember.clp 	remember3   "?id "  yAxa_raha )" crlf))
)

;@@@ Added by Anita-31.12.2013
;She suddenly remembered (that) her keys were in her other bag.
;उसे अचानक याद आई कि उसकी चाबियाँ दूसरे थैले में थीं ।
(defrule remember4
(declare (salience 30))
(id-root ?id remember)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remember.clp 	remember4   "?id "  yAxa_A )" crlf))
)

;@@@ Added by Anita-24.3.2014
;Gopal remembered his promise and told his wife about it.  [from verified sentences]
;गोपाल ने अपना वचन याद किया और इस बारे में अपनी पत्नी से कहा ।
(defrule remember5
(declare (salience 35))
(id-root ?id remember)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 promise)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remember.clp 	remember5   "?id "  yAxa_kara )" crlf))
)
;##############################default-rule##########################################
;@@@ Added by Anita-31.12.2013
;I remember your name .
;मुझे आपका नाम याद है ।
;He remembered his promise.
;उसे अपना वचन याद था ।
(defrule remember_default-rule
;(declare (salience 30))
(id-root ?id remember)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remember.clp 	remember_default-rule  "?id "  yAxa_ho )" crlf))
)
