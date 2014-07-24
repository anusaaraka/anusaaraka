
(defrule reserve0
(declare (salience 4000)); change salience-5000 to 4000
(id-root ?id reserve)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id reserved )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id amilanasAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  reserve.clp  	reserve0   "  ?id "  amilanasAra )" crlf))
)

;"reserved","Adj","1.amilanasAra/saMkocI"
;She is too reserved to be popular.
;
(defrule reserve1
(declare (salience 4900))
(id-root ?id reserve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awirikwa_niXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reserve.clp 	reserve1   "  ?id "  awirikwa_niXi )" crlf))
)

;@@@ Added by Anita-5.4.2014--
;9 lakh 86 thousand passengers in the reserve category and 88 lakh 41 thousand passengers in the ;unreserved category have travelled this year in the month of October. [news]---parse -problem
;इस साल अक्टूबर में अब तक आरक्षित श्रेणी में 9 लाख 86 हजार और अनारक्षित श्रेणी में 88 लाख 41 हजार यात्रियों ने सफर किया है। 
(defrule reserve2
(declare (salience 5000))
(id-root ?id reserve)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 category)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArakRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reserve.clp 	reserve2   "  ?id " ArakRiwa )" crlf))
)
;"reserve","N","1.awirikwa_niXi"
;--"2.rijZarva_senA"
;Reserves military forces kept back for use when needed.   
;--"3.prawibaMXa"
;Your statement is accepted without any reserve.
;--"4.nyUnawama_mUlya"
;Put a reserve of Rs.2,00000 on this house.
;
;$$$ Added by Anita-7.4.2014 ;Modified meaning by Anitha. (bacA_raKa ---> bacA)
;Reserve your strength for the examination days. [Old clp sentence]
;परीक्षा के दिनों के लिए अपनी ताकत बचाओ ।
(defrule reserve3
(declare (salience 4800))
(id-root ?id reserve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reserve.clp 	reserve3   "  ?id "  bacA )" crlf))
)
;@@@ Added by Anita-7.4.2014
;I decided to reserve my judgement until I knew all the facts.  [Old clp sentence ]
;जब तक मैं सारे तथ्य जान लेता हूँ मैंने मेरा निर्णय बचाकर रखने का फैसला किया  । 
(defrule reserve4
(declare (salience 5100))
(id-root ?id reserve)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacA_kara_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reserve.clp 	reserve4   "  ?id "  bacA_kara_raKa )" crlf))
)
;@@@ Added by Anita-7.4.2014
;These seats are reserved for ladies. [Old clp sentence ]
;ये सीटें महिलाओं के लिए आरक्षित की गई हैं ।
(defrule reserve5
(declare (salience 5200))
(id-root ?id reserve)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 lady)
(kriyA-for_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArakRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reserve.clp 	reserve5   "  ?id "  ArakRiwa_kara )" crlf))
)

;"reserve","VT","1.bacA_raKanA"
;Reserve your strength for the examination days.
;--"2.ArakRiwa_karanA"
;I decided to reserve my judgement until I knew all the facts.
;Reserve a table for two in my name.
;--"3.ArakRiwa_honA"
;These seats are reserved for ladies. 
;
