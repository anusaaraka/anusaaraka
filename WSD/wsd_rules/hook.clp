
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