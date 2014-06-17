
;@@@ Added by Anita - 6.5.2014
;There is not fierce rivalry to get the job. [cambridge dictionary]
;नौकरी पाने के लिए इतनी भयानक   प्रतिस्पर्धा  नहीं है ।
(defrule rivalry1
(declare (salience 5000))
(id-root ?id rivalry)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 fierce)
(viSeRya-viSeRaNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawisparXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rivalry.clp     rivalry1  "  ?id "  prawisparXA )" crlf))
)

;@@@ Added by Anita - 6.5.2014
;Sibling  rivalry caused the splitting up of what had been a glowing family business. [Dante dictionary]
;भाईचारे वाली स्पर्द्धा , जिससे पारिवारिक व्यवसाय चमका था , बंटवारे का कारण बना ।
(defrule rivalry2
(declare (salience 4000))
(id-root ?id rivalry)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?id)
(viSeRya-viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sparXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rivalry.clp     rivalry2  "  ?id "  sparXA )" crlf))
)

;@@@ Added by Anita - 6.5.2014
;There then ensued her famous  rivalry with Peg Woffington, her one-time benefactor. [Dante dictionary]
;परिणामस्वरूप उसके भूतपूर्व शुभचिंतक पैग वोफिंगटन के साथ उसकी प्रतिद्वंद्विता शुरू हो गयी ।
;Police had alleged that Taurani was involved in the murder because of his business  rivalries with Kumar. [Dante dictionary]
;पुलिस ने आरोप लगाया था कि तारुनी हत्या में शामिल थी क्योंकि कुमार के साथ उसकी व्यापार में प्रतिद्वंद्विता थी  ।
;When the town Feis was on, there was great  rivalry between those teachers as to who won most medals and mentions.  ; [Dante dictionary]
;शहर फीस था, उस समय इन शिक्षकों के बीच महान प्रतिद्वंद्विता  थी कि किसने सबसे अधिक पदक जीते और उल्लेख किये .
(defrule rivalry3
(declare (salience 3000))
(id-root ?id rivalry)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawixvaMxviwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rivalry.clp     rivalry3  "  ?id "  prawixvaMxviwA )" crlf))
)

;@@@ Added by Anita - 6.5.2014
;There is a certain amount of friendly rivalry between the teams.  [oxford learner's dictionary]
;टीमों के बीच कुछ हद तक मैत्रीपूर्ण मुकाबला है ।
(defrule rivalry4
(declare (salience 2000))
(id-root ?id rivalry)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 team)
(viSeRya-between_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukAbalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rivalry.clp     rivalry4  "  ?id "  mukAbalA )" crlf))
)

;######################################default-rule##################################
;@@@ Added by Anita - 5.5.2014
;There is not such rivalry among my three sons. [cambridge dictionary]
;मेरे तीन बेटों के  बीच इस तरह की प्रतिस्पर्धा नहीं है ।
;When the town Feis was on, there was great  rivalry between those teachers as to who won most ;medals and mentions. ;[Dante dictionary]
;शहर फीस था, उस समय इन शिक्षकों के बीच अधिक प्रतिस्पर्धा  थी कि किसने सबसे अधिक पदक जीते और कितनों का उल्लेख हुआ ।
(defrule rivalry_default-rule
(declare (salience 0))
(id-root ?id rivalry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawisparXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  rivalry.clp  rivalry_default-rule   "  ?id "  prawisparXA )" crlf))
)
