;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-dec-2013
;Who is acting for the defendant?[cambridge]
;प्रतिवादी के लिये कौन प्रतिनिधित्व कर रहा है? 
(defrule act14
(declare (salience 4500))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
;(id-word ?id1 defendant) ;add this condition if some contradictory example is found.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiniXiwva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  act.clp  	act14   "  ?id "  prawiniXiwva_kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-dec-2013
;Who is acting on behalf of the defendant?[cambridge]
;प्रतिवादी की ओर से कौन प्रतिनिधित्व कर रहा है? 
(defrule act15
(declare (salience 4500))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
(id-word ?id1 behalf)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiniXiwva_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  act.clp  	act15   "  ?id "  prawiniXiwva_kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-dec-2013
;He acted as if he'd never met me before.[cambridge]
;उसने दिखाया मानो वह मुझसे पहले  कभी नहीं मिला है . 
(defrule act16
(declare (salience 4500))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?id ?id1)
(kriyA-kriyA_viSeRaNa  ?id1 =(+ ?id 1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  act.clp  	act16   "  ?id "  xiKA )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 11-dec-2013
;Don't be so silly - you're acting like a child![cambridge]
;इतना बेवकूफ मत बनो- आप बच्चे की तरह हरकत कर रहे हैं! 
(defrule act17
(declare (salience 4500))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(kriyA-like_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harakawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  act.clp  	act17   "  ?id "  harakawa_kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12-dec-2013
;Ellis Pike was chosen to act the part of the lawyer in the film.[cambridge]
;एललिस पिके को सिनेमा में वकील के किरदार का अभिनय करने के लिये चुना गया था . 
(defrule act18
(declare (salience 4500))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-word ?id1 part)
(viSeRya-of_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBinaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  act.clp  	act18   "  ?id "  aBinaya_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12-dec-2013
;Have you ever acted in a play before?[cambridge]
;क्या आपने पहले भी कभी नाटक में अभिनय किया है? 
(defrule act19
(declare (salience 4500))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?id1)
(id-word ?id1 play|movie|cinema|show|drama|theater)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBinaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  act.clp  	act19   "  ?id "  aBinaya_kara )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 12-dec-2013
;The state legislature passed an act banning the sale of automatic weapons.[cambridge]
;राज्य विधानमण्डल ने स्वचालित अस्त्रों की बिक्री पर प्रतिबन्ध लगाते हुए एक कानून निकाला . 
(defrule act20
(declare (salience 4500))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri pass)
(kriyA-subject  ?kri ?sub)
(id-root ?sub legislature|government)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAnUna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  act.clp  	act20   "  ?id "  kAnUna )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 27-jan-2014
;Calcutta University has made considerable progress in the directions indicated by the Act.[gyananidhi]
;कलकत्ता विश्वविद्यालय ने अधिनियम द्वारा बताई गई दिशाओं में बहुत प्रगति की है।
(defrule act21
(declare (salience 4500))
(id-original_word ?id  Act)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXiniyama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  act.clp  	act21   "  ?id "  aXiniyama )" crlf))
)


(defrule act0
(declare (salience 5000))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 as)
(kriyA-upasarga ?id ?id1)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kA_kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " act.clp	act0  "  ?id "  " ?id1 "  kA_kAma_kara  )" crlf))
)

;This institution can act as a ladder for your success
;yaha saMsWAna wumhArI saPalawA kI sIDZI kA kAma kara sakawA hE
(defrule act1
(declare (salience 4900))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 burA_vyavahAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " act.clp	act1  "  ?id "  " ?id1 "  burA_vyavahAra_kara  )" crlf))
)

;The students often act up in the absence of a teacher.
;vixyArWI prAyaH aXyApaka kI anupasWiwi meM burA vyavahAra karawe hEM
(defrule act2
(declare (salience 4800))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 pIdZA_pahuzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " act.clp	act2  "  ?id "  " ?id1 "  pIdZA_pahuzcA  )" crlf))
)

;My leg is acting up again.
;merI tAzga xobArA se pIdZA pahuzcA rahI hE
(defrule act3
(declare (salience 4700))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " act.clp	act3  "  ?id "  " ?id1 "  kAma_kara  )" crlf))
)



(defrule act5
(declare (salience 4500))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id acting )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id kAryakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  act.clp  	act5   "  ?id "  kAryakArI )" crlf))
)

;"acting","Adj","1.kAryakArI"
;Before the elections we had an the acting president.
;
(defrule act6
(declare (salience 4400))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id acting )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aBinaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  act.clp  	act6   "  ?id "  aBinaya )" crlf))
)

;"acting","N","1.aBinaya"
;She is not good at acting.
;
(defrule act7
(declare (salience 4300))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 parliament )
(viSeRya-of_saMbanXI ?id1 ?id) ;Replaced viSeRya-of_viSeRaNa as viSeRya-of_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXiniyama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  act.clp 	act7   "  ?id "  aXiniyama )" crlf))
)

(defrule act8
(declare (salience 4200))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 * )
(viSeRya-of_saMbanXI ?id1 ?id) ;Replaced viSeRya-of_viSeRaNa as viSeRya-of_saMbanXI programatically by Roja 09-11-13
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  act.clp 	act8   "  ?id "  kqwi )" crlf))
)

(defrule act9
(declare (salience 4100))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 of)
(kriyA-of_saMbanXa ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  act.clp 	act9   "  ?id "  kArya )" crlf))
)
;Added by abhinav gupta , IIT BHU
(defrule act13
(declare (salience 4050))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse =(- ?id 1) PropN)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXiniyama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  act.clp 	act13   "  ?id "  aXiniyama )" crlf))
)

(defrule act10
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya));Modified aXiniyama as kArya by Abhinav , IIT BHU
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  act.clp 	act10   "  ?id "  kArya )" crlf))
)

;The act seemingly had to meam atleast this. 
;Lenin's first political act after seizing power was to create communist international.
; You say one thing and then act just the opposite. 
;Using her name is an act of aggression. 
;The journal itself is an act of making identity. 
;We will act only using constitutional means. 
;We must act.
; Abhinav act prevented them from accomplishing their motives. 


;Added by Meena(4.02.10)
;Many people can speak but only a few can act .
(defrule act011
(declare (salience 3900))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 speak)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  act.clp       act011   "  ?id "  kara )" crlf))
)


;Salience reduced by Meena(4.02.10)
(defrule act11
(declare (salience 0))
(id-root ?id act)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  act.clp 	act11   "  ?id "  kArya_kara )" crlf))
)

;default_sense && category=verb	kAma_kara	0
;"act","V","1.kAma_karanA"
;Many people can speak but only few can act.
;--"2.aBinaya_karanA"
;She has acted in low budget movies.
;
;
;LEVEL 
;
;
;"act"
;
;1. It was a kind act to help the blind man across the road. (kqwi) 
;   aMXe AxamI ko sadZaka pAra karavAnA eka sahqxaya kAma[kqwi] WA.
; 
;2. The hero died in Act four, scene three.  (aMka)
;   xqSya cAra ke cOWe aMka meM nAyaka kI mqwyu ho gayI.
; 
;3. Don't take her seriously, its all an act.  (aBinaya)
;   usako gamBIrawApUrvaka mawa lo., yaha saba nAtaka[aBinaya] hE.
;
;4. He was saved because the doctors acted promptly.  (kArya)
;   vaha bacA liyA gayA kyoMki dAktaroM ne jalxI [kArya] kI
;
;5. Madhuri Dixit acts well.   (aBinaya_karanA)
;   mAXurI xIkRiwa acCA aBinaya karawI hE.
;
;6. He is not really angry, he is only acting.  (aBinaya)
;   vaha vAswava meM gussA nahIM hE, vaha sirPa nAtaka[aBinaya] kara rahA hE.  
; 
;7. The parliament has passed an Act.   (aXiniyama)
;   pArliyAmEMta ne eka aXiniyama pAsa kiyA hE.
;
;8. She is successful in her business && now her family also wants to get in
;   the act.   (kArya)
;   vaha apane vyavasAya meM saPala rahI Ora aba usakA parivAra BI kAma[kArya] meM SAmila honA cAhawA hE. 
;
;vyAKyA :-
;
;Upara liKiwa vAkyoM (3,5,6) meM "act" kA arWa "aBinaya" A rahA hE Ora vAkyoM(1,4,8)
; meM "act" kA arWa "kArya" A rahA hE. xeKA jAe wo aBinaya karanA BI eka waraha kA kArya 
;hE Ora isalie hama "kArya" ke arWa meM se "aBinaya karanA" kA arWa prApwa kara sakawe hEM.   
;vAkya 7 meM "act" kA jo arWa,"aXiniyama", A rahA hE Ora vAkya 2 meM jo arWa "aMka"
;A rahA hE, ina xono arWoM meM se jo samAna BAva prApwa kara sakawe hEM vaha hE "viXi" kA.
; "viXi" meM BI kArya karane kA arWa A rahA hE. wo aba hama "kArya karanA"
;ke arWa meM se "viXi" kA arWa BI prApwa kara sakawe hE. 
;aba agara hama "act" ke ina Binna laganevAle arWoM ke lie eka sUwra banAnA cAhe
;wo vaha isa prakAra hogA :
;
;sUwra : kArya[>aBinaya/viXi]
;


;***********NOTE******************

;Sentences for which above rules do not work or do not convey appropriate meaning
;*********************************************************************************

;Some people say that capital punishment acts as a deterrent
;कुछ लोंगो का कहना है कि मृत्यु-दंड अपराध रोकने का काम करता है.
;Tim always does a vanishing act when my mother comes to stay.
;जब भी मेरी माँ रहने आती है टिम हमेशा गायब हो जाता है.
;Why are you always acting the fool?
;आप हमेशा मूर्ख की तरह क्यों हरकत करते हो
