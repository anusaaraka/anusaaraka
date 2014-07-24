
;Added by Meena(16.9.10)
;In the first experiment, a large magnet and a small magnet are weighed separately, and then one magnet is hung from the pan of the top balance so that it is directly above the other magnet.
(defrule directly_above0
(declare (salience 5000))
(id-root ?id directly)
?mng <-(meaning_to_be_decided ?id)
;(id-word =(- ?id 1) in )
(id-word =(+ ?id 1) above)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  =(+ ?id 1) ke_TIka_Upara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " directly.clp  directly_above0  "  ?id "  " (+ ?id 1) "  TIka_Upara  )" crlf))
)


;@@@ Added by Pramila(BU) on 04-03-2014
;directly opposite/below/ahead   ;oald
;ठीक सामने/नीचे/आगे
(defrule directly1
(declare (salience 5000))
(id-root ?id directly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(id-word =(+ ?id 1) opposite|below|ahead)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  directly.clp 	directly1   "  ?id " TIka )" crlf))
)


;@@@ Added by Pramila(BU) on 04-03-2014
;She left directly after the show.  ;oald
;वह शो के तुरंत बाद चली गई.
(defrule directly2
(declare (salience 5000))
(id-root ?id directly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(kriyA-after_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wuraMwa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  directly.clp 	directly2   "  ?id " wuraMwa )" crlf))
)

;@@@ Added by Pramila(BU) on 04-03-2014
;Tell them I'll be there directly.  ;oald
;उन्हें बताओ में शीघ्र ही वहाँ पहुँच जाऊँगा.
(defrule directly3
(declare (salience 5000))
(id-root ?id directly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-kriyA_viSeRaNa  ?kri ?id)
(kriyA-aXikaraNavAcI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIGra_hI ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  directly.clp 	directly3   "  ?id " SIGra_hI )" crlf))
)



;@@@ Added by Pramila(BU) on 04-03-2014
;Large distances such as the distance of a planet or a star from the earth can not be measured directly with a metre scale.   ;ncert
;बहुत बडी दूरियाँ, जैसे किसी ग्रह अथवा तारे की पृथ्वी से दूरी, प्रत्यक्ष - रूप से किसी मीटर पैमाने की सहायता से ज्ञात नहीं नहीं की जा सकती है.
(defrule directly4
(declare (salience 100))
(id-root ?id directly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyakRa-rUpa_se ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  directly.clp 	directly4   "  ?id " prawyakRa-rUpa_se )" crlf))
)


