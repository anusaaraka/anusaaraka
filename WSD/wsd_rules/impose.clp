
(defrule impose0
(declare (salience 5000))
(id-root ?id impose)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id imposing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id praBAvaSAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  impose.clp  	impose0   "  ?id "  praBAvaSAlI )" crlf))
)

;"imposing","Adj","1.praBAvaSAlI"
;Her presence is an imposing one.
;
(defrule impose1
(declare (salience 4900))
(id-root ?id impose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impose.clp 	impose1   "  ?id "  lAgU_kara )" crlf))
)

;"impose","V","1.lAgU karanA"
;I have never imposed myself on others.
;
;

;@@@ Added by Prachi Rathore[24-2-14]
; Overall the edifice of physics is beautiful and imposing and you will appreciate it more as you pursue the subject.[ncert]
;व्यापक रूप में, भौतिकी का प्रासाद सुन्दर एवं भव्य है और जैसे - जैसे आप इस विषय में आगे बढेँगे इसका महत्व अधिकाधिक होता जाएगा.
(defrule impose2
(declare (salience 5000))
(id-root ?id impose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(conjunction-components  ? ? ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bavya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impose.clp 	impose2   "  ?id "  Bavya )" crlf))
)

;@@@ Added by Prachi Rathore[24-2-14]
;It was noticeable how a few people managed to impose their will on the others. [oald]
(defrule impose3
(declare (salience 5000))
(id-root ?id impose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WoMpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impose.clp 	impose3   "  ?id " WoMpa )" crlf))
)
