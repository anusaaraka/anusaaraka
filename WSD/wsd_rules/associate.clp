;$$$ Modified by Garima Singh(M.tech-C.S, Banasthali Vidyapith) 24-Feb-2014
;Added '(kriyA-object ?id ?)' relation
;But according to quantum mechanics, we can not associate a definite path with the motion of the electrons in an atom.
;परन्तु क्वाण्टम यान्त्रिकी के अनुसार, हम किसी परमाणु में इलेक्ट्रॉन की गति को किसी निश्चित पथ के साथ सम्बद्ध नहीं कर सकते. 
;Added by Meena(29.8.09)
(defrule associate0
(declare (salience 4900))
(id-root ?id associate)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-subject ?id ?id1)
(kriyA-object ?id ?)
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
;(assert (id-wsd_root_mng ?id juda));Replaced 'judA_ho' as 'juda' by Shirisha Manju Suggested by Chaitanya Sir (30-10-13) 
(assert (id-wsd_root_mng ?id sambaxXa_kara)) ; $$$ modified 'juda' to 'sambaxXa_kara' by Garima Singh
(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  associate.clp   associate0   "  ?id "  juda)" crlf)))
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  associate.clp   associate0   "  ?id "  sambaxXa_kara )" crlf))
)

;added below sentences and notes by Garima Singh:
;Note:
; 1. with_saMbanXI relation appears in other sentences also where "judA_ho" meaning of word "associate" is not appropriate. 
;ex:
;But according to quantum mechanics, we can not associate a definite path with the motion of the electrons in an atom.
;परन्तु क्वाण्टम यान्त्रिकी के अनुसार, हम किसी परमाणु में इलेक्ट्रॉन की गति को किसी निश्चित पथ के साथ सम्बद्ध नहीं कर सकते. 

;2. "sambaxXa" meaning of word associate is working with other sentences also. So I have added this meaning and commented the previous one.  
;ex: 
;venus was a major Roman goddess , associated with love and beauty.
;वीनस प्रेम और सौंदर्य के साथ जुड़ी हुई एक प्रमुख रोमन देवी थी.
;वीनस प्रेम और सौंदर्य के साथ सम्बद्ध एक प्रमुख रोमन देवी थी.
;venus was a major Roman goddess who is associated with love and beauty.
;वीनस एक प्रमुख रोमन देवी थी जिनको प्रेम और सौंदर्य के साथ जोड़ा जाता है/ जो प्रेम और सौंदर्य के साथ सम्बद्ध है

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;I don't like you associating with those people.
(defrule associate1
(declare (salience 5000));salience kept higher than rule4
(id-word ?id associating)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-obect ?id ?))
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id milanA)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  associate.clp   associate1   "  ?id "  milanA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-Feb-2014
;venus was a major Roman goddess , associated with love and beauty.
;वीनस प्रेम और सौंदर्य के साथ सम्बद्ध एक प्रमुख रोमन देवी थी.
;Electrodynamics deals with electric and magnetic phenomena associated with charged and magnetic bodies.[ncert]
;वैद्युत गतिकी आवेशित तथा चुम्बकित वस्तुओं से सम्बद्ध वैद्युत तथा चुम्बकीय परिघटनाएँ हैं.
(defrule associate4
(declare (salience 4900))
(id-root ?id associate)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object ?id ?))
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sambaxXa)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  associate.clp   associate4   "  ?id "  sambaxXa )" crlf))
)


;*************************** DEFAULT RULE **********************************************
;@@@ Added by Garima Singh
;A close associate of the author denied reports that she had cancer.
(defrule associate2
(declare (salience 0))
(id-root ?id associate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahayogI)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  associate.clp   associate2   "  ?id "  sahayogI )" crlf))
)

;@@@ Added by Garima Singh
;Most people associate this brand with good quality.
;अधिकतर लोग इस ब्राण्ड को अच्छी गुणवत्ता के साथ जोडते हैं . 
(defrule associate3
(declare (salience 0))
(id-root ?id associate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  associate.clp   associate3   "  ?id "  jodZa )" crlf))
)

;************************************* EXAMPLES *******************************************

;Added by Garima Singh
;I always associate the smell of baking with my childhood.[oald]
;He is closely associated in the public mind with horror movies.[oald]
;Most people immediately associate addictions with drugs, alcohol and cigarettes.[oald]
;You wouldn't normally associate these two writers—their styles are completely different.[oald]
;I don't like you associating with those people.[oald]
;I associate myself with the Prime Minister's remarks .[oald]
;I have never associated myself with political extremism.[oald]
;Most people associate this brand with good quality.[cambridge]
