;$$$ modified by Pramila(Bu) on 16-01-2014[meaning changed from "bahAva_saMvahana" to aBiprAya_yA_arWa] 
;I couldn't follow the meaning of the speech.    ;shiksharthi
;मैं भाषण के अभिप्राय या अर्थ को नहीं समझ सका.
(defrule drift0
(declare (salience 4000))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBiprAya_yA_arWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drift.clp 	drift0   "  ?id "  aBiprAya_yA_arWa )" crlf))
)

;"drift","N","1.bahAva_saMvahana"
;The drift of people from the villages into the cities is not a healthy
; trend.
;--"2.apavahana{deviation}"
;Our young generation is drifting away from traditional values. 
;--"3.aBiprAya_yA_arWa"
;Her French is not very good,but she got the drift of what I said. 
;--"4.apoDZa{deposit}"
;Deep && high'snow drifts'are posing threats to the ship.  
;
(defrule drift1
(declare (salience 4000))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baha_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drift.clp 	drift1   "  ?id "  baha_jA )" crlf))
)

;"drift","V","1.baha_jAnA"
;Their boat drifted out to river.
;--"2.GUmanA-PiranA"
;The people drifted away from the Exhibition Ground. 
;--"3.pravAhiwa_karanA"
;The arguments drifted back to current situations in politics.
;--"4.apoDZa_bAlU_rewI"
;Our old bombay highway road is closed because of drifting. 
;


;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;The drift of people from the villages into the cities is not a healthy trend.  [old clp]
;गांवों से शहरों में लोगों का रूझान एक स्वस्थ प्रवृत्ति नहीं है.
(defrule drift2
(declare (salience 5000))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(viSeRya-from_saMbanXI  ?id1 ?id2)
(viSeRya-into_saMbanXI  ?id2 ?id3)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUJAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drift.clp 	drift2   "  ?id "  rUJAna )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;Our young generation is drifting away from traditional values.      [old clp]
;हमारी युवा पीढी पारम्परिक मूल्यों से भटक रही है.  
(defrule drift3
(declare (salience 4900))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drift.clp 	drift3   "  ?id "  Bataka )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;After the band stopped playing, people drifted away in twos and threes.         ;cald
;बैंड बजाना बंद करने के बाद लोग दो या तीन के समूह में धीरे-धीरे निकल गए. 
(defrule drift4
(declare (salience 5000))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 away)
(kriyA-in_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 XIre-XIre_nikala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drift.clp	drift4  "  ?id "  " ?id1 "  XIre-XIre_nikala_jA  )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;The snow lay in deep drifts.         ;cald
;बर्फ तेज बौछारों में गिरती है.
(defrule drift5
(declare (salience 4900))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bOCAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drift.clp 	drift5   "  ?id "  bOCAra )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;The downward drift in copper prices looks set to continue.      ;cald
;ताम्बे की कीमतों मे गिरावट जारी रहता हुआ लगता है.
(defrule drift6
(declare (salience 5000))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 downward)
(viSeRya-in_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 girAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " drift.clp	drift6  "  ?id "  " ?id1 "  girAvata  )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;Remember to allow for drift.       ;oald
;बहाव के लिए अनुमति देने के लिए याद रखना.
(defrule drift7
(declare (salience 5000))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-for_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drift.clp 	drift7   "  ?id "  bahAva )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;He knew the hidden drifts in that part of the river.    ;oald
;वह नदी के उस भाग में अदृष्ट बहाव को जानता है.
(defrule drift8
(declare (salience 5000))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(kriyA-in_saMbanXI  ?id1 ?id2)
(viSeRya-of_saMbanXI  ?id2 ?id3)
(id-root ?id3 river|sea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drift.clp 	drift8   "  ?id "  bahAva )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 17-01-2014
;The road was blocked by deep drifts of snow.       ;oald
;सड़क बर्फ की तेज बौछारों से बंद हो गया है.
(defrule drift9
(declare (salience 5000))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 snow)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bOCAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drift.clp 	drift9   "  ?id "  bOCAra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_drift6
(declare (salience 5000))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 downward)
(viSeRya-in_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 girAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " drift.clp   sub_samA_drift6   "   ?id " " ?id1 " girAvata )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_drift6
(declare (salience 5000))
(id-root ?id drift)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 downward)
(viSeRya-in_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 girAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " drift.clp   obj_samA_drift6   "   ?id " " ?id1 " girAvata )" crlf))
)
