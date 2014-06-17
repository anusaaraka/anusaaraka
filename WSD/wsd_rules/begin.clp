
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-jan-2014
;It was beginning to snow.[oald]
;बर्फ गिरना शुरु हो रहा था
;It began to snow.
;बर्फ गिरनी शुरु हो गयी
(defrule begin2
(declare (salience 5000))
(id-root ?id begin)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-word ?sub it)
(or (kriyA-to_saMbanXI  ?id ?)(kriyA-kriyArWa_kriyA  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Suru_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  begin.clp  	begin2   "  ?id "  Suru_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-jan-2014
;Work on the new bridge is due to begin in September.[oald]
;नए पुल पर काम सितंबर में शुरू होना बाकी है.
(defrule begin3
(declare (salience 5000))
(id-root ?id begin)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?)
(not(kriyA-object ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Suru_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  begin.clp  	begin3   "  ?id "  Suru_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-jan-2014
;What began as a minor scuffle turned into a full-scale riot.[oald]
;जो एक मामूली हाथापाई के रूप में शुरु हुआ वह एक पूर्ण पैमाने पर दंगे में बदल गया.
(defrule begin4
(declare (salience 5000))
(id-root ?id begin)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-word ?sub what)
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Suru_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  begin.clp  	begin4   "  ?id "  Suru_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-jan-2014
;He began as an actor, before starting to direct films.[oald]
;फिल्मों का निर्देशन करने से पहले उसने एक अभिनेता के रूप में शुरूआत करी थी.
(defrule begin5
(declare (salience 4000))
(id-root ?id begin)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id SuruAwa_karI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  begin.clp  	begin5   "  ?id "  SuruAwa_karI )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-jan-2014
;Each chapter begins with a quotation.[oald]
;प्रत्येक अध्याय एक उद्धरण के साथ शुरू होता है. 
;The path begins at Livingston village.[oald]
;मार्ग लिविंगस्टन गांव में शुरू होता है.
(defrule begin6
(declare (salience 5000))
(id-word ?id begins)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?sub)
(id-word ?sub path|chapter|programme)
(or(kriyA-at_saMbanXI  ?id ?id1)(kriyA-with_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Suru_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  begin.clp  	begin6   "  ?id "  Suru_ho )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-jan-2014
;I found it tiring to begin with but I soon got used to it.[oald]
;शुरुआत में यह मुझे काफी थकाने वाला लगा परन्तु बाद में मुझे इसकी आदत पड़ गयी
;We'll go slowly to begin with.[oald]
;शुरुआत करने के लिये हम धीरे चलेंगे
(defrule begin7
(declare (salience 5000))
(id-word ?id begins)
?mng <-(meaning_to_be_decided ?id)
(to-infinitive  =(- ?id 1) ?id)
(kriyA-kriyArWa_kriyA  ? ?id)
(or(kriyA-with_saMbanXI  ?id ?)(id-last_word =(+ ?id 1) with))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) SuruAwa_karane_ke_liye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " begin.clp	begin7  "  ?id "  " (+ ?id 1) "  SuruAwa_karane_ke_liye )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-jan-2014
;‘Well, to begin with, our room was far too small.’
;'ठीक है, सबसे पहली बात, हमारा  कमरा बहुत अधिक छोटा था.'
(defrule begin8
(declare (salience 4000))
(id-word ?id begins)
?mng <-(meaning_to_be_decided ?id)
(to-infinitive  =(- ?id 1) ?id)
(id-word =(+ ?id 1) with)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) sabse_pahalI_bAwa)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " begin.clp	begin8  "  ?id "  " (+ ?id 1) "  sabse_pahalI_bAwa  )" crlf)
)
)




;*********************************DEFAULT RULES*******************************

(defrule begin0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id begin)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id beginning)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AramBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  begin.clp  	begin0   "  ?id "  AramBa )" crlf))
)

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-jan-2014
;Changed the meaning from 'AramBa_kara' to 'Suru_kara'
;note:deleted rule2 as it was similar to rule1
(defrule begin1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id begin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Suru_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  begin.clp 	begin1   "  ?id "  Suru_kara )" crlf))
)

;default_sense && category=verb	prAramBa_ho	0
;"begin","VI","1.prAramBa_honA"
;The programme begins in the evening.



;"begin","VT","1.prAramBa_karanA"
;They will begin the programme in the evening.
;
;---------------- Removed Rules -------------------------
; begin_verb 	then 	prAramBa_kara   by Garima 


;**************************EXAMPLES***********************************************

;Shall I begin?
;Let's begin at page 9.
;She began by thanking us all for coming.
;We began work on the project in May.
;I began this novel last month and I still haven't finished it.
;He always begins his lessons with a warm-up exercise.
;He began his political career as a student .
;I began to feel dizzy.
;At last the guests began to arrive.
;She began to cry.
;It was beginning to snow.
;It began to rain.
;I was beginning to think you'd never come.
;Everyone began talking at once.
;When will you begin recruiting?
;When does the concert begin?
;Work on the new bridge is due to begin in September.
;The evening began well.
;He began as an actor, before starting to direct films.
;What began as a minor scuffle turned into a full-scale riot.
;Where does Europe end and Asia begin?
;‘I'm thinking of a country in Asia.’
;‘What does it begin with ?’
;Each chapter begins with a quotation.
;The path begins at Livingston village.
;‘Ladies and gentlemen,’ he began, ‘welcome to the Town Hall.’
;The school began in 1920, with only ten pupils.
;He began a new magazine on post-war architecture.
;I can't begin to thank you enough.
;He didn't even begin to understand my problem.
;I found it tiring to begin with but I soon got used to it.
;We'll go slowly to begin with.
;‘What was it you didn't like?’ ‘Well, to begin with, our room was far too small.’
;He must learn the elements of Mathematics, which include a training in Geometry beginning with experimental work.
