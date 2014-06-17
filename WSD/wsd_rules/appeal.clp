
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-jan-2014
;The prospect of a long wait in the rain did not appeal.[oald]
;
;The design has to appeal to all ages and social groups.[oald]
;डिज़ाइन सब उम्र के लोगो और सामाजिक समूहों को आकर्षक लगना चाहिये . 
(defrule appeal3
(declare (salience 5000))
(id-root ?id appeal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-word ?sub prospect|design)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkarRaka_laga/rocaka_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  appeal.clp  	appeal3   "  ?id "  AkarRaka_laga/rocaka_laga )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-jan-2014
;To file an appeal.[oald]
;To lodge an appeal.[oald]
(defrule appeal4
(declare (salience 5000))
(id-root ?id appeal)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-word ?kri lodge|file)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id yAcanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  appeal.clp  	appeal4   "  ?id "  yAcanA )" crlf))
)


;********************DEFAULT RULES**************************


(defrule appeal0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id appeal)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id appealing )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AkarRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  appeal.clp  	appeal0   "  ?id "  AkarRaka )" crlf))
)

;"appealing","Adj","1.AkarRaka"
;I find the idea of a trip to the mountains appealing.
;--"2.yAcanA_karawe_hue"
;He gave her an appealing glance.
;


(defrule appeal1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id appeal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appeal.clp 	appeal1   "  ?id "  anuroXa_kara )" crlf))
)

;default_sense && category=verb	apIla_karanA/yAcanA_kara	0
;"appeal","V","1.apIla_karanA/yAcanA_karanA"
;The government appealed to the public to donate blood for soldiers.
;Appeal to somebody for help.
;--"2.punarvicAra_ke_liye_prArWanA_karanA"
;He was found guilty but he appealed to High Court.
;The case was appealed immediately after the verdict.
;--"3.acCA_laganA"
;The idea of a vacation appeals to me
;
;LEVEL 
;Headword : appeal
;

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-jan-2014
(defrule appeal2
(declare (salience 0))
(id-root ?id appeal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Agraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  appeal.clp 	appeal2  "  ?id "  Agraha )" crlf))
)



;Examples --
;
;"appeal",N","1.yAcanA"
;He filed an appeal to have his friend released.
;usane apane xoswa ko rihA karavAne ke liye eka yAcanA xAyara kI.
;We should answer the appeal for flood donations.
;hameM bADZa ke liye xAna xene kI yAcanA para XyAna xenA cAhiye.
;--"2.AkarRaNa"
;New trends in fashion do have an appeal for the teenagers.
;kiSoroM meM nae PESanoM ke prawi AkarRaNa howA hE. 
;
;"appeal","V","1.anuroXa_karanA"
;The government appealed to the public to donate blood for soldiers.
;sarakAra ne janawA se sEnikoM ko rakwa praxAna karane ke lie apIla kI
;Appeal to somebody for help.
;maxaxa ke lie kisI se waanuroXa karanA.
;--"2.prArWanA_karanA{nyAya_liye)"
;He was found guilty but appealed immediately
;vaha xoRI TaharAyA gayA para usane wuranwa apIla kI.
;--"3.pasanxa_karanA"
;The idea of a vacation appeals to me.
;CuttI manAne kA vicAra muJe pasanxa AyA.
;
;'appeal' Sabxa ke mUlArWa waka pahuzcane ke liye Upara xiye uxAharaNoM kA yaxi arWa viSleRaNa kareM wo nimna pariNAma nikalawA hE --
; 
;saMjFA prayogoM meM -
;'yAcanA' - kriyA prayoga meM 'anuroXa_karanA' yA 'yAcanA_karanA' xono hI samBava hEM.
;'AkarRaNa' - kisI bAwa, vaswu yA vyakwi ke prawi 'AkarRaNa', usakI ora 'AkarRiwa_honA'
;
;kriyA prayogoM meM -
; 'anuroXa_karanA' - anuroXa_karane kI prakriyA meM anuroXa karanevAlA jisase anuroXa kiyA gayA hE usakA 'XyAna' apanI AvaSyakawA ke prawi 'AkqRta karawA' hE.
; 'prArWanA_karanA' - anyAya huA hE, isa ora nyAyapITa kA 'XyAna_AkarRiwa_karanA'
; 'pasanxa_karanA' - kisI vaswu viSeRa kI ora 'XyAna_AkqRta_honA'
;
;
;isaprakAra isa viSleRaNa se 'appeal' ke 'XyAna_AkarRaNa' Ora 'anuroXa yA yAcanA' ye xo arWa uBara kara Awe hEM. 'yAcanA' meM 'XyAna_AkarRaNa' nihiwa hE, awaH 'appeal' kA bIja arWa yahI prawIwa howA hE. isa AXAra para isakA sUwra nimnaprakAra se banAyA jA sakawA hE -
;
;sUwra : anuroXa[<XyAna_AkarRaNa]
