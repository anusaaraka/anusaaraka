
(defrule house0
(declare (salience 5000))
(id-root ?id house)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id housing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Gara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  house.clp  	house0   "  ?id "  Gara )" crlf))
)

;"housing","N","1.Gara"
;gqha nirmANa maNdala'housing'(Gara) AsAna kiSwoM para AvaNtiwa karawI hE.
;
(defrule house1
(declare (salience 4900))
(id-root ?id house)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) the )
(id-cat ?id proper_noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  house.clp 	house1   "  ?id "  saMsaxa )" crlf))
)

;@@@ Added by Prachi Rathore[24-1-14]
;The University Law College was housed in the Darbhanga Library Building.[gyan-nidhi]
;यूनिवर्सिटी लॉ कालेज को दरभंगा पुस्तकालय भवन में जगह दी गई थी।
(defrule house4
(declare (salience 5000))
(id-root ?id house)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha_xe))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  house.clp 	house4   "  ?id "  jagaha_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  house.clp      house4   "  ?id " ko )" crlf))
)

;@@@ Added by Prachi Rathore[29-3-14]
;It was the decision of the house that departmental representatives were attending the meeting just to complete the quorum and were not equipped with complete information.[news]
;सदन का फैसला था कि विभागीय प्रतिनिधि सिर्फ कोरम पूरा करने के लिए बैठक में आते हैं उन्हें पूरी जानकारी नहीं रहती है।
(defrule house5
(declare (salience 5000))
(id-root ?id house)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI ?id1 ?id)
(id-root ?id1 decision)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMsaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  house.clp 	house5   "  ?id "  saMsaxa )" crlf))
)

;xxxxxxxxxxxxxxx Default rule. xxxxxxxxxxxxxxxxxxxxxxx
;In case of capital words, POS tagger gives the lable prop_noun
;The bill was approved by the House.
(defrule house2
(declare (salience 4800))
(id-root ?id house)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  house.clp 	house2   "  ?id "  Gara )" crlf))
)

(defrule house3
(declare (salience 4700))
(id-root ?id house)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GarameM_TaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  house.clp 	house3   "  ?id "  GarameM_TaharA )" crlf))
)

;"house","V","1.GarameM TaharAnA"
;kaI logOM ne beGarabAra BUkampa pIdZiwoM ko apane'house'(GarameM TaharAyA.)
;
;
