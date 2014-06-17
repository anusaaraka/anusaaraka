
(defrule put0
(declare (salience 5000))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put0  "  ?id "  " ?id1 "  PElA  )" crlf))
)

;They put about that she was married.
;unhoneM PElA xiyA ki usakI SAxI ho gaI
(defrule put1
(declare (salience 4900))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 about)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiSA_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put1  "  ?id "  " ?id1 "  xiSA_baxala  )" crlf))
)

;They put about && went for home.
;unhoneM xiSA baxalI Ora Gara cale gae
(defrule put2
(declare (salience 4800))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 aside)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put2  "  ?id "  " ?id1 "  CodZa_xe  )" crlf))
)

;She put aside her sketch for having her dinner.
;usane apanA nakSA Bojana lena hewu CodZa xiyA
(defrule put3
(declare (salience 4700))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 away)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vApisa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put3  "  ?id "  " ?id1 "  vApisa_raKa  )" crlf))
)

;Did you put my dress back in my cupboard?
;kyA wumane merI poSAka alamArI meM vApisa raKa xI?
(defrule put4
(declare (salience 4600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 vApisa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put4  "  ?id "  " ?id1 "  vApisa_raKa  )" crlf))
)

;Did you put my dress back in my cupboard?
;kyA wumane merI poSAka alamArI meM vApisa raKa xI?
(defrule put5
(declare (salience 4500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 by)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put5  "  ?id "  " ?id1 "  bacA  )" crlf))
)

;She has put by some money for her daughter's marriage.
;usane apanI puwrI kI SAxI hewu kuCa rUpayA bacA kara raKA hE
(defrule put6
(declare (salience 4400))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put6  "  ?id "  " ?id1 "  xabA  )" crlf))
)

;Please put down this issue right now.
;kqpyA isa muxxe ko aBI xabA xo
(defrule put7
(declare (salience 4300))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 in)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nivexana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put7  "  ?id "  " ?id1 "  nivexana_kara  )" crlf))
)

;He's putting in for that grant.
;vaha grAMta ke lie nivexana kara rahA hE
(defrule put8
(declare (salience 4200))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baMxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put8  "  ?id "  " ?id1 "  baMxa_kara  )" crlf))
)

;Please put the fan off.
;kqpyA paMKA baMxa kara xo
(defrule put9
(declare (salience 4100))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put9  "  ?id "  " ?id1 "  baDZA  )" crlf))
)

;He put out his hand to hold her.
;usane apanA hAWa use pakadZane ke lie baDZA xiyA
(defrule put10
(declare (salience 4000))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 together)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put10  "  ?id "  " ?id1 "  jodZa  )" crlf))
)

;The kettle broke,but i managed to put it together again.
;kewalI tUta gaI WI paraMwu mEne use xobArA se jodZa xiyA
(defrule put11
(declare (salience 3900))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 saha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put11  "  ?id "  " ?id1 "  saha  )" crlf))
)

;I cannot put up with all the noise.
;mEM yaha Sora sahana nahIM kara sakawA
(defrule put12
(declare (salience 3800))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 KadZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put12  "  ?id "  " ?id1 "  KadZA_kara  )" crlf))
)

;He is putting up a new building.
;vaha eka naI imArawa KadZI kara rahA hE
(defrule put13
(declare (salience 3700))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put13  "  ?id "  " ?id1 "  baDZA  )" crlf))
)

;Don't put up the price again.
;kImawa ko xobArA mawa baDZAo
(defrule put14
(declare (salience 3600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put14  "  ?id "  " ?id1 "  xe  )" crlf))
)

;He promised to put up the money for charity.
;usane canxe ke lie pEse xene kA vAyaxA kiyA
(defrule put15
(declare (salience 3500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 question)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put15   "  ?id "  pUCa )" crlf))
)

(defrule put16
(declare (salience 3400))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 query)
(kriyA-object ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put16   "  ?id "  pUCa )" crlf))
)



;Added by Meena(4.09.09)
;He took all her letters into the yard and put a match to them . 
(defrule put17
(declare (salience 3400))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 match)
(kriyA-object ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(rule_name-id-wsd_root_mng    put17   "  ?id "  lagA_xe )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;As Albert Einstein put it, The most incomprehensible thing about the Universe is that it is comprehensible. [Gyan nidhi]
;अल्बर्ट आइनस्टीन ने कहा था, ब्रह्मांड की सबसे अबोधगम्य चीज यह है कि यह बोधगम्य है।
(defrule put18
(declare (salience 3300))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 pronoun)
(kriyA-object  ?id ?id1)
(kriyA-subject  ?id ?)
(kriyA-vAkya_viBakwi  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kahA_WA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put18   "  ?id "  kahA_WA )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;The suspension bridges put up in these isolated places are still used, added Grandpa. [Gyannidhi]
;इन एकान्त स्थानों पर बनाए हुए झूलेदार पुल अाज भी उपयोग होते हैं, दादाजी ने कहा.
(defrule put19
(declare (salience 3200))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(viSeRya-kqxanwa_viSeRaNa  ? ?id)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 banAye_hue))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp	put19  "  ?id "  " ?id1 "  banAye_hue )" crlf))
)

;Nobody could stop him from putting that question again && again.
(defrule put20
(declare (salience 3100))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put20   "  ?id "  raKa )" crlf))
)

;"put","V","1.raKanA"
;He put the magazine aside && turned to speak to me.
;--"2.mahawwA xenA"
;our company puts the emphasis on communication skills.
;--"3.vyakwa karanA"
;I put a clear statement on this issue.
;--"4.PeMkanA"
;My leg was fractured while I was putting the shot-put.
;
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 3-1-2014
;The prisoners were put to death. 
;कैदियों को मृत्युदण्ड दिया गया.
(defrule put21
(declare (salience 5500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 death)
(kriyA-to_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mqwyuxaNda_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp  put21  "  ?id "  " ?id1 "  mqwyuxaNda_xe )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 8-1-2014
;To put a scheme into action. [OALD]
;योजना को कार्यान्वित करना
(defrule put22
(declare (salience 5500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put22   "  ?id "  kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 8-1-2014
;I'm tired of him putting me down all the time. [Cambridge]
;मैं हर समय उसके द्वारा मुझे नीचा दिखाने से थक चुका हूँ . 
(defrule put23
(declare (salience 5500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-down_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIcA_xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put23   "  ?id "  nIcA_xiKA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 8-1-2014
;You'd better put your coat on, it's cold outside. [Cambridge]
;आप अपना कोट पहन लीजिये, बाहर ठण्ड है.
(defrule put24
(declare (salience 5500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 on )
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pahana_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp  put24  "  ?id "  " ?id1 "  pahana_le )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 8-1-2014
;Can you put the light on? [Cambridge]
;क्या आप बिजली चालू कर सकते हैं?
(defrule put25
(declare (salience 5600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 light|switch|music)
(id-root ?id1 on )
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cAlU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  put.clp 	put25   "  ?id "  " ?id1 " cAlU_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 9-1-2014
;He's not really upset, he's just putting it on. [Cambridge]
;वह सच में दुखी नहीं है, वह बस दिखावा कर रहा है. 
(defrule put26
(declare (salience 5500))
(id-root ?id put)
(id-word ?id putting)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 on )
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xiKAvA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp  put26  "  ?id "  " ?id1 "  xiKAvA_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 9-1-2014
;Did you put sugar in my coffee? [OALD]
;क्या आपने मेरी कोफी में चीनी डाली है? 
(defrule put27
(declare (salience 5500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put27   "  ?id "  dAla )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 9-1-2014
;Put your hand up if you need more paper. [OALD]
;यदि आपको अौर कागज चाहिये तो अपना हाथ ऊपर उठाइए. 
(defrule put28
(declare (salience 5500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp  put28  "  ?id "  " ?id1 "  uTa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 9-1-2014
;He put his fist through a glass door. [OALD]
;उसने अपनी मुट्ठी शीशे के दरवाजे पर मारी . 
(defrule put29
(declare (salience 5500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-through_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put29   "  ?id "  mAra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 9-1-2014
;It was the year the Americans put a man on the moon. [OALD]
;इस वर्ष में अमरीकियों ने मनुष्य को चाँद पर भेजा था . 
(defrule put30
(declare (salience 5500))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 man|staff|fellow|crew|guy)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BejA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put30   "  ?id "  BejA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 9-1-2014
;I'll put it in my diary. [OALD]
;मैं मेरी डायरी में इसको लिखूँगा . 
;I couldn't read what she had put. [OALD]
;मैं नहीं पढ सका उसने क्या लिखा था . 
(defrule put31
(declare (salience 5600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 diary|paper|notebook|read)
(or(kriyA-in_saMbanXI  ?id ?id1)(kriyA-vAkyakarma  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put31   "  ?id "  liKa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 9-1-2014
;Her new job has put a great strain on her. [OALD]
;उसके नये काम ने उसपर अत्यधिक तनाव डाला है . 
(defrule put32
(declare (salience 5600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 strain|pressure)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put32   "  ?id "  dAla )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 11-1-2014
;Asutosh wanted that he should not be transferred from Calcutta as that would put an end to his research. [Gyannidhi]
;आसुतोष चाहता था कि उसको कलकता से स्थानान्तरित नहीं होना चाहिए क्योंकि वह उसके शोध को रोकेगा . 
(defrule put33
(declare (salience 5600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 end|stop|halt)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp  put33  "  ?id "  " ?id1 "  roka )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 15-1-2014
;If you need somewhere to stay, we can put you up for the night. [Cambridge]
;यदि आपको रहने के लिये किसी जगह की जरूरत है, तो हम आपको रात के लिए रख सकते हैं . 
(defrule put34
(declare (salience 5600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id1 pronoun)
(kriyA-upasarga  ?id ?id2)
(id-root ?id2 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp  put34  "  ?id "  " ?id2 "  raKa )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 15-1-2014
;He is so rude, I don't know how you put up with him. [Cambridge]
;वह इतना अभद्र है, मैं नहीं जानता हूँ कि आपने उसका साथ कैसे निभाया . 
(defrule put35
(declare (salience 5650))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id1 pronoun)
(kriyA-upasarga  ?id ?id2)
(id-root ?id2 up)
(kriyA-with_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 niBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp  put35  "  ?id "  " ?id2 "  niBA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-1-2014
;He finally put his ideas on paper. [OALD]
;अन्ततः उसने अपने विचार कागज पर लिखे . 
(defrule put36
(declare (salience 5600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 paper|notebook|diary)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put36   "  ?id "  liKa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 21-1-2014
;They papered over their disagreements in order to convince the investors to put up the money. [MW]
;उन्होंने अपनी असहमति को छुपाया ताकि निवेशकों को पैसा लगाने के लिये मना सके .
(defrule put37
(declare (salience 5600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2 money|cash|effort)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " put.clp  put37  "  ?id "  " ?id1 "  lagA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 28-1-2014
;He put the finishing touches to his painting. [OALD]
;उसने अपनी कलाकृति को अन्तिम रूप दिया .
(defrule put38
(declare (salience 5600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put38   "  ?id "  xe )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 12-3-2014
;Another way of putting it is that mass comes only in one variety there is no negative mass but charge comes in two varieties: 
;positive and negative charge. [physics ncert]
;इसे कहने का एक और मार्ग है कि द्रव्यमान केवल एक ही प्रकार (ऋणात्मक द्रव्यमान जैसा कुछ नहीं है ) का होता है, जबकि आवेश दो प्रकार के होते हैं: धनावेश तथा ऋणावेश.
(defrule put39
(declare (salience 5600))
(id-root ?id put)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-root ?id1 way)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  put.clp 	put39   "  ?id "  kaha )" crlf))
)
