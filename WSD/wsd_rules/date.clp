
(defrule date0
(declare (salience 5000))
(id-root ?id date)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id purAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  date.clp  	date0   "  ?id "  purAnA )" crlf))
)

(defrule date1
(declare (salience 4900))
(id-root ?id date)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiWI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  date.clp 	date1   "  ?id "  wiWI )" crlf))
)

(defrule date2
(declare (salience 4800))
(id-root ?id date)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiWi_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  date.clp 	date2   "  ?id "  wiWi_dAla )" crlf))
)

;"date","VT","1.wiWi_dAlanA"
;The package is dated November 24
;Scientists often cannot date precisely archeological or prehistorical findings
;She wrote the letter on Monday but she dated it Saturday so as not to reveal that she procrastinated
;
;LEVEL 
;Headword : date
;
;Examples --
;
;"date","N","1.wiWi"
;What is the date today?
;Aja kyA wiWi hE?
;
;The date of the election is set by the election commission.
;cunAva kI wiWi cunAva samiwi hI nirXAriwa karawI hE.
;
;He tried to memorize all the dates for his history exam.
;usane apanI iwihAsa kI parIkRA ke liye saBI wiWiyoM ko yAxa karane kI koSiSa kI.
;
;They hoped to get together at an early date
;
;--"2.kAla"  
;This seal is of an earlier date.
;yaha mohara Ora pahela kAla kI hE.<---- samaya <--- wArIKa <---wiWi
;
;--"2.deta{ladZakA_ladZakI_kA_sAWa_bAhara_jAnA}" 
;They are going out on a date.
;ve deta para bAhe jA rahe hEM.  <--viSiRta wiWi para viSiRta vyakwi ke sAWa jAnA
;
;--"4.sAWI{deta_para_sAWa_jAnevAlA}"
;His date never stopped talking.
;usakA sAWI cupa hI nahIM ho rahA WA. <--viSiRta wiWi para sAWa jAnevAlA
;
;--"5.KajUra"
;The store sells fresh dates.
;yaha xukAna wAjZe KajUra becawI hE.
;
;"date","VT","1.wiWi_dAlanA"
;The package is dated November 24
;pEketa para 24 navambara kI wiWi dalI hE.
;
;Scientists often cannot date precisely archeological or prehistorical findings
;purAwawvIya yA prAgEwihAsika KojoM ko vEjFAnika aksara acUka wiWi nahIM xe pAwe.
;
;She dated the letter below her signature.
;usane pawra para apane haswAkRaroM ke nIce wiWi dAlI.
;
;
; Upara xiye saBI uxAharaNo se yaha spaRta hE ki 'date' ke xo asambanXa arWa hEM, eka samaya se sambanXiwa 'wiWi' Ora xUsarA 'KajUra'. 'wiWi' saMjFA Ora kriyA xono hI rUpoM meM prayukwa howA hE awaH isakA sUwra nimna ho sakawA hE -
;
;  sUwra : wiWi`/KajUra
