;@@@ Modified by Sonam Gupta MTech IT Banasthali 20-1-2014 ; added 'viSeRya-of_saMbanXI' relation
;In recommending his appointment to the Viceroy, H.H. Risley, Home Secretary to the Government of India, wrote : 
;I have no hesitation in saying that the Hon'ble Mr. Justice Mookerjee is marked out by his scientific attainments, 
;his long connection with the University and the work he has done for it and by his official position as conspicuously  
;qualified for the post of Vice-Chancellor. [gyannidhi]
;वाइसराय को उनकी नियुक्ति के लिए सिफारिश करते हुए भारत सरकार के गृह सचिव एच॰ एच॰ रिस्ले ने लिखा, मुझे यह कहने में ज़रा भी हिचकिचाहट नहीं है 
;कि माननीय न्यायमूर्ति श्री मुकर्जी अपनी वैज्ञानिक उपलब्धियों, विश्वविद्यालय के साथ पुराने सम्बन्धों और उसके सिल उनके द्वारा किये गये कार्यों और अपने 
;राजकीय पद के कारण कुलपति के पद के लिए स्पष्ट रूप से योग्य सिद्ध होते हैं।
;Added by Meena(27.5.11)
;Applicants for posts are called for interview. 
(defrule post00
(declare (salience 5000))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-for_saMbanXI  ?id1 ?id)(viSeRya-of_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp      post00   "  ?id "  paxa )" crlf))
)


;Salience reduced by Meena(27.5.11)
(defrule post0
(declare (salience 0))
;(declare (salience 5000))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaMbA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post0   "  ?id "  KaMbA )" crlf))
)

;"post","N","1.KaMbA"
;Tie the tennis net to the post.
;--"2.sWAna"
;The soldiers are at their posts.
;--"3.paxa"
;She is trying for the post of typist.
;--"4.dAka"
;There was post for you this morning.
;
(defrule post1
(declare (salience 4900))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 letter)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAka_se_Beja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post1   "  ?id "  dAka_se_Beja )" crlf))
)

(defrule post2
(declare (salience 4800))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cipakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post2   "  ?id "  cipakA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-1-2014
;Your letter is in the post.  [Cambridge]
;आपका पत्र डाक में है . 
(defrule post3
(declare (salience 5500))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-in_saMbanXI  ? ?id)(viSeRya-of_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post3   "  ?id "  dAka )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-1-2014
;Did I get any post today? [Cambridge]
;क्या मैंने आज कोई डाक प्राप्त की? 
(defrule post4
(declare (salience 5500))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-subject  ?id1 ?id)(kriyA-object  ?id1 ?id))
(id-root ?id1 arrive|come|delay|get|receive|open)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post4   "  ?id "  dAka )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 15-1-2014
;A part-time post.      [Cambridge]
;एक अंशकालिक पद . 
(defrule post5
(declare (salience 5500))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post5   "  ?id "  paxa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-1-2014
;I posted a query about arthritis treatment.     [Cambridge]
;मैंने गठिया रोग इलाज के बारे में प्रश्न भेजा . 
(defrule post6
(declare (salience 5500))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 query|question|answer|complaint|information)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BejA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post6   "  ?id "  BejA )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 15-1-2014
;Keep me posted on anything that happens while I'm away.    [Cambridge]
;मेरे दूर होने पर जो भी होता है  उसका ब्यौरा दे . 
(defrule post7
(declare (salience 5500))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id1 ?id)
(id-root ?id1 keep)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 byOrA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " post.clp  post7  "  ?id "  " ?id1 "  byOrA_xe )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 15-1-2014
;To take up a post.   [Cambridge]
;पद लेना .
(defrule post8
(declare (salience 5500))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id1 ?id)
(id-root ?id1 take)
(kriyA-upasarga  ?id1 ?id2)
(id-root ?id2 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 paxa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " post.clp  post8  "  ?id "  " ?id1 "  paxa_le )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-1-2014
;To resign a post.  [Cambridge]
;पद त्याग देना . 
(defrule post9
(declare (salience 5500))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 resign|join|fill|hold)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post10   "  ?id "  paxa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-1-2014
;The guards were ordered not to leave their posts.  [OALD]
;पहरेदारों को उनकी चौकियों को नहीं छोडे जाने का आदेश था . 
(defrule post10
(declare (salience 5500))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 leave|join)
(kriyA-subject  ?id1 ?id2)
(id-root ?id2 guard|soldier|police|army)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post10   "  ?id "  cOkI )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-1-2014
;I love reading her posts because I learn so much.  [OALD]
;मैं उसका लेख पढना पसन्द करता हूँ क्योँकि मैं इससे सीखता हूँ . 
(defrule post11
(declare (salience 5500))
(id-root ?id post)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 read|write|study)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id leKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  post.clp 	post11   "  ?id "  leKa )" crlf))
)


;"post","V","1.cipakAnA"
;The results of the exam were posted on the notice board.
;--"2.niyukwa_karanA"
;After several years in Hyderabad he was posted to Delhi.
;--"3.dAka_meM_dAlanA"
;Could you post this leter for me?
;--"4.dAka_se_BejanA"
;They will post me the cheque as soon as they recieve my bill.
;
