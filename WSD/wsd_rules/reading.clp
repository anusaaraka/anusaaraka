
;@@@ Added by Anita-28.11.2013
;He is a man of good reading. [old read.clp sentence from hinkhoj dictionary]
;वह एक सुपठित आदमी है ।
(defrule reading0
(declare (salience 4000))
(id-root ?id reading)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 man|woman|boy|girl)
(viSeRya-viSeRaNa  ?id ?)
(viSeRya-of_saMbanXI  ?id1 ?id)
;(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id supaTiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reading.clp  	reading0   "  ?id "  supaTiwa)" crlf))
)

;@@@ Added by Anita-28.11.2013 
;He has come for water meter reading. [old read.clp sentence]
;वह पानी के मीटर की रीडिंग लेने के लिए आया है ।
(defrule reading1
(declare (salience 5000))
(id-root ?id reading)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 meter)
(kriyA-for_saMbanXI  ? ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id rIdiMga_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reading.clp  	reading1   "  ?id "  rIdiMga_le)" crlf))
)

;@@@ Added by Anita-28.11.2013 
;These books are  required reading for students of architecture. [cambridge dictionary]
;वास्तुकला के विद्यार्थियों के लिए इन पुस्तकों का पठन आवश्यक है ।
(defrule reading2
(declare (salience 5000))
(id-root ?id read)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?id1)
(id-root ?id1 student)
;(kriyA-kqxanwa_karma  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id paTana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reading.clp  	reading2   "  ?id "  paTana)" crlf))
)

;@@@ Added by Anita--12.3.2014
;The average reading of clock 1 is much closer to the standard time than the average reading of clock 2. [ncert]
;घड़ी 1 की रीडिंग , घड़ी 2 की रीडंग की तुलना में, मानक समय के अधिक निकट है ।
(defrule reading3
(declare (salience 5100))
(id-root ?id reading)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id rIdiMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reading.clp  	reading3   "  ?id "  rIdiMga)" crlf))
)

;@@@ Added by Anita--12.3.2014
;The society often arranges poetry readings and musical evenings. [cambridge dictionary]
;समाज अक्सर कविता पाठ और संगीतात्मक शामों का प्रबन्ध करता है ।
(defrule reading4
(declare (salience 5200))
(id-root ?id reading)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 poetry|story)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pATa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reading.clp  	reading4   "  ?id "  pATa)" crlf))
)

;######################################default-rule############################

;@@@ Added by Anita-28.11.2013 
;Reading and tennis are my favourite pastimes. [cambridge dictionary]
;अध्ययन और टेनिस मेरा मनपसन्द मनोविनोद हैं ।
(defrule reading_default-rule
(id-root ?id reading)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aXyayana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reading.clp  	reading_default-rule   "  ?id "  aXyayana)" crlf))
)
