(defrule hit0
(declare (salience 5000))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 back)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hit.clp	hit0  "  ?id "  " ?id1 "  AlocanA_kara  )" crlf))
)

;He always hit back at those who oppose him.
;vaha hameSAM unakI AlocanA karawA hE jo usakA viroXa karawe hEM
(defrule hit1
(declare (salience 4900))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mila_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hit.clp	hit1  "  ?id "  " ?id1 "  mila_jA  )" crlf))
)

;We've hit on the solution at last.
;AKirakAra hameM hala mila gayA hE
(defrule hit2
(declare (salience 4800))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 AlocanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hit.clp	hit2  "  ?id "  " ?id1 "  AlocanA_kara  )" crlf))
)

;He always hit out at those who oppose him.
;vaha hameSAM unakI AlocanA karawA hE jo usakA viroXa karawe hEM
(defrule hit3
(declare (salience 4700))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AGAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit3   "  ?id "  AGAwa )" crlf))
)

;"hit","N","1.AGAwa/saPala"
;bArdara eka 'hit'(saPala) Pilma ho cukI hE.
;
(defrule hit4
(declare (salience 4600))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prahAra_kara))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit4   "  ?id "  prahAra_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  hit.clp       hit4   "  ?id " para )" crlf)
)
)

;"hit","V","1.prahAra_karanA"
;usane apanI lATI se usake sira para 'hit' (prahAra) kiyA.
;

;@@@ ADDED BY PRACHI RATHORE
; If there were no friction, we would remain where we were, while the floor of the bus would simply slip forward under our feet and the back of the bus would hit us. [PHYSICS]
; यदि घर्षण न होता, तो हम वहीं रहते जहां पहले थे जबकि हमारे पैरों के नीचे बस का फर्श केवल आगे की दिशा में सरकता और बस का पीछे का भाग हमसे आकर टकराता.
(defrule hit5
(declare (salience 4710))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject ?id ?id1)(kriyA-object ?id ?id1))
(id-root ?id1 back|wall|floor|iceberg|bridge|wind)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takarA))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit5   "  ?id "  takarA )" crlf)
)
)

;@@@ ADDED BY PRACHI RATHORE
;The idea for the book hit me in the middle of the night. [CAMBRIDGE]
;पुस्तक के लिए विचार मुझे रात के मध्यस्थल में आया . 
(defrule hit6
(declare (salience 4700))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject ?id ?id1)(kriyA-object ?id ?id1))
(id-root ?id1 idea|solution|do|importance|smell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJa_AyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit6   "  ?id "  samaJa_AyA )" crlf)
)
)

;@@@ ADDED BY PRACHI RATHORE
;;I hit my head as I was getting into the car.[VEENA MAM TRANSLATION]
 ; जब मैं कार के अंदर घुस रहा था मेरा सिर टकरा गया .
(defrule hit7
(declare (salience 4700))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
;(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
;(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(viSeRya-RaRTI_viSeRaNa  ?id1 ?)
(kriyA-object  ?id ?id1)
(kriyA-subject  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id takarA))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit7   "  ?id "  takarA )" crlf)
)
)

;@@@ ADDED BY PRACHI RATHORE
;I couldn't remember where I'd seen him before, and then it suddenly hit me. [OALD]
; मैं याद नहीं कर सका कि मैंने  उसको पहले कहाँ देखा , और बाद में अचानक मुझे याद आया . 
(defrule hit8
(declare (salience 4700))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-vAkyakarma ?id ?)(kriyA-vAkyakarma ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit8   "  ?id "  AyA )" crlf)
)
)

;@@@ ADDED BY PRACHI RATHORE
;President hits town tomorrow. [OALD]
;अध्यक्ष कल नगर पहुँचेगा . 
(defrule hit9
(declare (salience 4695))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
;(or(kriyA-subject ?id ?id1)(kriyA-object ?id ?id1))
;(id-root ?id1 euro|temperature|town|road|tornado)
(or(kriyA-kAlavAcI ?id ?)(kriyA-kqxanwa_karma ?id ?)(kriyA-anaBihiwa_subject ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit9   "  ?id "  pahuzca )" crlf)
)
)

;@@@ ADDED BY PRACHI RATHORE
;Rural areas have been worst hit by the strike. [OALD]
;ग्रामीण क्षेत्र स्ट्राइक के द्वारा सर्वाधिक बुरी तरह प्रभावित किए गये हैं . 
(defrule hit10
(declare (salience 4710))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 tax|area|death|increase|economy|layoff|earthquake)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit10   "  ?id "  praBAviwa_kara )" crlf)
)
)

;@@@ ADDED BY PRACHI RATHORE
;We've hit on the solution at last.[OALD]
;हम आखिरकार हल पर पहुँच चुके हैं . 
(defrule hit11
(declare (salience 4700))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI ?id ?id1)
(id-root ?id1 solution)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit11   "  ?id "  pahuzca )" crlf)
)
)

;@@@ ADDED BY PRACHI RATHORE
;He hit the nail squarely on the head with the hammer. [OALD]
;उसने हथौडे से सिर पर उचित रूप से कील ठोका . 
(defrule hit12
(declare (salience 4700))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 nail)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TokA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit12   "  ?id "  TokA )" crlf)
)
)

;ADDED BY PRACHI RATHORE 
;I was hit by a falling stone.  [OALD]
;मुझे एक गिरते हुए पत्थर के द्वारा चोट लगा गयी थी .  
;(defrule hit13
;(declare (salience 4720))
;(id-root ?id hit)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;(kriyA-karma ?id ?id2)
;(kriyA-by_saMbanXI ?id ?id1)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id cowa_laga))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit13   "  ?id "  cowa_laga )" crlf)
;)
;)

;@@@ ADDED BY PRACHI RATHORE
;The town was hit by bombs again last night. [OALD]
;नगर पर फिर से पिछली रात बमों के द्वारा आक्रमण किया गया था .  
(defrule hit14
(declare (salience 4700))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id1)
;(id-root ?id1 bomb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkramaNa_kara))
(assert (kriyA_id-subject_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit14   "  ?id "  AkramaNa_kara )" crlf)
)
)

;@@@ ADDED BY PRACHI RATHORE
;  I was late because I hit a traffic jam on the way over.  [m-w learners dictionary]
;मैं देरी से था क्योँकि मुझे मार्ग पर एक ट्रेफिक जाम मिला .  
(defrule hit15
(declare (salience 4690))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
;(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id2)
(kriyA-object  ?id ?id1)
(id-root ?id1 jam|water)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit15   "  ?id "  mila)" crlf)
)
)

;ADDED BY PRACHI RATHORE
;Rural areas have been worst hit by the strike. [OALD]
;ग्रामीण क्षेत्र स्ट्राइक के द्वारा सर्वाधिक बुरा प्रभावित किए गये हैं . 
;(defrule hit16
;(declare (salience 4710))
;(id-root ?id hit)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;(kriyA-kriyA_viSeRaNa  ?id ?)
;(kriyA-by_saMbanXI  ?id ?)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id praBAviwa_kara))
;(assert (kriyA_id-object_viBakwi ?id ko))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit16   "  ?id "  praBAviwa_kara )" ;crlf)
;)
;)

;@@@ ADDED BY PRACHI RATHORE
;Spain was one of the hardest hit countries. [OALD]
;स्पेन सबसे अधिक प्रभावीत देशों में से एक था .  
(defrule hit17
(declare (salience 4710))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
(viSeRya-viSeRaNa ?id2 ?id)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  (- ?id 1) praBAvIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name--affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  hit.clp 	hit17   "  ?id "  praBAvIwa )" crlf)
)
)


;@@@ ADDED BY PRACHI RATHORE
;Hit the brakes! [OALD]
;ब्रेक दबाइए!  
(defrule hit18
(declare (salience 4700))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?)
(id-root ?id1 brake|switch|button|accelerator)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit18   "  ?id "  xaba )" crlf)
)
)

;@@@ ADDED BY PRACHI RATHORE
;The project went smoothly at first, but then we started to hit some problems.[M-W LEARNERS DICT.]
;परियोजना शुरुअात में आसानी चल रही थीं, किंतु फिर हमें कुछ समस्याएँ आना शुरु हुयी.  
(defrule hit19
(declare (salience 4700))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?)
(id-root ?id1 problem)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit19   "  ?id "  AnA )" crlf)
)
)


;@@@ ADDED BY PRACHI RATHORE
;Follow this footpath and you'll eventually hit the road. [OALD]
;इस पैदलपथ का अनुसरण कीजिये और आप अन्त में सडक तक पहुँचेंगे .   
(defrule hit20
(declare (salience 4700))
(id-root ?id hit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 road|home|ground|store|shelf|market|slope|note|house|bottom)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(assert (kriyA_id-object_viBakwi ?id waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hit.clp 	hit20   "  ?id "  pahuzca )" crlf)
)
)
