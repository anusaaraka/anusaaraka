
;@@@ Added by Anita-12.12.13
;In bottles or tins, replied the children.
;बोतलों में या टीन के डिब्बों में, बच्चों ने जवाब दिया ।
(defrule reply1
(declare (salience 4900))
(id-root ?id reply)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id javAba_xe))
(assert (kriyA_id-object_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reply.clp 	reply1   "  ?id "  javAba_xe )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reply.clp     reply1   "  ?id " ne )" crlf)
)

;--"2.baxale_me_kuCa_karanA"
;@@@ Added by Anita
;Soldiers have replied to the enemy's fire.
;सैनिकों ने दुश्मन के क्रोध के बदले में प्रतिक्रिया व्यक्त की ।
(defrule reply2
(declare (salience 4950))
(id-root ?id reply)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 soldier)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawikriyA_vyakwa_kara))
(assert (kriyA_id-subject_viBakwi ?id ke_baxale_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reply.clp 	reply2   "  ?id "  prawikriyA_vyakwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  reply.clp     reply2   "  ?id " ke_baxale_meM )" crlf))
)

;################################default-rule####################################
;"reply","N","1.javAba"
;I am grateful to you for your favourable reply.
;मैं आपके अनुकूल जवाब के लिए कृतज्ञ हूँ ।
(defrule reply0
(id-root ?id reply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id javAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reply.clp 	reply0   "  ?id "  javAba )" crlf))
)

;$$$ Modified by Anita 14-12-13. Added object_viBakwi.
;"reply","V","1.javAba"
;I have already replied to your letter.  [old clp sentence] 
;मैं आपके पत्र का पहले ही जवाब दे चुका हूँ .
(defrule reply_verb_default
(id-root ?id reply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id javAba_xe))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reply.clp 	reply_verb_default   "  ?id "  javAba_xe )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reply.clp     reply_verb_default   "  ?id " kA )" crlf)
)

;"reply","VTI","1.javAba_xenA"
;I have already replied to your letter.
