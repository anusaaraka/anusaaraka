
(defrule smooth0
(declare (salience 5000))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*  "  smooth.clp 	smooth0   "  ?id "  cikanA )" crlf))
)

(defrule smooth1
(declare (salience 4900))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-out_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sapAta_kara));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir*  " smooth.clp smooth1 " ?id "  sapAta_kara )" crlf)) 
)

(defrule smooth2
(declare (salience 4800))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sapAta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir*  " smooth.clp	smooth2  "  ?id "  " ?id1 "  sapAta_kara  )" crlf))
)

(defrule smooth3
(declare (salience 4700))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sapAta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*  "  smooth.clp 	smooth3   "  ?id "  sapAta_kara )" crlf))
)

(defrule smooth4
(declare (salience 4600))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat ?id adjective|adjective_comparative|adjective_superlative)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*  "  smooth.clp 	smooth4   "  ?id "  cikanA )" crlf))
)
;@@@ Added by jagriti(13.12.2013)
;She has a smooth voice.
;उसकी आवाज मधुर है . 
(defrule smooth5
(declare (salience 4650))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 voice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*  "  smooth.clp 	smooth5   "  ?id "  maXura )" crlf))
)
;@@@ Added by jagriti(13.12.2013)
;A smooth road. 
;The path was smooth.
;पथ सपाट था . 
(defrule smooth6
(declare (salience 4655))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(id-root ?id1 road|path)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sapAta ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*  "  smooth.clp 	smooth6   "  ?id "  sapAta )" crlf))
)
;@@@ Added by jagriti(13.12.2013)
;She has a smooth skin. 
;उसकी त्वचा मुलायम है.	
(defrule smooth7
(declare (salience 4655))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(id-root ?id1 skin )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mulAyama ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*  "  smooth.clp 	smooth7   "  ?id "  mulAyama )" crlf))
)
;@@@ Added by jagriti(13.12.2013)
;The receptionist was smooth.
;स्वागती शान्त था . 
(defrule smooth8
(declare (salience 4652))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(id-root ?id1 receptionist|person )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnwa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*  "  smooth.clp 	smooth8   "  ?id "  SAnwa )" crlf))
)
;@@@ Added by jagriti(13.12.2013)
;The journey was smooth.
;यात्रा निर्विघ्न थी .
(defrule smooth9
(declare (salience 4640))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(id-root ?id1 journey)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirviGna ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*  "  smooth.clp 	smooth9   "  ?id "  nirviGna )" crlf))
)
;@@@ Added by jagriti(13.12.2013)
;Regular servicing guarantees the smooth operation of the engine.
;नियमित सर्विसिंग इंजन के आसान संचालन की गारंटी देता है.
(defrule smooth10
(declare (salience 4644))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(id-root ?id1 operation|mission|work )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AsAna ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*  "  smooth.clp 	smooth10   "  ?id "  AsAna  )" crlf))
)
;@@@ Added by jagriti(13.12.2013)
;The engine is running smooth.
;इंजन आसानी से चल रहा है.
(defrule smooth11
(declare (salience 4000))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ArAma_se ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*  "  smooth.clp 	smooth11   "  ?id "  ArAma_se )" crlf)))

;@@@ Added by jagriti(28.12.2013)
;From then on the plan they had formulated was carried out with smooth precision. [gyannidhi-corpus]
(defrule smooth12
(declare (salience 4600))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 precision)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahaja ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir*  "  smooth.clp 	smooth12   "  ?id "  sahaja )" crlf))
)

;"smooth","Adj","1.cikanA"
;She had a smooth face.
;--"2.maXura"   
;The Ice cream was smooth.
;She has a smooth voice.
;--"3.barAbara"
;The path was smooth.
;--"4.nirviGna"
;The journey was smooth.
;--"5.SAnwa"
;The receptionist was smooth.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_smooth5
(declare (salience 4650))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 voice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " smooth.clp   sub_samA_smooth5   "   ?id " maXura )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_smooth5
(declare (salience 4650))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 voice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maXura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " smooth.clp   obj_samA_smooth5   "   ?id " maXura )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_smooth12
(declare (salience 4600))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 precision)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahaja ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " smooth.clp   sub_samA_smooth12   "   ?id " sahaja )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_smooth12
(declare (salience 4600))
(id-root ?id smooth)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 precision)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahaja ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " smooth.clp   obj_samA_smooth12   "   ?id " sahaja )" crlf))
)
