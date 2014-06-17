;@@@ Added by Anita
;The police found some alien matter in the local area.
;पुलिस ने स्थानीय क्षेत्र में कुछ बाह्य पदार्थ पाए ।
;Soils modified for use in containers should contain at least 5 SYMBOL-PERCENT organic matter. [Dante Dictionary}
;इस्तेमाल करने के लिए सुधारी गई मिट्टी में कम से कम ५ प्रतिशत जैविक पदार्थ होना चाहिए ।
(defrule matter0
(declare (salience 4250))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 alien|organic|vegetable)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " matter.clp  matter0  " ?id "  paxArWa )" crlf))
)

(defrule matter01
(declare (salience 5000))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 foreign)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAmalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  matter.clp 	matter01   "  ?id "  mAmalA )" crlf))
)

;It scatters the matter
(defrule matter00
(declare (salience 4900))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 scatter)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  matter.clp 	matter00   "  ?id "  paxArWa )" crlf))
)


;@@@ Added by Anita
;Oh my goodness what is the matter with you? 
(defrule matter1
(declare (salience 4025))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samasyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " matter.clp  matter1  " ?id "  samasyA )" crlf))
)

;@@@ Added by Anita
; Added 'crux|heart|simple' in the list and added 'viSeRya-of_saMbanXI' relation
;I did not feel that we had got to the heart of the matter. [Oxford Advanced Learner's Dictionary]
;मुझे ऐसा महसूस नहीं हुआ कि हम मामले के सबसे महत्वपूर्ण भाग तक पहुँचे ।
;And that is the crux of the matter.[Oxford Advanced Learner's Dictionary]
;और वह मामले का मूल बिंदु है ।
;It should have been a simple matter to check.[Oxford Advanced Learner's Dictionary]
;जाँच करने के लिए यह साधारण मामला होना चाहिए ।
(defrule matter2
(declare (salience 4025))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(or (viSeRya-viSeRaNa  ?id ?id1) (viSeRya-of_saMbanXI  ?id1 ?id))
(id-root ?id1 crux|heart|simple)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAmalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  matter.clp   matter2   " ?id "  mAmalA )" crlf))
)

;It's a private matter.[Oxford Advanced Learner's Dictionary]
;यह एक निजी मामला है ।
;It should have been a simple matter to check.[Oxford Advanced Learner's Dictionary]
;जाँच करने के लिए यह साधारण मामला होना चाहिए ।
;I was not prepared to let the matter drop.[Oxford Advanced Learner's Dictionary]
;मैं मामले को छोड़ देने के लिए तैयार नहीं था ।(parser is wrong)
;I did not feel that we had got to the heart of the matter. [Oxford Advanced Learner's Dictionary]
;मुझे ऐसा महसूस नहीं हुआ कि हम मामले के सबसे महत्वपूर्ण भाग तक पहुँचे ।
;And that is the crux of the matter.[Oxford Advanced Learner's Dictionary]
;और वह मामले का मूल बिंदु है ।
;(defrule matter2
;(declare (salience 1010))
;(id-root ?id matter)
;?mng <-(meaning_to_be_decided ?id)
;(or (viSeRya-viSeRaNa  ?id ?)(viSeRya-as_saMbanXI  ? ?id)(viSeRya-det_viSeRaNa  ?id ?)(subject-subject_samAnAXikaraNa  ? ?id)(viSeRya-of_saMbanXI  ? ?id)(saMjFA-to_kqxanwa  ? ?id)(kriyA-on_saMbanXI  ? ?id)
;)
;(id-cat_coarse ?id noun)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id mAmalA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  matter.clp   matter2   " ?id "  mAmalA )" crlf))
;)

;@@@ Added by Anita 
; Note : need to be corrected
;It's a matter of taste.[Oxford Advanced Learner's Dictionary]
;यह पसन्द की बात है ।
;yaha svAxa kI bAwa hE.
;And then there is the little matter of the fifty pounds you owe me.[Oxford Advanced Learner's 
;Dictionary]
;और फिर £ 50 की छोटी सी बात है जो आपको मुझे देने हैं ।
;It is not a matter for cheering.[GyAna-Corpus]
;यह उत्साहवर्धक बात नहीं है ।
(defrule matter3
(declare (salience 4160))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(or (viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-det_viSeRaNa  ?id ?)(viSeRya-for_saMbanXI  ?id ?)(kriyA-over_saMbanXI  ? ?id))
(id-root ?id1 taste)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " matter.clp  matter3  " ?id "  bAwa )" crlf))
)

;@@@ Added by Anita 
;I had forgotten the keys, which did not help matters.
;मैं चाबियाँ भूल गया था, जिससे स्थिति में मदद नहीं हो पाई ।
;Matters were made worse by a fire in the warehouse. 
;गोदाम में लगी आग ने मामलों को बद्त्तर बना दिया ।
;The government must deal with this as a matter of urgency.[Oxford Advanced Learner's Dictionary]
;सरकार को इस आपात स्थिति में अविलंब व्यवहार करना चाहिए ।
(defrule matter4
(declare (salience 1000))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ? ?id)(viSeRya-of_saMbanXI  ?id ?)(viSeRya-as_saMbanXI  ? ?id)(kriyA-karma  ? ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWiwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " matter.clp  matter4  " ?id "  sWiwi )" crlf))
)
;------------------------------------- Default Rules -------------------------------------------------------
; Added example sentences with translations by Anita
;She may need your help with some business matters.[Oxford Advanced Learner's Dictionary]
;उसे व्यापारिक विषयों में मदद की आवश्यकता हो सकती है ।
;I always consulted him on matters of policy.[Oxford Advanced Learner's Dictionary]
;मैंने नीति संबंधी विषयों पर हमेशा उससे राय ली ।
;That is a matter for you to take up with your boss.[Oxford Advanced Learner's Dictionary]
;बॉस के पास ले जाना आपका विषय है । 
;Let us get on with the matter in hand.[Oxford Advanced Learner's Dictionary]
;चलो इस विषय को हल करते हैं ।
;They had important matters to discuss.Oxford Advanced Learner's Dictionary
;उन्हें महत्वपूर्ण विषयों पर चर्चा करनी  ।
;It was a matter of some concern to most of those present.[Oxford Advanced Learner's Dictionary]
;उपस्थित सभी के लिए यह चिन्ता का विषय था ।[Oxford Advanced Learner's Dictionary]
;Learning to drive is all a matter of coordination.[Oxford Advanced Learner's Dictionary]
;गाड़ी चलाना सीखना तालमेल का विषय है ।
;Planning a project is just a matter of working out the right order to do things in .[Oxford 
;Advanced Learner's Dictionary]
;परियोजना की योजना करना वस्तुओं को सिर्फ सही क्रम में रखने का विषय है ।
;It is simply a matter of letting people know in time.
;यह सिर्फ लोगों के समय पर जानने का विषय है ।
(defrule matter_noun
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viRaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  matter.clp 	matter_noun   "  ?id "  viRaya )" crlf))
)


;@@@ Added by Anita
;The children matter more to her than anything else in the world.[Oxford Advanced Learner's 
;Dictionary]
;उसके लिए दुनिया में अन्य किसी भी चीज़ से अधिक बच्चे महत्वपूर्ण हैं ।
(defrule matter_verb
(declare (salience 0))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  mahawwvapUrNa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  matter.clp matter_verb   " ?id "  mahawwvapUrNa_ho )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_matter0
(declare (salience 4250))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 alien|organic|vegetable)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " matter.clp   sub_samA_matter0   "   ?id " paxArWa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_matter0
(declare (salience 4250))
(id-root ?id matter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 alien|organic|vegetable)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxArWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " matter.clp   obj_samA_matter0   "   ?id " paxArWa )" crlf))
)
