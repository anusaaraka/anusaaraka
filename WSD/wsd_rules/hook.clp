
(defrule hook0
(declare (salience 5000))
(id-root ?id hook)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hooked )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aMkuSAkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hook.clp  	hook0   "  ?id "  aMkuSAkAra )" crlf))
)

;"hooked","Adj","1.aMkuSAkAra"
;yArda meM krena se 'hooked'(aMkuSAkAra)kAzte meM PazsA kara BArI sAmAna uwArawe hEM.
;
(defrule hook1
(declare (salience 4900))
(id-root ?id hook)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hook.clp 	hook1   "  ?id "  uTA )" crlf))
)

;default_sense && category=verb	kAzte se pakadZa	0
;"hook","V","1.kAzte se pakadZanA"
;usane kuez meM se bAltI 'hook'(kAzte se pakadZa kara)nikAlI.
;--"2.geMxa mArane kI eka viXi"
;usane geMxa ko pICe kI ora 'hook' kiyA.
;
;

;@@@ Added by Prachi Rathore[12-2-14]
;Hang your towel on the hook.[oald]
; हुक पर अपना तौलिया लटकाइये. 
(defrule hook2
(declare (salience 4900))
(id-root ?id hook)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id huka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hook.clp 	hook2   "  ?id "  huka )" crlf))
)

;@@@ Added by Prachi Rathore[12-2-14]
;Check that the computer is hooked up to the printer. [oald]
;जाँच करिये कि सङ्गणक मुद्रक से जुडा हुआ है . 
(defrule hook3
(declare (salience 5000))
(id-root ?id hook)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 judA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hook.clp 	hook3  "  ?id "  " ?id1 " judA_ho  )" crlf))
)


;@@@ Added by Prachi Rathore[12-2-14]
;They formed the band in 2008, hooking up with bass player Rod Byrne.[oald]
;2008 में उन्होंने पुमन्द्रक वादक रोड बायर्न को साथी बनाते हुए  बैंड बनाया . 
(defrule hook4
(declare (salience 5050))
(id-root ?id hook)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sAWI_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hook.clp 	hook4  "  ?id "  " ?id1 " sAWI_banA )" crlf))
)

