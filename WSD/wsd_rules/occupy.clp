
(defrule occupy0
(declare (salience 5000))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id occupied )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vyaswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  occupy.clp  	occupy0   "  ?id "  vyaswa )" crlf))
)

;"occupied","Adj","1.vyaswa"
;He fully occupied himself with hacking computer codes.
;
(defrule occupy1
(declare (salience 4900))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupy.clp 	occupy1   "  ?id "  raha )" crlf))
)

;"occupy","VT","1.rahanA"
;The new flat was occupied immediately.
;--"2.kabjZA karanA"
;The army occupied the enemy's capital.
;--"3.saMBAlanA"
;He occupies a senior position in the firm.
;--"4.jZarUrawa honA"
;The bed occupies a huge space.
;
;

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-1-2014
;The angel spoke, Are you really worthy to occupy this throne? [Gyannidhi]
;देवदूत बोला, क्या आप वास्तव में इस राजसिंहासन पर बैठने के योग्य हैं? 
(defrule occupy2
(declare (salience 5500))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 throne)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupy.clp 	occupy2   "  ?id "  bETanA )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2-1-2014
;His book collection occupies most of the room.  [Cambridge]
;उसका पुस्तक सङ्ग्रह ज्यादातर स्थान घेरता है .
;These questions have continued to occupy her mind. [MW]
;ये प्रश्न उसके मन को लगातार घेरे रहते हैं .  
(defrule occupy3
(declare (salience 5500))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 room|space|mind)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupy.clp 	occupy3   "  ?id "  Gera )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2-1-2014
;The baby seems to occupy all our time.   [Cambridge]
;शिशु हमारा सारा समय लेता है . 
(defrule occupy4
(declare (salience 5500))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 time|memory)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lewA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupy.clp 	occupy4   "  ?id "  lewA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2-1-2014
;The capital has been occupied by the rebel army. [OALD]
;राजधानी विद्रोही सेना के कब्जे में है . 
(defrule occupy5
(declare (salience 5500))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kabje_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupy.clp 	occupy5   "  ?id "  kabje_meM )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2-1-2014
;She occupied herself with routine office tasks. [OALD]
;उसने स्वयं को दफ्तर के रोजमर्रा के कामों में स्वयं व्यस्त कर लिया. 
(defrule occupy6
(declare (salience 5500))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 pronoun)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyaswa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupy.clp 	occupy6   "  ?id "  vyaswa_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2-1-2014
;Their house occupies a beautiful spot next to the ocean. [MW]
;उनका घर महासागर के पास एक सुन्दर जगह पर स्थित है .  
(defrule occupy7
(declare (salience 5500))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 house|home|appartment|shop|building|store|residence)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupy.clp 	occupy7   "  ?id "  sWiwa )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2-1-2014
;Much of our time is occupied by answering questions from our customers. [MW]
;हमारा अधिकतर समय हमारे ग्राहकों के प्रश्नों के उत्तर देने में व्यतीत होता है . 
(defrule occupy8
(declare (salience 5500))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 time)
(kriyA-subject  ?id ?adv)
(viSeRya-of_saMbanXI  ?adv ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyawIwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupy.clp 	occupy8   "  ?id "  vyawIwa_ho )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
;For example the volume occupied by an object is expressed as the product of length breadth and height or three lengths. [ncert]
;उदाहरणार्थ, किसी वस्तु द्वारा घेरा गया आयतन उसकी लम्बाई, चौडाई और ऊँचाई अथवा तीन लम्बाइयों के गुणन द्वारा व्यक्त किया जाता है..
(defrule occupy9
(declare (salience 5600))
(id-root ?id occupy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 volume|area)
(kriyA-subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GerA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupy.clp 	occupy9   "  ?id "  GerA_jA )" crlf))
)

