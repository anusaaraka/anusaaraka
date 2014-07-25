

;@@@ Added by Anita-11.4.2014
;His comments reduced her to tears . [cambridge dictionary]
;उसकी टिप्पड़ियों ने उसे रुला दिया ।
(defrule reduce1
(declare (salience 4000))
(id-root ?id reduce)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 tear)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rulA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reduce.clp 	reduce1   "  ?id "  rulA_xe )" crlf))
)
;@@@ Added by Anita-11.4.2014
;The sergeant was reduced to the ranks for his cowardice. [cambridge dictionary]
;सार्जेंट के उसकी कायरता के लिए पद घटा दिये गये थे । 
(defrule reduce2
(declare (salience 4000))
(id-root ?id reduce)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 rank)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GatA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reduce.clp 	reduce2   "  ?id "  GatA_xe )" crlf))
)
;@@@ Added by Anita-11.4.2014
;I'd run out of cigarettes and was reduced to smoking the butts left in the ashtrays. [cambridge dictionary]
; मेरी सिगरेट खतम हो गई थी और मैं एशट्रे में सिगरेट के बचे हुए टुकड़ों के धूम्रपान पर उतर आया था ।
(defrule reduce3
(declare (salience 4000))
(id-root ?id reduce)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 smoke)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwara_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reduce.clp 	reduce3   "  ?id "  uwara_A )" crlf))
)

;@@@ Added by Anita-11.4.2014
;My weight reduces when I stop eating sugar. [cambridge dictionary]
;जब मैं चीनी खाना बंद कर देता हूँ तो मेरा वजन कम हो जाता है ।
(defrule reduce4
(declare (salience 4500))
(id-root ?id reduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reduce.clp 	reduce4   "  ?id "  kama_ho )" crlf))
)
;@@@ Added by Anita -11.4.2014
;I reduced the problem to a few simple questions.  [cambridge dictionary]
;मैंने इस समस्या को कुछ सामान्य प्रश्नों का रूप  दिया ।
(defrule reduce5
(declare (salience 5000))
(id-root ?id reduce)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 question)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUpa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reduce.clp 	reduce5   "  ?id "  rUpa_xe )" crlf))
)
;###########################################default-rule#################################
;@@@ Added by Anita -11.4.2014
;The plane reduced speed as it approached the airport. [cambridge dictionary]
;हवाई -जहाज जैसे ही हवाई अड्डा पहुँचा , गति कम कर दी  ।
(defrule reduce_default-rule
(declare (salience 0))
(id-root ?id reduce)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-vAkya_subject  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reduce.clp 	reduce_default-rule   "  ?id " kama_kara )" crlf))
)
