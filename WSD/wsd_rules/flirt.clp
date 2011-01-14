
(defrule flirt0
(declare (salience 5000))
(id-root ?id flirt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSkabAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flirt.clp 	flirt0   "  ?id "  iSkabAjZa )" crlf))
)

;"flirt","N","1.iSkabAjZa"
;He is a compulsive flirt.
;
(defrule flirt1
(declare (salience 4900))
(id-root ?id flirt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSkabAjZI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flirt.clp 	flirt1   "  ?id "  iSkabAjZI_kara )" crlf))
)

;"flirt","V","1.iSkabAjZI_karanA"
;He always flirts with all the girls in the locality.
;--"2.vicAra_karanA"
;He is flirting with the idea of changing his job.
;--"3.KawarA_lenA"
;Mountain climbers flirt with all types of dangers to achieve their objective.
;He has flirted with many professions.
;
;LEVEL 
;Headword : flirt
;
;Examples --
;
;"flirt","V","1.CedZaKAnI_karanA"
;He always flirts with all the girls in the locality.
;vaha ilAke kI sArI ladZakiyoM se hameSA CedZaKAnI karawA rahawA hE.<--prema kA KilavAdZa karanA 
;--"2.vicAra karanA"
;He is flirting with the idea of changing his job.
;vaha apanI nOkarI baxalane kA vicAra kara rahA  hE. <---vicAra se KilavAdZa karanA
;--"3.KawarA lenA"
;Mountain climbers flirt with all types of dangers to achieve their objective.
;parvawArohI apanA lakRya pAne ke liye hara waraha ke Kaware mola lewe hEM. <--KawaroM se KilavAdZa karanA
;--"4.KilavAdZa_karanA"
;He has flirted with many professions.
;usane kaI vyavasAyoM se KilavAdZa kiyA hE.
;
;"flirt","N","1.CedZaCAdZa_karanevAlA"
;He is a compulsive flirt.
;vaha eka bAXya CedaCAdZakarane vAlA hE.
;
;ukwa saBI uxAharaNoM se 'flirt' Sabxa kA pramuKa arWa jo uBara kara AwA hE vaha
;'KilavAdZa_karanA' hE. 'flirt' meM mUlawaH eka BAva 'kisI BI cIjZa ko sawahI wOra 
;para CUwe hue nikala jAne' kA hE jisameM 'gamBIrawA' na ho. Ora yahI BAva 'KilavAdZa_karanA'
;meM BI hE.
;
;awaH isakA sUwra hogA
;
;sUwra : KilavAdZa_karanA
;
;
