
(defrule rate0
(declare (salience 5000))
(id-root ?id rate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id rating )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SreNI_narXAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rate.clp  	rate0   "  ?id "  SreNI_narXAraNa )" crlf))
)

;"rating","N","1.SreNI_narXAraNa"
;Government must give to the scientific research a high-priority rating 
;
(defrule rate1
(declare (salience 4900))
(id-root ?id rate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rate.clp 	rate1   "  ?id "  xara )" crlf))
)

;"rate","N","1.xara"
;He is walking at the rate of 5km.an hour.
;--"2.kisI_BI_hAlawa_me"
;I am not prepared to marry her at any rate.  
;--"3.mAwrA"
;If you spend at this rate you will soon be bankrupt.
;--"4.anupAwa"
;His pulse rate dropped suddenly.  
;
(defrule rate2
(declare (salience 4800))
(id-root ?id rate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUlya_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rate.clp 	rate2   "  ?id "  mUlya_lagA )" crlf))
)

;"rate","V","1.mUlya_lagAnA"
(defrule rate3
(declare (salience 4700))
(id-root ?id rate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAva_TaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rate.clp 	rate3   "  ?id "  BAva_TaharA )" crlf))
)

;"rate","VTI","1.BAva_TaharAnA"
;They rated the book quite high. 
;--"2.mUlyAkaMna_karanA"
;They rate him kind && hospitable.  
;--"3.varga_yA_SreNI_me_raKanA"
;He was rated as a broker.
;--"4.nirXAriwa_karanA"
;Those tasks rates low on my priority list.  
;
