(defrule hold0
(declare (salience 5000))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id holding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aXisaMpawwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  hold.clp  	hold0   "  ?id "  aXisaMpawwi )" crlf))
)

;"holding","N","1.aXisaMpawwi"
;nyAyAXISa ne'holding'(KewIbAdZI)kA AXA hissA usake BAI ko xene kA PEsalA xiyA.
;
;

;$$$ Modified by Prachi Rathore[03-12-13]
;Meaning changed from bawAne_se_iMkAra_kara_xe to roka_le  and added object_viBakwi 'ko'
(defrule hold1
(declare (salience 4900))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka_le))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold1  "  ?id "  " ?id1 "  roka_le  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  hold.clp     hold1   "  ?id "  ko )" crlf))
)

;She wanted to tell all the things to her father but her mother held her back.
;vaha apane piwA ko saba kuCa bawA xenA cAhawI WI lekina usakI mAz ne bawAne se iMkAra kara xiyA
(defrule hold2
(declare (salience 4800))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 bane_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold2  "  ?id "  " ?id1 "  bane_raha  )" crlf))
)

;He's unable to hold down in this job.
;vaha isa nOkarI meM bane rahane ke lie asamarWa hE
(defrule hold3
(declare (salience 4700))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 forth)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAPI_samaya_waka_lagAwAra_bolawe_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold3  "  ?id "  " ?id1 "  kAPI_samaya_waka_lagAwAra_bolawe_raha  )" crlf))
)

;I sat quietly in a corner while he held forth.
;mEM cupacApa kone meM bETA rahA Ora vaha kAPI samaya waka lagAwAra bolawA rahA
(defrule hold4
(declare (salience 4600))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold4  "  ?id "  " ?id1 "  ruka  )" crlf))
)

;Hold on! i am not ready.
;ruko! aBI mEM wEyAra nahIM hUz
(defrule hold5
(declare (salience 4500))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold5  "  ?id "  " ?id1 "  CipA  )" crlf))
)

;I don't know why he is holding out on us everything like this.
;mEM nahIM jAnawA ki vo hamase saba kuCa isa waraha kyoM CipA rahA hE
(defrule hold6
(declare (salience 4400))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 with)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 samarWana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold6  "  ?id "  " ?id1 "  samarWana_kara  )" crlf))
)

;He doesn't hold with smoking.
;vaha XUmrapAna kA samarWana kaBI nahIM karawA
(defrule hold7
(declare (salience 4300))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id1  hand)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 upara_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold7  "  ?id "  " ?id1 "  upara_uTA  )" crlf))
)

(defrule hold8
(declare (salience 4200))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sazBAla));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " hold.clp hold8 " ?id "  sazBAla )" crlf)) 
)

(defrule hold9
(declare (salience 4100))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sazBAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold9  "  ?id "  " ?id1 "  sazBAla  )" crlf))
)

;Added by human beings
(defrule hold10
(declare (salience 4000))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 open)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold10   "  ?id "  raKa )" crlf))
)

;@@@ Added by Prachi Rathore[03-12-13]
;In the case of the contracting cloud, the gravity was not sufficient to hold back the gaseous material, which therefore tended to fly away from the axis of rotation.
;सिकुड़ते हुए बादल के मामले में गुरुत्व इतना नहीं था कि गैसीय पदार्थ को रोक सकता।
(defrule hold11
(declare (salience 5000))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa  ? ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka_sakane_meM))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold11  "  ?id "  " ?id1 "  roka_sakane_meM  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  hold.clp     hold11   "  ?id "  ko )" crlf))
)

;@@@ Added by Prachi Rathore[03-12-13]
;I wanted to tell him the truth, but something held me back. [OALD]
;मैंने  उसको सच्चाई बताना  चाही, परन्तु किसी ने मुझे रोक लिया .
(defrule hold12
(declare (salience 5000))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?id2)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-root ?id2 back)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 roka_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold12  "  ?id "  " ?id2 "  roka_le  )" crlf))
)

;@@@ Added by Prachi Rathore[03-12-13]
;I think he's holding something back.[OALD]
;मैं सोचता हूँ कि वह कुछ छिपा रहा है . 
(defrule hold13
(declare (salience 4900))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id ?id2)
(id-cat_coarse ?id verb)
(id-root ?id2 back)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold13  "  ?id "  " ?id2 "  CipA )" crlf))
)

;@@@   ---Added by Prachi Rathore
; The King held a council at Nottingham from 14 to 19 October 1330.
;राजा ने अक्तूबर 1330 14 से 19 से नोट्टिंगम में परिषद रखा . 
(defrule hold14
(declare (salience 4900))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 council)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold14   "  ?id "  raKa )" crlf))
)

;@@@   ---Added by Prachi Rathore
;Hold that pose, It will make a great photograph.[m-w]
; ;वह मुद्रा बनाये रखिए, यह एक बढिया फोटो बनाएगा . 
(defrule hold15
(declare (salience 4000))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 pose)
(kriyA-vAkyakarma ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banAye_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold15   "  ?id "  banAye_raKa )" crlf))
)

;@@@ Added by Prachi Rathore[16-1-14]
;I held the mouse by its tail.[oald]
;मैंने चूहे को उसकी पूँछ से पकडा . 
(defrule hold16
(declare (salience 4000))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakada))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold16   "  ?id "  pakada )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  hold.clp    hold16   "  ?id "  ko )" crlf))
)

;@@@ Added by Prachi Rathore[16-1-14]
;He has held the post for three years.[cambridge]
;उसने तीन वर्षों से पद संभाल रखा है . 
(defrule hold17
(declare (salience 4500))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 post)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBAla_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold17   "  ?id "  saMBAla_raKa )" crlf))
)

;@@@ Added by Prachi Rathore[16-1-14]
;The girl held her father's hand tightly.[oald]
;लडकी ने उसके पिता का हाथ कसकर पकडा . 
(defrule hold18
(declare (salience 3000))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold18   "  ?id "  pakada )" crlf)
)
)

;@@@ Added by Prachi Rathore[16-1-14]
;He was holding the baby in his arms.[oald]
;वह उसकी बाहों में शिशु को उठाये हुए है . 
(defrule hold19
(declare (salience 4500))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 baby)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold19   "  ?id "  uTA)" crlf)
)
)

;@@@ Added by Prachi Rathore[20-1-14]
;These nuts and bolts hold the wheels on.
;ये नट और बोल्ट पहिये को रोकते हैं . 
(defrule hold20
(declare (salience 4600))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 on)
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold20  "  ?id "  " ?id1 "  roka  )" crlf))
)


;@@@ Added by Prachi Rathore[21-2-14]
;Peace talks were held to try to heal the growing rift between the two sides.[cambridge]
;अमन वर्ता दोनों तरफ के बीच बढती हुई दरार मिटाने का प्रयास करने के लिये आयोजित की गयी थी . 
;A press conference is being held as we speak. [coca]
(defrule hold21
(declare (salience 4600))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 talk|conference)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ayojiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold21   "  ?id "  Ayojiwa_kara)" crlf)
)
)

;@@@ Added by Prachi Rathore[21-2-14]
;Pujols said during a news conference held at a nearby luxury hotel.[coca]
;पुजोलस् ने कहा एक पास वाले समृद्धि होटल में आयोजित एक समाचार सम्मेलन के दौरान
(defrule hold22
(declare (salience 4600))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(saMjFA-to_kqxanwa  ?id1 ?id)
(id-root ?id1 talk|conference)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ayojiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold22   "  ?id "  Ayojiwa)" crlf)
)
)

;@@@ Added by Prachi Rathore[21-2-14]
;Can you hold your own against him ?   ;shiksharthi
;क्या तुम उसका डटकर सामना कर सकते हो ?
(defrule hold23
(declare (salience 4600))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 own)
(kriyA-against_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold23   "  ?id "  sAmanA_kara )" crlf))
)

;@@@ Added by Prachi Rathore[21-2-14]
;He still holds his own.   ;shiksharthi
;वह अभी भी अपने आपे में है.
(defrule hold24
(declare (salience 4500))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 own)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hold.clp 	hold24   "  ?id "  - )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  hold.clp    hold24   "  ?id "  meM )" crlf))
)

;@@@ Added by Prachi Rathore[27-3-14]
;We could get a new computer now or hold off until prices are lower. [oald]
;हम अब एक नया सङ्गणक ले सकते हैं या  मूल्य कम होने तक रुक सकते है. 
(defrule hold25
(declare (salience 4500))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ruka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold25  "  ?id "  " ?id1 "  ruka  )" crlf))
)


;@@@ Added by Prachi Rathore[27-3-14]
 ; An accident is holding up traffic.[oald]
; एक दुर्घटना यातायात रोक रही है .
(defrule hold26
(declare (salience 4500))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id2)
(id-root ?id2 accident|application)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold26  "  ?id "  " ?id1 "  roka  )" crlf))
)


;@@@ Added by Prachi Rathore[27-3-14]
;She's always holding up her children as models of good behaviour. [oald]
;वह हमेशा उसके बच्चों को सद्व्यवहार के नमूने (माडेल) की तरह   प्रस्तुत करती रहती है . 
(defrule hold27
(declare (salience 4500))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold27  "  ?id "  " ?id1 "  praswuwa_kara )" crlf))
)


;@@@ Added by Prachi Rathore[27-3-14]
 ;Masked men held up a security van in South London yesterday.[oald]
;नकाबधारी आदमियों ने कल दक्षिण लन्दन में एक सुरक्षा वैन लुटी . 
(defrule hold28
(declare (salience 4500))
(id-root ?id hold)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 van)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 luta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hold.clp	hold28  "  ?id "  " ?id1 "  luta )" crlf))
)

