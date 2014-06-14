
(defrule decide0
(declare (salience 5000))
(id-root ?id decide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id decided )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id niSciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  decide.clp  	decide0   "  ?id "  niSciwa )" crlf))
)

;"decided","Adj","1.niSciwa"
;He has decided views about that book.
;

;@@@ Added by Pramila(Banasthali University) on 18-11-2013
;They have to decide by next Friday.               ;cald
;उन्हें अगले शुक्रवार तक फैसला लेना होगा .
;The committee decided in favour of the cheapest option.  ;cald
;कमेटी ने सबसे सस्ते विकल्प  को चुनने का फैसला लिया .
;The judge has to decide about the case tommorow.
;न्यायाधीश को कल मुकदमें का फैसला लेना है.
(defrule decide1
(declare (salience 4900))
(id-root ?id decide)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kriyArWa_kriyA  ?id1 ?id)(and(kriyA-in_saMbanXI  ?id ?id1)(id-root ?id1 favour))(kriyA-vAkyakarma  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEsalA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  decide.clp  	decide1   "  ?id "  PEsalA_le )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-11-2013
;He can't decide whether to buy it.    ;cald
;इसे खरीदूँ निर्णय नहीं कर पा रहा हूँ .
(defrule decide2
(declare (salience 5000))
(id-root ?id decide)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id ?id1)
(or(kriyA-anaBihiwa_subject  ?id1 ?id2)(kriyA-vAkya_viBakwi  ?id1 ?id2))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  decide.clp  	decide2   "  ?id "  nirNaya_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-11-2013
;She decided that she would retire to the country.          ;cald
;उसने तय किया कि वह देश वापिस चली जाएगी .
(defrule decide3
(declare (salience 5000))
(id-root ?id decide)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id ?id1)
(id-word =(+ ?id 1) that)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  decide.clp  	decide3   "  ?id "  waya_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-11-2013
;The weather decided the outcome of the cricket match.
;मौसम ने क्रिकेट मैच के बारे मे फैसला दिया .
(defrule decide4
(declare (salience 5000))
(id-root ?id decide)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEsalA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  decide.clp  	decide4   "  ?id "  PEsalA_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 04-01-2014
;To prove his point, the robber-chief decided to climb through the window himself.            ;gyannindhi
;अपनी बात रखने के लिए डाकुओं के मुखिया ने खुद चढ़कर खिड़की में से उतरने का फैसला किया।
(defrule decide5
(declare (salience 4900))
(id-root ?id decide)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEsalA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  decide.clp  	decide5   "  ?id "  PEsalA_kara )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 04-01-2014
;In the end, we decided to go to the theatre.           ;cald
;अंत में हमने थिएटर जाने का तय किया .
(defrule decide6
(declare (salience 5000))
(id-root ?id decide)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(kriyA-to_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  decide.clp  	decide6   "  ?id "  waya_kara )" crlf))
)
;-----------------------default rules-------------------------------------------------------------
(defrule decide7
(declare (salience 3000))
(id-root ?id decide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niScaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  decide.clp 	decide7   "  ?id "  niScaya_kara )" crlf))
)

;"decide","V","1.niScaya karanA"
;He was not able to decide whether he should go for the movie.
;--"2.nirNaya xenA"
;The judge has to decide about the case tommorow.
;--"3.nirNaya waka pahuzcanA"
;The torture at the office finally made her decide to leave the job.
;
;
