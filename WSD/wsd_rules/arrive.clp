
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03/04/2014
;Anjali had also arrived by that time.[news-dev]
;उस समय तक अंजली भी आ गयी थी
(defrule arrive8
(declare (salience 4500))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(id-word ?id1 time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrive.clp    arrive8   "  ?id "  A_jA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S) 22/03/2014
;Note the dimensions of quantities on the two coordinate axes and you will arrive at the answer.[ncert]
;दोनों निर्देशाङ्क अक्षों के अनुदिश जो राशियाँ अङ्कित की गई हैं, यदि आप उनकी विमाओं पर ध्यान देङ्गे तो आपको इस प्रश्न का उत्तर मिल जाएगा.?
(defrule arrive7
(declare (salience 5000))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?id1)
(id-word ?id1 answer)
(id-word =(+ ?id 1) at)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) uwwara_mila_jA))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " arrive.clp    arrive7  "  ?id "  " ?id1 "  uwwara_mila_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* " arrive.clp    arrive7   "  ?id " ko )" crlf)
)
)


;$$$ Modified by Garima Singh(M.Tech-C.S) 16-jan-2014
;Changed the meaning from 'pahuzca_ja' to 'A'.Suggested by Vineet Sir
;The train arrived at the station 20 minutes late.
;रेलगाडी 20 मिनट देर से स्टेशन में आई  
(defrule arrive1
(declare (salience 4000))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrive.clp    arrive1   "  ?id "  A )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15-jan-2014
;The new product will arrive on supermarket shelves early next year.[oald]
;नया उत्पाद जल्दी अगले वर्ष सुपर बाजारों की शेल्फ पर आ जाएगा . 
;The wedding day finally arrived.[oald]
;विवाह का दिन अन्ततः आ गया . 
(defrule arrive2
(declare (salience 5000))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 autumn|winter|summer|rain|season|product|lunch|day)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrive.clp    arrive2   "  ?id "  A_jA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15-jan-2014
;The baby arrived early.[oald]
;बच्चा समय से पहले पैदा हो गया
;Their baby Olivia arrived on the date she was expected.[cambridge]
;उनकी बच्ची औलिविया सही समय पर पैदा हुई
(defrule arrive3
(declare (salience 5000))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject ?id ?id1)(and(kriyA-subject ?id ?sub)(samAsa_viSeRya-samAsa_viSeRaNa  ?sub ?id1)))
(id-root ?id1 baby)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrive.clp    arrive3   "  ?id "  pExA_ho )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-jan-2014
;I was pleased to hear you arrived home safely.[oald]
;मुझे जानकर खुशी हुयी कि आप सलामती से घर पहुँच गये
(defrule arrive4
(declare (salience 4000))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?obj)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrive.clp    arrive4   "  ?id "  pahuzca_jA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-jan-2014
;By the time I arrived on the scene, it was all over.[oald]
;जिस समय  मैं घटना स्थल पर पहुँवचा, वहाँ सब खत्म हो चुका था. 
(defrule arrive5
(declare (salience 4500));salience kept higher than rule1 and lower than rule3.conflict:Their baby Olivia arrived on the date she was expected.
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrive.clp    arrive5   "  ?id "  pahuzca )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24-Feb-2014
;The correct notion of force was arrived at by Isaac Newton in his famous laws of motion.[ncrt]
;बल के विषय में हमें सही धारणा न्यूटन के गति के प्रसिद्ध नियमों में मिली.
(defrule arrive6
(declare (salience 4000))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-word ?id1 at)
(kriyA-subject  ?id ?sub)
(id-word ?sub notion)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " arrive.clp    arrive6  "  ?id "  " ?id1 "  mila )" crlf)
)
)


;*****************************DEFAULT RULES******************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15-jan-2014
(defrule arrive0
(declare (salience 0))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrive.clp    arrive0   "  ?id "  pahuzca_jA )" crlf)
)
)

;*************************************************EXAMPLES***********************************************************************************

;I'll wait until they arrive.
;I was pleased to hear you arrived home safely.
;The police arrived to arrest him.
;She'll arrive in New York at noon.
;The train arrived at the station 20 minutes late.
;By the time I arrived on the scene, it was all over.
;We didn't arrive back at the hotel until very late.
;A letter arrived for you this morning.
;Send your application to arrive by 31 October.
;We waited an hour for our lunch to arrive.
;The new product will arrive on supermarket shelves early next year.
;The wedding day finally arrived.
;The baby arrived early.
;Their baby Olivia arrived on the date she was expected.

;************************************************HELP****************************************************************************************

;HLP:

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_arrive6
(declare (salience 4000))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1 at)
(kriyA-subject  ?id ?sub)
(id-word ?sub notion)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " arrive.clp   sub_samA_arrive6   "   ?id " " ?id1 " mila )" crlf)
)
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_arrive6
(declare (salience 4000))
(id-root ?id arrive)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1 at)
(kriyA-subject  ?id ?sub)
(id-word ?sub notion)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " arrive.clp   obj_samA_arrive6   "   ?id " " ?id1 " mila )" crlf)
)
)
