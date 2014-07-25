;@@@ Added by Anita-1.1.2014
;She has lost her battle to retain control of the company. [cambridge dictionary]
;वह कंपनी पर नियंत्रण बनाए रखने की अपनी लड़ाई को खो चुकी है ।
(defrule retain0
(id-root ?id retain)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ? ?id)
;(kriyA-kriyArWa_kriyA  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banAe_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retain.clp 	retain0   "  ?id "  banAe_raKa )" crlf))
)
;@@@ Added by Anita-1.1.2014
;I have a good memory and am able to retain facts easily. [cambridge dictionary]
;मेरी याददाश्त अच्छी है और तथ्यों को आसानी से याद रखने में सक्षम हूँ । 
(defrule retain1
(declare (salience 5000))
(id-root ?id retain)
?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 facts)
;(kriyA-object  ?id ?id1)
;(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
(kriyA-kriyA_viSeRaNa  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAxa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retain.clp 	retain1   "  ?id "  yAxa_raKa )" crlf))
)
;@@@ Added by Anita-1.1.2014
;She succeeded in retaining her lead in the second half of the race. [cambridge dictionary]
;वह दौड़ की दूसरे अर्धांश में अपने नेतृत्व को बनाए रखने में सफल रही ।
(defrule retain2
(declare (salience 4800))
(id-word ?id retaining)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?)
;(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banAe_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retain.clp 	retain2   "  ?id "  banAe_raKa )" crlf))
)
;@@@ Added by Anita-1.1.2014
;This information is no longer retained within the computer's main memory. [Oxford dictionary]
;यह जानकारी अब कंप्यूटर की मुख्य स्मृति के भीतर अब और नहीं रखी है.
(defrule retain3
(declare (salience 4900))
(id-root ?id retain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-within_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retain.clp 	retain3   "  ?id "  raKa )" crlf))
)

;@@@ Added by Anita--29.3.2014
;In any involved or complex multistep calculation you should retain in intermediate steps one digit more than the significant ;digits. [ ncert ]
;किसी भी उलझन वाले अथवा बहुपदी जटिल परिकलन में, मध्यवर्ती पदों में सार्थक अङ्कों से एक अङ्क अधिक रहने देना चाहिए .
(defrule retain4
(declare (salience 5100))
(id-root ?id retain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rahane_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retain.clp 	retain4   "  ?id "  rahane_xe )" crlf))
)
;####################################default-rule###################################

;@@@ Added by Anita-1.1.2014
;He managed to retain his dignity throughout the performance. [cambridge dictionary]
;वह अपने प्रदर्शन के दौरान अपनी गरिमा को बनाए रखने में कामयाब रहा ।
(defrule retain_default_rule
(id-root ?id retain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banAe_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  retain.clp 	retain_default_rule   "  ?id "  banAe_raKa )" crlf))
)
