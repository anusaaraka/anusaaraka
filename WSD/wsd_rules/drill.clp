;$$$ modified by by Pramila(Banasthali University) on 18-01-2014 [meaning changed from "Cexa_karane_vAlI_maSIna" to "baramA"]
(defrule drill0
(declare (salience 4000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baramA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill0   "  ?id "  baramA )" crlf))
)

;"drill","N","1.Cexa_karane_vAlI_maSIna"
;The carpenter uses drill machine to make holes in the wall.
;--"2.POjI_SikRA_kavAyaxa"
;The soldiers were at drill.
;--"3.kaTora_anuSAsana_meM_raha_kara_SikRA_xenA"
;The N.C.C.cadets have practised rifle drill. 
;--"4.kisI_kAma_ko_karane_kA_sahI_warIkA"
;What is the drill for claiming insurance money? 
;
(defrule drill1
(declare (salience 4000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill1   "  ?id "  Cexa_kara )" crlf))
)

;"drill","V","1.Cexa_karanA"
;My neighbour is drilling a new borewell beside the old one.
;--"2.anuSAsana_meM_raha_kara_SikRA_xenA"
;The teacher drilled the whole class in mathematics. 
;


;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;Young soldiers need plenty of drill.     ;shiksharthi
;युवा सैनिको को प्रचुर कसरत की आवश्यकता है.
(defrule drill2
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kasarawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill2   "  ?id "  kasarawa )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;The class needs more drill in grammer.        ;shiksharthi
;कक्षा को व्याकरण में अधिक अभ्यास की जरूरत है.
(defrule drill3
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-in_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aByAsa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill3   "  ?id "  aByAsa )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;The soldiers were at drill.          [old clp]
;सैनिक कवायद में थे.
(defrule drill4
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-at_saMbanXI  ?kri ?id)
(kriyA-subject  ?kri ?id1)
(id-root ?id1 soldier)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kavAyaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill4   "  ?id "  kavAyaxa )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;We drill seeds.       ;shiksharthi
;हम बीज बोते हैं.
(defrule drill5
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 seed)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill5   "  ?id "  bo )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;Soldiers are drilled daily.         ;shiksharthi
;सिपाहियों को प्रतिदिन कवायद कराई जाती है.
;The soldiers were being drilled outside the barracks.   ;oald
;सैनिकों को बैरकों के बाहर कवायद कराई जा रही थी. 
(defrule drill6
(declare (salience 4900))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-karma  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 soldier)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kavAyaxa_karA))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill6   "  ?id "  kavAyaxa_karA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  drill.clp      drill6   "  ?id " ko )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 21-01-2014
;We watched the soldiers drilling on the parade ground.     ;cald
;हमने सिपाहियों को परेड मैदान पर कवायद करते हुए देखा. 
(defrule drill7
(declare (salience 4900))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 soldier)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kavAyaxa_kara))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill7   "  ?id "  kavAyaxa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  drill.clp      drill7   "  ?id " ko )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;What's the drill for claiming expenses?   ;oald
;खर्चों माँग करने के लिए क्या विधि है?
(defrule drill8
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill8   "  ?id "  viXi )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;The children were drilled to leave the classroom quickly when the fire bell rang.     ;oald
;जब आग की घंटी बजी तो बच्चों को जल्दी से कक्षा छोड़ने के लिए कहा गया 
(defrule drill9
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-karma  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(kriyA-kriyArWa_kriyA  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill9   "  ?id "  kaha )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;Recruits are drilled in basic techniques over the five-day course.        ;oald
;नए सिपाहियों को पांच दिवसीय पाठ्यक्रम में बुनियादी तकनीकों पर प्रशिक्षण दिया जाता है..
(defrule drill10
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
(viSeRya-over_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praSikRaNa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill10   "  ?id "  praSikRaNa_xe )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;The teacher drilled the whole class in mathematics.  [old clp]
;अध्यापक ने पूरी कक्षा को गणित में अभ्यास कराया.
;He drilled the children in what they should say.     ;cald
;उसने बच्चों को ,जो उन्होंने कहा ,उसमें अभ्यास कराया.
(defrule drill11
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(or(viSeRya-in_saMbanXI  ?id1 ?id2)(viSeRya-jo_samAnAXikaraNa  ?id1  ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aByAsa_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill11   "  ?id "  aByAsa_karA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 21-01-2014
;We drilled the french words whole day.      [sentence given by Vineet Chaitanya Sir]
;हमने पूरे दिन फ्रैन्च शब्दों का अभ्यास किया.
(defrule drill12
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(kriyA-kAlavAcI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aByAsa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill12   "  ?id "  aByAsa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  drill.clp      drill12   "  ?id " kA )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;It was drilled into us at an early age that we should always say 'please' and 'thank you'.      ;cald
;यह हमें कम उम्र में  सिखाया गया था कि हमें हमेशा 'कृपया' और 'धन्यवाद' कहना चाहिए .
(defrule drill13
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id siKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drill.clp 	drill13   "  ?id "  siKA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 18-01-2014
;You drill holes in a plank.      ;shiksharthi
;आप तख्ते में छेद करते हैं . 
;Drill three holes in the wall for the screws.         ;cald
;पेंचों के लिये दीवार में तीन छेद कीजिए . 
(defrule drill14
(declare (salience 5000))
(id-root ?id drill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 hole)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Cexa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drill.clp	drill14  "  ?id "  " ?id1 "  Cexa_kara  )" crlf))
)


