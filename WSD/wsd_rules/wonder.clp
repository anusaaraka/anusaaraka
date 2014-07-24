
(defrule wonder0
(declare (salience 100))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id axBuwawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder0   "  ?id "  axBuwawA )" crlf))
)

;"wonder","N","1.axBuwawA"
;--"2.acaraja"
;We were filled with wonder when the total eclipse occurred.
;

;@@@ Added by Pramila(BU) on 21-03-2014
;He was filled with wonder.   ;shiksharthi
;वह आश्चर्यचकित हो गया था.
(defrule wonder1
(declare (salience 4900))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ?id1 ?id)
(id-word =(- ?id 1) with)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) AScaryacakiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wonder.clp 	wonder1  "  ?id "  "  (- ?id 1)  "  AScaryacakiwa  )" crlf))
)

;@@@ Added by Pramila(BU) on 21-03-2014
;Television is one of the wonders of modern science.   ;shiksharthi
;टेलीविजिन आधुनिक विज्ञान के अजूबो में से एक है.
(defrule wonder2
(declare (salience 5000))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajubA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder2   "  ?id "  ajubA )" crlf))
)


;@@@ Added by Pramila(BU) on 21-03-2014
;I wonder whether they will come.   ;shiksharthi
;मुझे संदेह होता है कि वे आएँगे.
;I wonder if you can help me.   ;oald
;मुझे संदेह होता है कि तुम मेरी सहायता कर सकते हो.
(defrule wonder3
(declare (salience 4900))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-vAkyakarma  ?id ?kri)(kriyA-samakAlika_kriyA  ?id ?kri))
(kriyA-vAkya_viBakwi  ?kri ?id1)
(id-word ?id1 if|whether)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxeha_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder3   "  ?id "  saMxeha_ho )" crlf))
)

;@@@ Added by Pramila(BU) on 21-03-2014
;I wonder whether it is so accurate.   ;shiksharthi
;मुझे आश्चर्य होता है कि यह इतना सही है.
(defrule wonder4
(declare (salience 5000))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?id1)
(subject-subject_samAnAXikaraNa  ?id2 ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScarya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder4   "  ?id "  AScarya_ho )" crlf))
)


;@@@ Added by Pramila(BU) on 21-03-2014
;He works wonders.   ;shiksharthi
;वह चमत्कार कर दिखाता है.
(defrule wonder5
(declare (salience 5000))
(id-word ?id wonders)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(id-root ?kri work)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id camawkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  wonder.clp 	wonder5   "  ?id "  camawkAra )" crlf))
)


;@@@ Added by Pramila(BU) on 21-03-2014
;I wonder why he left his job.   ;oald
;मैं जानना चाहता हूँ उसने नौकरी क्यों छोडी.
(defrule wonder6
(declare (salience 5000))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-samakAlika_kriyA  ?id ?id1)
(kriyA-kriyA_viSeRaNa  ?id1 ?id2)
(id-word ?id2 why|how|where)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnanA_cAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder6   "  ?id "  jAnanA_cAha )" crlf))
)


;@@@ Added by Pramila(BU) on 21-03-2014
;We were wondering about next April for the wedding.   ;oald
;हम शादी के लिए अगले अप्रैल के बारे में सोच रहे थे. 
(defrule wonder7
(declare (salience 4500))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-about_saMbanXI  ?id ?id1)(kriyA-vAkyakarma  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder7   "  ?id "  soca )" crlf))
)


;@@@ Added by Pramila(BU) on 21-03-2014
;‘What should I do now?’ she wondered.  ;oald
;'मुझे अब क्या करना चाहिए ?' उसने सोचा
(defrule wonder8
(declare (salience 4500))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?id1)
(kriyA-object  ?id1 ?id2)
(id-word ?id2 what)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder8   "  ?id "  soca )" crlf))
)

(defrule wonder9
(declare (salience 500))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acaraja_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder9   "  ?id "  acaraja_kara )" crlf))
)



;$$$ Modified by Pramila(BU) on 21-03-2014 [condition '(kriyA-for_saMbanXI  ?id ?id2)' and '(kriyA-samakAlika_kriyA  ?id ?id3)' added]
;Added by Meena(8.02.10)
;I wondered for a long time why everyone liked her so much .  
(defrule wonder10
(declare (salience 5000))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?)
(kriyA-for_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScarya_ho)) 
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp    wonder10   "  ?id "  AScarya_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  wonder.clp      wonder10   "  ?id " ko )" crlf)
)
)




;Salience reduced by Meena(8.02.10)
(defrule wonder11
(declare (salience 0))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AScaryacakiwa_ho));Modified meaning "AScaryacakiwa_honA" to "AScaryacakiwa_ho" by Meena(16-01-10)
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wonder.clp 	wonder11   "  ?id "  AScaryacakiwa_ho )" crlf))
)


;@@@ Added by Pramila(BU) on 21-03-2014
;He looked at me with wonder.   ;shiksharthi
;उसने आश्चर्यचकित होकर मेरी ओर देखा . 
(defrule wonder12
(declare (salience 5000))
(id-root ?id wonder)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ?id1 ?id)
(kriyA-at_saMbanXI  ?id1 ?id2)
(id-word =(- ?id 1) with)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) AScaryacakiwa_hokara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wonder.clp 	wonder12  "  ?id "  "  (- ?id 1)  "  AScaryacakiwa_hokara  )" crlf))
)

; mEM AScaryacakiwa howA hUz Vs muHe acaraja howA hE
;"wonder","VT","1.acaraja_honA[karanA]"
;Ramesh wondered at the young child's achievement.
;--"2.kOwuka_honA"
;I wonder whether they will come.
;
