;@@@ Added by Anita-9.4.2014
;My hairdresser always razors my fringe to give a soft effect. [cambridge dictionary]
;मेरा केश प्रसाधक हमेशा मेरी लटों को लचीला प्रभाव देने के लिए रेज़र से काटता है ।
(defrule razor0
(declare (salience 5000))
(id-root ?id razor)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rejZara_se_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  razor.clp 	razor0   "  ?id "  rejZra_se_kAta )" crlf))
)

;################################default-meaning###########################
;@@@ Added by Anita-9.4.2014
;Now I haven't even money to buy a  razor,he said . [Dante Dictionary]
;अब मेरे पास रेज़र खरीदने के भी पैसे नहीं हैं , उसने कहा ।
(defrule razor_default-rule
(declare (salience 0))
(id-root ?id razor)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-for_saMbanXI  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rejZara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  razor.clp 	razor_default-rule   "  ?id "  rejZara )" crlf))
)
