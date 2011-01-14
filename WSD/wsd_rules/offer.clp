
(defrule offer0
(declare (salience 5000))
(id-root ?id offer)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id offering )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id BeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  offer.clp  	offer0   "  ?id "  BeMta )" crlf))
)

;"offering","N","1.BeMta"
;He gave her a diamond ring as a peace offering.
;
(defrule offer1
(declare (salience 4900))
(id-root ?id offer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offer.clp 	offer1   "  ?id "  praswAva )" crlf))
)

(defrule offer2
(declare (salience 4800))
(id-root ?id offer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswAva_raKa))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offer.clp 	offer2   "  ?id "  praswAva_raKa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  offer.clp     offer2   "  ?id " kA )" crlf)
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
