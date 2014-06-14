;______________________________________________________________________
;@@@ Added by Krithika 04/03/2014
; Sugar is converted into alcohol by a process of fermentation.	[OALD]
; शक्कर से मदिरा बनाने के लिए उसे खमीर बनाने की प्रक्रिया में परिवर्तित किया जाता है . ( गन्ने से )
; Translations by Mrs. Vaana Bagga
(defrule ferment2
(declare (salience 200))
(id-root ?id ferment)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fermentation)
(viSeRya-of_saMbanXI  ? ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KamIra ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "   ferment.clp 	 ferment2   "  ?id "  KamIra  )" crlf))
)
;______________________________________________________________________
;@@@ Added by Krithika 04/03/2014
; A blend of emotions fermented inside her.		[OALD]
; उसके मन में भावनाओं उपान रहे थे .( चल रही थी ) 
; Translations by Mrs. Vaana Bagga
(defrule ferment3
(declare (salience 200))
(id-root ?id ferment)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id2)
(viSeRya-of_saMbanXI  ?id2 ?id1)
(id-root ?id1 emotion)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uPAna_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "   ferment.clp 	 ferment3   "  ?id "  uPAna_raha  )" crlf))
)
;______________________________________________________________________
;@@@ Added by Krithika 04/03/2014
; Fruit juices ferment if they are kept for too long.	[OALD]
;फलों के रसों को अगर ज्यादा देर तक रखा जाता है तो उनमे किनवण आ जाती है .(खमीरापन आ जाता है .
; Red wine is fermented at a higher temperature than white.	[OALD]
; रेड वाइन को वाइट वाइन की अपेक्षा ज्यादा तापमान में किनवण किया जाता है . 
; Translations by Mrs. Vaana Bagga
(defrule ferment4
(declare (salience 200))
(id-root ?id ferment)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 juice|wine|liquid)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kinvaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "   ferment.clp 	 ferment4   "  ?id "  kinvaNa)" crlf))
)
;______________________________________________________________________
;@@@ Added by Krithika 04/03/2014
; To make Orthodox tea, the sifted leaves are taken straight to the fermenting room.	[By mail]
; परम्परागततरीके से चाय बनाने के लिए , छानी हुई(जाँच पड़ताल करी हुई ) चाय की पत्तियों को  सीधे फर्मेनटिन्ग रूम में ले जाया जाता है.
; They moved to the fermenting room, where the leaves were spread over troughs.	[By mail]
;  फर्मेनटिन्ग रूम में ले जाकर (ले जाने के बाद ) उन्हें  बड़े कुंडे वाले बर्तन में फैलाया जाता है .
; Translations by Mrs. Vaana Bagga
(defrule ferment5
(declare (salience 200))
(id-root ?id ferment)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fermenting)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 room)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  Parmeztizga_rUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng  " ?*wsd_dir* "   ferment.clp 	 ferment5   "  ?id "  "?id1"   Parmeztizga_rUma)" crlf))
)
;____________________________________________________________________
; ####################default rules #########################
;@@@ Added by Krithika 04/03/2014
; The country is in ferment.	[OALD]
; देश उत्तेजना की स्तिथि मे है .
; Translations by Mrs. Vaana Bagga
(defrule ferment1
(id-root ?id ferment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejanA_ki_sWiwi ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "   ferment.clp 	 ferment1   "  ?id "  uwwejanA_ki_sWiwi  )" crlf))
)
;______________________________________________________________________
;@@@ Added by Krithika 04/03/2014
; Flour is fermented with yeast to make bread.	[Hinkhoj]
; ब्रेड बनाने के लिए मैदा में यीस्ट मिलाकर खमीर उठाया जाता है .
; Translations by Mrs. Vaana Bagga
(defrule ferment6
(id-root ?id ferment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KamIra_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "   ferment.clp 	 ferment6   "  ?id "  KamIra_uTA" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_ferment5
(declare (salience 200))
(id-root ?id ferment)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fermenting)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 room)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  Parmeztizga_rUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " ferment.clp   sub_samA_ferment5   "   ?id " "?id1" Parmeztizga_rUma)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_ferment5
(declare (salience 200))
(id-root ?id ferment)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id fermenting)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 room)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  Parmeztizga_rUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " ferment.clp   obj_samA_ferment5   "   ?id " "?id1" Parmeztizga_rUma)" crlf))
)
