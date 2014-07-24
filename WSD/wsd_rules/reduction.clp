
;@@@ Added by Anita-23.1.2014
;There has been a sharp reduction in the bat population in this region. [by mail sentennce]
;इस क्षेत्र में चिमगादड़ों की जनसङ्ख्या में तेजी से कमी हो चुकी है .
;This season there was great reduction in sale .
;इस मौसम में बिक्री में भारी कमी थी ।
(defrule reduction1
(declare (salience 4700))
(id-root ?id reduction)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reduction.clp  reduction1 "  ?id " kamI )" crlf))
)

;@@@ Added by Anita-25.1.2014
;The report recommends further reductions in air and noise emissions. [Oxford learner's dictionary]
;रिपोर्ट ने वायु और ध्वनि के उत्सर्जन में और कटौती की सिफारिश की.
(defrule reduction2
(declare (salience 4800))
(id-root ?id reduction)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?k ?id)
(viSeRya-viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katOwI))
(assert (kriyA_id-object_viBakwi ?k kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reduction.clp  reduction2 "  ?id " katOwI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reduction.clp      reduction2   "  ?k " kA )" crlf))
)

;@@@ Added by Anita-25.1.2014
;There are reductions for children sharing a room with two adults. [Oxford learner's dictionary]
;दो बड़ों के साथ कमरे को बाँटने वाले बच्चों की कमी हो रही है ।
(defrule reduction3
(declare (salience 4900))
(id-root ?id reduction)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 room)
(viSeRya-for_saMbanXI  ?id ?sam)
(viSeRya-kqxanwa_viSeRaNa  ?sam ?k)
(kriyA-object ?k  ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamI))
(assert (kriyA_id-object_viBakwi ?k ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reduction.clp  reduction3 "  ?id " kamI )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  reduction.clp      reduction3   "  ?k " ko )" crlf))
)

;####################################default-rule#################################

;@@@ Added by Anita-25.1.2014
(defrule reduction_default-rule
(id-root ?id reduction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  reduction.clp  reduction_default-rule "  ?id " CUta )" crlf))
)
