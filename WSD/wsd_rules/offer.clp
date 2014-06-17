;Added by Sonma Gupta MTech IT Banasthali 2013
;Dear Lord, we offer up our prayers. [Veena mam Translation]
;हे भगवान, हम अपनी प्रार्थना भेट करते हैं .
(defrule offer0
(declare (salience 5000))
(id-root ?id offer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(and(kriyA-object  ?id ?)(kriyA-upasarga  ?id ?)(kriyA-subject  ?id ?)(kriyA-subject  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BeMta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  offer.clp  	offer0   "  ?id "  BeMta_kara )" crlf))
)



(defrule offer1
(declare (salience 4900))
(id-root ?id offer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id offering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  offer.clp  	offer1   "  ?id "  BeMta )" crlf))
)

;"offering","N","1.BeMta"
;He gave her a diamond ring as a peace offering.
;
(defrule offer2
(declare (salience 4800))
(id-root ?id offer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offer.clp 	offer2   "  ?id "  praswAva )" crlf))
)


;Added by Sonma Gupta MTech IT Banasthali 2013
;"I'll do the cooking, " he offered.  [Veena mam Translation]
;"मैं खाना पकाऊंगा,"उसने खाना पेशकश की.
(defrule offer3
(declare (salience 4700))
(id-root ?id offer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(and(kriyA-vAkyakarma  ?id ?)(kriyA-subject  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id peSakaSa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offer.clp 	offer3   "  ?id "  peSakaSa_raKa )" crlf))
)


;Added by Sonma Gupta MTech IT Banasthali 2013
;She was offered a job in Paris.  [Veena mam Translation]
;उसको पेरिस में काम का  प्रस्ताव दिया गया था . 
(defrule offer4
(declare (salience 4600))
(id-root ?id offer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(and(kriyA-object  ?id ?)(kriyA-subject  ?id ?)(kriyA-karma  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswAva_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offer.clp 	offer4   "  ?id "  praswAva_xe )" crlf)
)
)


;Added by Sonma Gupta MTech IT Banasthali 2013
;I feel bad that I didn't offer them any food to them. [Veena mam Translation]
;मुझे बुरा लग रहा है कि मैंने उन्हें कुछ भी खाने को नहीं दिया .
(defrule offer5
(declare (salience 4500))
(id-root ?id offer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(and(kriyA-vAkya_viBakwi  ?id ?)(kriyA-kriyA_niReXaka ?id ?)(kriyA-vAkyakarma  ? ?id))(kriyA-subject  ?id ?)(kriyA-object  ?id ?)(kriyA-for_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offer.clp 	offer5   "  ?id "  xe )" crlf)
)
)


(defrule offer6
(declare (salience 4400))
(id-root ?id offer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswAva_raKa))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offer.clp 	offer6   "  ?id "  praswAva_raKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  offer.clp     offer6   "  ?id " kA )" crlf)
)
)

; praswAva_raKanA is better; see paxasuwra: Amba
;default_sense && category=verb	praxAna_kara	0
;"offer","VTI","1.praxAna karanA"
;
;
;LEVEL 
;Headword : offer
;
;Examples --
;
;"offer","N","1.praswAva"
;I am very happy for your kind offer of help.
;mEM sahAyawA_xene ke wumhAre praswAva se bahuwa KuSa hUz.
;She has received an offer for marriage from a boy living in the USA.
;amarIkAnivAsI eka ladZake se use SAxI kA praswAva AyA hE.
;The company made him a tempting offer of a high salary.
;kampanI ne usake sAmane badZe vewana kA eka AkarRaka praswAva raKA hE.
;"offer","VTI","1.sAmane_raKanA"
;ciwra ke liye svitajZaralEMda ke dIlara ne 2 miliyana dOYlara sAmane_raKe.
;--"2.bAwa_uTAnA" <-- sahAyawA_karane kA praswAva_sAmane_raKanA
;You could have offered them help.
;Apa unheM sahAyawA xene kI bAwa uTA sakawe We.
;--"3.peSa_karanA"  <--pIne kA praswAva sAmane raKanA
;Mira offered him a drink.
;mIrA ne usako eka peya peSa kiyA.
;
;ukwa uxAharaNoM se EsA lagawA hE ki aMgrejZI Sabxa 'offer' kA mUla arWa kisI
;praswAva ko xUsare ke vicArArWa sAmane raKanA hE. aMgrejZI Sabxa 'propose'
;kA arWa BI 'praswAva_raKanA' howA hE. wo praSna yaha uTawA hE ki xono meM
;anwara kyA hE ?
;'offer' ke uxAharaNoM para xqRti dAlane para lagawA hE ki yahAz arWa mAwra
;'praswAva_raKanA' nahIM hE apiwu praswAva raKane kA karwA kriyA ko
;sampanna karane meM svayaM kI BUmikA BI spaRta kara xewA hE. 'propose' meM
;'kyA_kiyA_jA_sakawA_hE' kA arWa praXAna hE jabaki 'offer' meM 
;'mEM yaha karane ke liye wEyAra hUz' kA BAva praXAna hE.
;isakA sUwra nimna ho sakawA hE --
;
;sUwra : praswAva^sAmane_raKanA
;
