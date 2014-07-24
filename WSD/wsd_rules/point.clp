
;Added by Meena(25.7.11)
;At this point, the Dow was down about 35 points. 
(defrule point0
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-at_saMbanXI  ?id1 ?id)(kriyA-on_saMbanXI  ?id1 ?id)(kriyA-to_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  point.clp      point0   "  ?id "  samaya )" crlf))
)


;$$$ Modified by Sonam Gupta MTech IT Banasthali 11-3-2014 (modified relation and silence)
;At this point, the Dow was down about 35 points. [verified sentence]
;इस समय पर, डोव ३५ अंकों से पीछे था .
;$$$ Modified by Sonam Gupta MTech IT Banasthali 10-1-2014 (modified meaning from pOintsa to aMka)
;Added by Meena(25.7.11)
;At this point, the Dow was down about 35 points. 
(defrule point1
(declare (salience 5800))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id points)
(viSeRya-saMKyA_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  point.clp      point1   "  ?id "  aMka )" crlf))
)
 


;Added by Meena(6.5.11)
;Each exercise focuses on a different grammar point.
(defrule point2
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) grammar)
(samAsa ?id =(- ?id 1)) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muxxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  point.clp      point2   "  ?id "  muxxA )" crlf))
)



(defrule point3
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pointing )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id tIpatApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  point.clp  	point3   "  ?id "  tIpatApa )" crlf))
)

;"pointing","N","1.tIpatApa/tipakArI"
;The pointing used in the castle is of good quality
;
;
(defrule point4
(declare (salience 4900))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp	point4  "  ?id "  " ?id1 "  xiKA  )" crlf))
)

;He pointed out his car to the watchman.
;usane apanI kAra cOkIxAra ko xiKAI
(defrule point5
(declare (salience 4800))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XyAna_AkarRiwa_kara))
(assert (kriyA_id-object_viBakwi ?id kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp	point5  "  ?id "  " ?id1 "  XyAna_AkarRiwa_kara  )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  point.clp     point5   "  ?id "  kI_ora )" crlf)
)

;Added by Sheetal(02-08-10)
;(defrule point6
;(declare (salience 4950))
;(id-root ?id point)
;?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 out)
;(kriyA-upasarga ?id ?id1)
;(kriyA-object  ?id ?obj)
;(id-word ?obj that)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XyAna xilA))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp	point6  "  ?id "  " ?id1 "  XyAna xilA  )" crlf))
;)

;$$$ Modified by Sonam Gupta MTech IT Banasthali 12-3-2014 (increased silence)
;particle_out_- && category=verb	nirxeSa_kara	100
;PP_null_out && category=verb	nirxeSa_kara	100
;Added by Human
(defrule point7
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 pointed)
(id-word ?id1 teeth)
(viSeRya-viSeRaNa ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nukIle))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point7   "  ?id "  nukIle )" crlf))
)

(defrule point8
(declare (salience 4500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id pointed)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nukIlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point8   "  ?id "  nukIlA )" crlf))
)

;"pointed","Adj","1.nukIlA"
;This pencil has pointed edges on both sides
;--"2.suspaRta"
;He gave a pointed talk on the issue.
;
;
(defrule point9
(declare (salience 4400))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSArA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point9   "  ?id "  iSArA_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;The road sign points left. [Cambridge]
;सड़क दायी तरफ की ओर इशारा करती है .
(defrule point10
(declare (salience 4400))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(and(kriyA-subject  ? ?id)(viSeRya-det_viSeRaNa  ?id ?)(samAsa  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSArA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point10   "  ?id "  iSArA_kara )" crlf))
)

;$$$ Modified by Sonam Gupta MTech IT Banasthali 12-3-2014 (increased silence)
;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Pruning keeps the plants bushy, so that there are more branches and thus more plucking points.  [Gyannidhi]
;छंटाई से ये पौधे झाड़ी ही बने रहते हैं और इससे इसकी शाखाएं भी अधिक होती हैं और इससे पत्तियां भी काफी मात्रा में तोड़ी जाती हैं।
(defrule point11
(declare (salience 5300))
(id-word ?id points)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(and(viSeRya-viSeRaNa  ?id ?)(kriyA-aBihiwa  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point11   "  ?id "  mAwrA
 )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-1-2014
;To prove his point, the robber-chief decided to climb through the window himself.
;अपनी बात सिद्ध करने के लिए डाकुअों के सरदार ने खुद चढ़कर खिड़की में से उतरने का फैसला किया।
(defrule point12
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 prove)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point12   "  ?id "  bAwa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 10-1-2014
;Could I make a point about noise levels? [Cambridge]
;क्या मैं शोर के स्तर के बारे में राय दे सकता हूँ?
(defrule point13
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 make)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rAya_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp  point13  "  ?id "  " ?id1 "  rAya_xe )" crlf))
)


;$$$ Modified by Sonam Gupta MTech IT Banasthali 12-3-2014 (added important to ?id1)
;@@@ Added by Sonam Gupta MTech IT Banasthali 10-1-2014
;He explained his point by drawing a diagram.  [Cambridge]
;उसने अपनी बात एक चित्र बनाकर समझाई.
(defrule point14
(declare (salience 5200))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-object  ?id1 ?id)(viSeRya-viSeRaNa  ?id ?id1))
(id-root ?id1 explain|describe|elucidate|illustrate|argue|important)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point14   "  ?id "  bAwa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-1-2014
;I take your point about cycling, but I still prefer to walk. [Cambridge]
;मैं साइक्लिंग के बारे में आपके बात मानता हूँ, परन्तु मैं फिर भी चलना पसन्द करूँगा.
(defrule point15
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 take)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwa_mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp  point15  "  ?id "  " ?id1 "  bAwa_mAna )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-1-2014
;She's always complaining that the office is cold. Well, she's got a point. [Cambridge]
;वह हमेशा शिकायत करती है दफ्तर ठण्डा है. खैर, उसकी बात में दम है.
(defrule point16
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 get)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwa_meM_xama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp  point16  "  ?id "  " ?id1 "  bAwa_meM_xama )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 10-1-2014
;I thought he was never going to get to the point.  [Cambridge]
;मुझे लगा कि वो कभी भी मुद्दे पर नहीं आएगा.
(defrule point17
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muxxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point17   "  ?id "  muxxA )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 10-1-2014
;The point of a pencil. [OALD]
;पेन्सिल की नोक.
;The point of a knife. [OALD]
;चाकू की नोक.
;The point of a pin. [OALD]
;आलपिन की नोक.
(defrule point18
(declare (salience 5500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 pencil|pen|knife|pin|needle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id noka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point18   "  ?id "  noka )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 10-1-2014
;What's the point of studying if you can't get a job afterwards?  [Cambridge]
;अध्ययन करने का मतलब क्या है यदि आप बाद में नौकरी प्राप्त नहीं कर सकते हैं? 
(defrule point19
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ?id ?)(viSeRya-kqxanwa_viSeRaNa  ?id ?)(viSeRya-in_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mawalaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point19   "  ?id "  mawalaba )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 10-1-2014
;The fact that he doesn't want to come is beside the point - he should have been invited. [Cambridge]
;यह तथ्य कि वह आना नहीं चाहता है जरूरी नहीं है- उसको आमन्त्रित करना चाहिये था . 
(defrule point20
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-beside_saMbanXI  ? ?id)
(id-root ?id1 beside)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jarUrI_nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp  point20  "  ?id "  " ?id1 "  jarUrI_nahIM )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 10-1-2014
;What he says is true up to a point. [Cambridge]
;वह जो कहता है एक सीमा तक सत्य है .  
(defrule point21
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-to_saMbanXI  ?id1 ?id)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sImA_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp  point21  "  ?id "  " ?id1 "  sImA_waka )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 10-1-2014
;I know she's bossy, but she has lots of good points too.  [Cambridge]
;मैं जानता हूँ वह धौंस देने वाली है , परन्तु उसकी बहुत सारी अच्छी आदते भी हैं .
(defrule point22
(declare (salience 5000))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Axawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point22   "  ?id "  Axawa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 11-1-2014
;Chemistry never was my strong point.  [Cambridge]
;रसायन-शास्त्र मेरा मजबूत पक्ष कभी नहीं था . 
(defrule point23
(declare (salience 5500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 strong|weak|plus)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point23   "  ?id "  pakRa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 11-1-2014
;She made several interesting points in the article. [OALD]
;उसने लेख में कई रोचक बिन्दू दिए . 
(defrule point24
(declare (salience 5500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 interesting|remarkable|motivating|main|critical|key|crucial)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point24   "  ?id "  binxU )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 11-1-2014
;That's the whole point. [OALD]
;पूरा सार यही है . 
(defrule point25
(declare (salience 5500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 whole|complete|entire)
(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point25   "  ?id "  sAra )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 11-1-2014
;Many people suffer from mental illness at some point in their lives. [OALD]
;कई लोग अपने जीवन के कुछ क्षणों में मानसिक बीमारी से ग्रस्त होते हैं  . 
(defrule point26
(declare (salience 5400))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-at_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point26   "  ?id "  kRaNa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 11-1-2014
;I'll wait for you at the meeting point in the arrivals hall. [OALD]
;मैं आगन्तुक हाल में सभा की जगह पर आपकी प्रतीक्षा करूँगा. 
(defrule point27
(declare (salience 5500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-beyond_saMbanXI  ? ?id)(and(kriyA-at_saMbanXI  ? ?id)(samAsa  ?id ?)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point27   "  ?id "  jagaha )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 11-1-2014
;To win a point. [OALD]
;एक अंक जीतना . 
(defrule point28
(declare (salience 5500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 win|lose|gain|decrease|increase)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point28   "  ?id "  aMka )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 11-1-2014
;The stars were points of light in the sky. [OALD]
;आसमान में तारे प्रकाश के बिन्दू थे . 
(defrule point29
(declare (salience 5600))
(id-root ?id point)
(id-word ?id points)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp 	point29   "  ?id "  binxU )" crlf))
)

;Added by Shirisha Manju (24-08-13) Suggested by Chaitanya Sir
;Because light could travel through vacuum and it was felt that a wave would always require a medium to propagate from one point to the other.
(defrule point_default_rule
(declare (salience 300))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biMxu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp     point_default_rule   "  ?id "  biMxu )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-2-2014
;I am bound to say I disagree with you on this point.
;मुझे कहना ही पङेगा कि मैं आपकी इस बात से असहमत हूँ .
(defrule point30
(declare (salience 5300))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ?verb ?)
(kriyA-on_saMbanXI  ?verb ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp     point30   "  ?id "  bAwa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-2-2014
;I see your point, but I don't think everyone will agree. [M-W]
;मैं आपकी बात समझता हूँ, परन्तु मुझे नहीं लगता कि हर कोई सहमत होगा .
(defrule point31
(declare (salience 5300))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 see|stretch)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp     point31   "  ?id "  bAwa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-2-2014
;Let me make one final point.  [M-W]
;मुझे एक आखिरी बात रखने दीजिये .
(defrule point32
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 make)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp  point32  "  ?id "  " ?id1 "  bAwa_raKa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-2-2014
;My point is simply that we must do something to help the homeless. [M-W]
;मेरा विचार सिर्फ इतना है कि हमें बेघरों के लिये कुछ करना चाहिये .
(defrule point33
(declare (salience 5300))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-RaRTI_viSeRaNa  ?id ?)(subject-subject_samAnAXikaraNa  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp     point33   "  ?id "  vicAra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-2-2014
;Maybe there's a better way to get your point across.  [M-W]
;सम्भवतः आपकी बात समझने के लिये कोई बेहतर तरीका हो .
(defrule point34
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
(kriyA-object  ?id1 ?id)
(id-root ?id1 get)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwa_samaJanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp  point34  "  ?id "  " ?id1 "  bAwa_samaJanA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-2-2014
;I don't want to labor the point, but I think I should mention again that we are running out of time.  [M-W]
;मैं इस बात को दोहराना नहीं चाहता, परन्तु मैं सोचता हूँ कि मुझे फिर से बताना चाहिये कि हमारे पास समय कम है .
(defrule point35
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 labor|belabor)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwa_xoharAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp  point35  "  ?id "  " ?id1 "  bAwa_xoharAnA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-2-2014
;It took several paragraphs for her to come to the point of her argument.   [M-W]
;उसे अपने मुद्दे पर आने के लिये कई अनुच्छेद लग गये .
(defrule point36
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ?id1 ?id)
(id-root ?id1 come|get)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 muxxe_para_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp  point36  "  ?id "  " ?id1 "  muxxe_para_A)" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-2-2014
;If you drive while drunk, you could lose your license, but even more to the point, you could kill someone.   [M-W]
;यदि आप पीकर ड्राईविंग करते हैं, आप अपना लाइसेन्स खो सकते हैं, परन्तु इससे भी जरूरी, आप किसी की जान ले सकते हैं .
(defrule point37
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-to_saMbanXI  ?id1 ?id)
(id-root ?id1 more)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 isase_BI_jarUrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " point.clp  point37  "  ?id "  " ?id1 "  isase_BI_jarUrI )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-2-2014
;We met at a point halfway between the two cities.   [M-W]
;हम दो शहरों के बीच की जगह पर मिले .
;Ellis Island in Manhattan was the point of entry of many American immigrants.   [M-W]
;मैनहैट्टन में एलिस आईलैण्ड अमरीकी शरणार्थियों के लिये प्रवेश की जगह था .
(defrule point38
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-at_saMbanXI  ?id1 ?id)(viSeRya-of_saMbanXI  ?id ?id1))
(id-root ?id1 meet|go|contact|join|cross|assemble|reunite|entry|admission|access|opening|entrance|submission|admittance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp     point38   "  ?id "  jagaha )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-2-2014
;We walked all day and were beyond the point of exhaustion.   [M-W]
;हम पूरे दिन चले और सीमा से परे थक गए .
(defrule point39
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-beyond_saMbanXI  ? ?id)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp     point39   "  ?id "  sImA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;He beat his opponent on points.  [M-W]
;उसने अपने प्रतिद्वन्दियों को अंकों से हराया .
(defrule point40
(declare (salience 5600))
(id-root ?id point)
(id-word ?id points)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-on_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp     point40   "  ?id "  aMka )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;She sharpened the pencil down to a point.   [M-W]
;उसने पेन्सिल को एक नोक तक पैना किय् .
(defrule point41
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ?id1 ?id)
(id-root ?id1 sharpen|sharp|taper)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id noka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp     point41   "  ?id "  noka )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;A line drawn between two points.   [M-W]
;दो बिन्दुओं के बीच में खींची हुई रेखा .
(defrule point42
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-between_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp     point42   "  ?id "  binxU )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;He had a temperature of one hundred and four point two.  [M-W]
;उसे एक सौ चार दशमलब दो का तापमान था .
(defrule point43
(declare (salience 5700))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-saMKyA_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xaSamalaba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  point.clp     point43   "  ?id "  xaSamalaba )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;I understand his feelings up to a point.   [M-W]
;मैं एक हद तक उसकी भावनाएँ समझता हूँ  .
(defrule point44
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-upasarga  ?verb ?id1)
(kriyA-to_saMbanXI  ?verb ?id)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haxa_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " point.clp  point44  "  ?id "   haxa_waka )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 12-3-2014
;When you hold a pencil in front of you against some specific point on the background a wall and look at the pencil 
;first through your left eye A closing the right eye and then look at the pencil through your right eye B closing the 
;left eye you would notice that the position of the pencil seems to change with respect to the point on the wall.  [physics ncert]
;जब आप किसी पेंसिल को अपने सामने पकडते हैं और पृष्ठभूमि (माना दीवार) के किसी विशिष्ट बिन्दु के सापेक्ष पेंसिल को पहले अपनी बायीं आँख A से (दायीं आँख बन्द रखते हुए) देखते हैं, 
;और फिर दायीं आँख B से (बायीं आँख बन्द रखते हुए), तो आप पाते हैं, कि दीवार के उस बिन्दु के सापेक्ष पेंसिल की स्थिति परिवर्तित होती प्रतीत होती है.
(defrule point45
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 specific|particular|opposite)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " point.clp  point45  "  ?id "   binxU )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 12-3-2014
;When you hold a pencil in front of you against some specific point on the background a wall and look at the pencil 
;first through your left eye A closing the right eye and then look at the pencil through your right eye B closing the 
;left eye you would notice that the position of the pencil seems to change with respect to the point on the wall.  [physics ncert]
;जब आप किसी पेंसिल को अपने सामने पकडते हैं और पृष्ठभूमि (माना दीवार) के किसी विशिष्ट बिन्दु के सापेक्ष पेंसिल को पहले अपनी बायीं आँख A से (दायीं आँख बन्द रखते हुए) देखते हैं, 
;और फिर दायीं आँख B से (बायीं आँख बन्द रखते हुए), तो आप पाते हैं, कि दीवार के उस बिन्दु के सापेक्ष पेंसिल की स्थिति परिवर्तित होती प्रतीत होती है.
(defrule point46
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " point.clp  point46  "  ?id "   binxU )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 12-3-2014
;The distance between the two points of observation is called the basis. [physics ncert]
;जब आप किसी पेंसिल को अपने सामने पकडते हैं और पृष्ठभूमि (माना दीवार) के किसी विशिष्ट बिन्दु के सापेक्ष पेंसिल को पहले अपनी बायीं आँख A से (दायीं आँख बन्द रखते हुए) देखते हैं, 
;और फिर दायीं आँख B से (बायीं आँख बन्द रखते हुए), तो आप पाते हैं, कि दीवार के उस बिन्दु के सापेक्ष पेंसिल की स्थिति परिवर्तित होती प्रतीत होती है.
(defrule point47
(declare (salience 5900))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-between_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " point.clp  point47  "  ?id "   binxU )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;From B or the point of the maximum height the ball falls freely under the acceleration due to gravity. [physics ncert]
;इस समय में गेन्द बिन्दु A से B पर पहुञ्चती है .
(defrule point48
(declare (salience 5900))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?noun ?)
(viSeRya-of_saMbanXI  ?id ?noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " point.clp  point48  "  ?id "   binxU )" crlf))
)

;default_sense && category=verb	iSArA kara	0
;"point","V","1.iSArA karanA"
;He pointed towards the broken window
;--"2.niSAnA bAzXanA/lakRya karanA"
;He pointed the gun at the lion
;--"3.kI ora honA"
;A rose plant's spines point upward
;--"4.mahawwva xenA"
;This story points the duties && rights of the person
;--"5.tIpa karanA"
;He points the broken wall
;
;



;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_point23
(declare (salience 5500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 strong|weak|plus)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " point.clp   sub_samA_point23   "   ?id " pakRa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_point23
(declare (salience 5500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 strong|weak|plus)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " point.clp   obj_samA_point23   "   ?id " pakRa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_point24
(declare (salience 5500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 interesting|remarkable|motivating|main|critical|key|crucial)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " point.clp   sub_samA_point24   "   ?id " binxU )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_point24
(declare (salience 5500))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 interesting|remarkable|motivating|main|critical|key|crucial)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " point.clp   obj_samA_point24   "   ?id " binxU )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_point35
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 labor|belabor)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwa_xoharAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " point.clp   sub_samA_point35   "   ?id " " ?id1 " bAwa_xoharAnA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_point35
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 labor|belabor)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bAwa_xoharAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " point.clp   obj_samA_point35   "   ?id " " ?id1 " bAwa_xoharAnA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_point45
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 specific|particular|opposite)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " point.clp   sub_samA_point45   "   ?id " binxU )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_point45
(declare (salience 5600))
(id-root ?id point)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 specific|particular|opposite)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " point.clp   obj_samA_point45   "   ?id " binxU )" crlf))
)
