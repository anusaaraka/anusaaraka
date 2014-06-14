
(defrule wrinkle0
(declare (salience 100))
(id-root ?id wrinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JurrI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrinkle.clp 	wrinkle0   "  ?id "  JurrI )" crlf))
)

;@@@ Added by Pramila(BU) on 26-03-2014
;This book will give you some wrinkles for your interview.    [old clp]
;यह पुस्तक तुम्हें तुम्हारे साक्षात्कार के लिए कुछ लाभदायक सुझाव देगी.
(defrule wrinkle1
(declare (salience 5000))
(id-root ?id wrinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABaxAyaka_suJAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrinkle.clp 	wrinkle1   "  ?id "  lABaxAyaka_suJAva )" crlf))
)


;"wrinkle","N","1.JurrI"
;The wrinkles on her face are not visible.
;--"2.[anOpacArika]lABaxAyaka_suJAva"
;This book will give you some wrinkles for your interview.
;

;$$$ Modified by Pramila(BU) on 26-03-2014 [meaning changed from 'sikuda_jA' to 'sikoda_le']
(defrule wrinkle2
(declare (salience 100))
(id-root ?id wrinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sikoda_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrinkle.clp 	wrinkle2   "  ?id "  sikoda_le )" crlf))
)

;"wrinkle","VT","1.sikuda_jAnA"
;She wrinkled her forehead in anger.
;--"2.Sikana_padZanA[dAlanA]"
;The skirt was wrinkled due to haphazard foldings.
;

;@@@ Added by Pramila(BU) on 26-03-2014
;The skirt was wrinkled due to haphazard foldings.    [old clp]
;स्कर्ट में ऊटपटाङ्ग मोडने के कारण  सलवटें पड़ गई है.
(defrule wrinkle3
(declare (salience 4900))
(id-root ?id wrinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?sub)
(subject-subject_samAnAXikaraNa  ?sub ?id2)
(viSeRya-to_saMbanXI  ?id2 ?id3)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id salavateM_padZa))
(assert (kriyA_id-subject_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrinkle.clp 	wrinkle3   "  ?id "  salavateM_padZa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  wrinkle.clp 	wrinkle3    "  ?id " meM )" crlf))
)


;@@@ Added by Pramila(BU) on 26-03-2014
;Her stockings were wrinkling at the knees.    [old clp]
;उसकी स्टाकिंग में घुटने पर सलवटें पड़ गई है.
(defrule wrinkle4
(declare (salience 4900))
(id-root ?id wrinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id salavateM_padZa))
(assert (kriyA_id-subject_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrinkle.clp 	wrinkle4   "  ?id "  salavateM_padZa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  wrinkle.clp 	wrinkle4    "  ?id " meM )" crlf))
)

;@@@ Added by Pramila(BU) on 26-03-2014
;Old man's face was wrinkled.   ;shiksharthi
;बूढे आदमी के चेहरे पर झुर्रियाँ पड़ गई है.
(defrule wrinkle5
(declare (salience 4500))
(id-root ?id wrinkle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(not(kriyA-object  ?id ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JurrIyAz_padZa))
(assert (kriyA_id-subject_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wrinkle.clp 	wrinkle5   "  ?id "  JurrIyAz_padZa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  wrinkle.clp 	wrinkle5    "  ?id " para )" crlf))
)
