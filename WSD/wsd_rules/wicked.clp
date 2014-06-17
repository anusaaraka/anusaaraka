
(defrule wicked0
(declare (salience 5000))
(id-root ?id wicked)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuRtawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wicked.clp 	wicked0   "  ?id "  xuRtawA )" crlf))
)


;$$$ MOdified By Pramila(BU) on 13-03-2014
;[conditions added]
(defrule wicked1
(declare (salience 4900))
(id-root ?id wicked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
;(subject-subject_samAnAXikaraNa  ?sub ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wicked.clp 	wicked1   "  ?id "  xuRta )" crlf))
)

;"wicked","Adj","1.xuRta"
;He is a wicked man.
;
;

;@@@ Added by Pramila(BU) on 13-03-2014
;It is wicked to harm others.        ;shiksharthi
;दूसरो को क्षति पहुँचाना बहुत बुरा है.
(defrule wicked2
(declare (salience 5000))
(id-word ?id wicked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(saMjFA-to_kqxanwa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id bahuwa_burA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  wicked.clp 	wicked2   "  ?id "  bahuwa_burA )" crlf))
)


;@@@ Added by Pramila(BU) on 13-03-2014
;I despise his wicked nature.          ;shiksharthi
;मैं उसके दुष्ट स्वभाव से घृणा करता हूँ.
(defrule wicked3
(declare (salience 5000))
(id-word ?id wicked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xuRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  wicked.clp 	wicked3   "  ?id "  xuRta )" crlf))
)


;@@@ Added by Pramila(BU) on 13-03-2014
;Antelops are wicked tempered animal.       ;shiksharthi
;बारहसिंगे शरारती स्वभाव वाले जानवर होते हैं.
(defrule wicked4
(declare (salience 100))
(id-word ?id wicked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SarArawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  wicked.clp 	wicked4   "  ?id "  SarArawI )" crlf))
)

