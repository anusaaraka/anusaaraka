
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 4-Feb-2014
;She rushed out in alarm.
;वह भय से बाहर भागी
(defrule alarm3
(declare (salience 5000))
(id-root ?id alarm)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ? ?id)
(id-word =(- ?id 1) in)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) Baya_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " alarm.clp  	alarm3  "  ?id "  " (- ?id 1) "  Baya_se )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)4-Feb-2014
;We alarmed the villagers.
;हमने गाँव वालो को सावधान किया
(defrule alarm4
(declare (salience 5000))
(id-word ?id alarmed)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAvaXAna_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  alarm.clp  	alarm4   "  ?id "  sAvaXAna_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " alarm.clp    alarm4   "  ?id " ko )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)4-Feb-2014
;I felt a growing sense of alarm when he did not return that night.[oald]
;मैने खतरे की भावना को महसूस किया जब उस रात वह घर नहीं लौटी 
(defrule alarm5
(declare (salience 5000))
(id-root ?id alarm)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KawarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  alarm.clp  	alarm5  "  ?id "  KawarA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)4-Feb-2014
;The doctor said there was no cause for alarm.[oald]
;डाक्टर ने कहा डरने की कोई बात नहीं है
(defrule alarm6
(declare (salience 5000))
(id-root ?id alarm)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id1 ?id)
(id-word ?id1 cause)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id daranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  alarm.clp  	alarm6  "  ?id "  daranA )" crlf))
)


;*******************DEFAULT RULE****************************************
(defrule alarm0
(declare (salience 5000))
(id-root ?id alarm)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id alarming )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id Bayapraxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  alarm.clp  	alarm0   "  ?id "  Bayapraxa )" crlf))
)

;"alarming","Adj","1.Bayapraxa"
;Last year the onion price increased at an alarming rate.
;
(defrule alarm1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id alarm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BayaBIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alarm.clp 	alarm1   "  ?id "  BayaBIwa )" crlf))
)

(defrule alarm2
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id alarm)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kaware_kA_saMkewa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  alarm.clp 	alarm2   "  ?id "  Kaware_kA_saMkewa )" crlf))
)

;"alarm","N","1.Kaware_kA_saMkewa"
;The news filled me with alarm.
;--"2.saMkata-GaMtI"
;The alarm bell was set off in the bank.
;
;LEVEL 
;
;
;                        alarm   (sUwra va nibanXa) 
;                       -------
;
;`alarm' Sabxa ke viviXa prayoga--
;-------------------------
; 
;"alarm","N","1.Kaware kA saMkewa"
;       ---- < sAvaXAna hone kA saMxeSa < Kaware se sAvaXAna honA 
;                                       < saSaswra honA(kAraNa KawarA)
;The news filled me with alarm.
;--"2.saMkata-GaMtI"
;        ---- < sAvaXAna hone ke saMxeSa kA sAXana < sAvaXAna hone kA saMxeSa 
;                            < Kaware se sAvaXAna honA < saSaswra honA(kAraNa KawarA)
;The alarm bell was set off in the bank.
;
;"alarmed","Adj","1.BayaBIwa"
;       ---- < (Kaware kA(eka) pariNAma) < saSaswra honA(kAraNa KawarA)
;
;I was alarmed by the way the news spread.
;--"2.sawarka"
;       ---- < Kaware se sAvaXAna honA < saSaswra honA(kAraNa KawarA)     
;The neighborhood was alarmed by the increase  in the incidents of 
;house breaking.
;
;--"alarm","V","1.sAvaXAna karanA"
;       ---- < Kaware se sAvaXAna honA < saSaswra honA(kAraNa KawarA)          
;I don't want to alarm you, but there's a strange man in your garden. 
;--"2.hadabadAnA" 
;       ---- < Kaware se sAvaXAna honA < saSaswra honA(kAraNa KawarA)
;
;sUwra : saMkata_sUcaka_Xvani[Akasmika_Baya]
;----------------------------------
; 
;1) Sabxa kA mUla- letina BARA ke `all arms' se .
;
;2) EwihAsikawA- yuxXa Axi ke samaya sannaxXa hone ke lie isakA prayoga . jisakA paxArWa
;                  -`bAhuoM vAle ho jAie' arWAw "`saSaswra ho jAie' (KawarA hE)". 
;
;3) "`saSaswra ho jAie' (KawarA hE)" ke arWa kA sAmAnyIkaraNa -"(Kaware se) sAvaXAna honA"    kyoMki sAvaXAna hone ke lie hI EsA kahA jAwA WA .                                                                                                             4) prayoga howe howe isakA sAmAnyIkaraNa- "(Kaware se) sAvaXAna hone kA sanxeSa" ke rUpa
;   meM . cUMki (Kaware se) sAvaXAna hone kI kriyA kA kAraNarUpa saMkewa `sanxeSa' rUpa
;   meM prApwa .
;
;5) aMgrejI meM kriyArUpa SabxoM kA saMjFArUpa meM va saMjFArUpa SabxoM kA            kriyArUpa meM prayoga sAmAnya hE . yahAM XyAwavya hE ki jaba saMjFArUpa Sabxa 
;   kriyArUpa meM baxalawe hEM waba ve apane mUla SabxArWa se saMbanXa raKawe hue yA nahIM 
;   BI raKawe hue arWa parivarwana karawe hEM . isase yahAM kriyArUpa meM prayukwa SabxoM    kA saMjFArUpa meM Ora saMjFArUpa meM prayukwa SabxoM kA kriyArUpa meM prayoga .
;
;6) jaba koI vyakwi kiFcinmAwra BI sacewa na ho, usakA ,(Kaware se) sAvaXAna 
;   hone ke sanxeSa se hadabadA jAnA sAmAnya hE, awaH isa Sabxa kA
;   `hadabadAne' ke arWa meM prayoga . 
;
;
