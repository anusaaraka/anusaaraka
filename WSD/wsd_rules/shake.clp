
(defrule shake0
(declare (salience 5000))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-down_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biCO));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " shake.clp shake0 " ?id "  biCO )" crlf)) 
)

(defrule shake1
(declare (salience 5000))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 biCO))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shake.clp	shake1  "  ?id "  " ?id1 "  biCO  )" crlf))
)

(defrule shake2
(declare (salience 100))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shake.clp 	shake2   "  ?id "  hilA )" crlf))
)

(defrule shake3
(declare (salience 100))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shake.clp 	shake3   "  ?id "  hilAnA )" crlf))
)
;@@@ Added by jagriti(23.11.2013)
;People in southern California were shaken awake by an earthquake.
;दक्षिणी कैलिफोर्निया के निवासियों को भूकम्प के झटकों ने जगा दिया .
(defrule shake4
(declare (salience 5001))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaNa ?id ?id1)
(id-root ?id1 awake)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jagA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shake.clp 	shake4   "  ?id "  jagA_xe )" crlf))
)
;@@@ Added by jagriti(23.11.2013)
;Anna shook some powdered chocolate over her coffee.
;एना ने अपनी कॉफ़ी में  थोडा सा चाकलेट का पाउडर मिलाया .
(defrule shake5
(declare (salience 5002))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 chocolate|salt|suger)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shake.clp 	shake5   "  ?id "   mila )" crlf))
)
;@@@ Added by jagriti(23.11.2013)
;Her voice shook as she spoke about the person who attacked her.
;उसकी आवाज भय से कांपने लगी जब उसने उस पर हमला करने वाले के बारे में बताया .
;She was shaking with cold.
;वह ठंड से कांप रही थी. 
(defrule shake6
(declare (salience 5003))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject ?id ?id1)(kriyA-with_saMbanXI  ?id ?id1))
(id-root ?id1 voice|cold|fear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAMpa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shake.clp 	shake6   "  ?id "   kAMpa )" crlf))
)
;@@@ Added by jagriti(20.1.2014)
;They were shaken by the news.
;वे खबर से घबरा गए.
(defrule shake7
(declare (salience 4900))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id1)
(id-root ?id1 news)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GabarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shake.clp 	shake7   "  ?id "   GabarA )" crlf))
)

;@@@ Added by jagriti(20.1.2014)
;Nothing could shake him from his path.
;उसे अपने रास्ते से कुछ भी विचलित नहीं कर सका.
(defrule shake8
(declare (salience 4800))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
(id-root ?id1 path)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicaliwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shake.clp 	shake8   "  ?id "   vicaliwa_kara )" crlf))
)

;@@@ Added by jagriti(20.1.2014)
;He shook off dust.
;उसने धूल झाड़ दिया.
(defrule shake9
(declare (salience 4700))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 off)
(kriyA-object ?id ?id2)
(id-root ?id2 dust)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shake.clp	shake9  "  ?id "  " ?id1 "  JAdZa )" crlf))
)

;@@@ Added by jagriti(20.1.2014)
;He tried to shake himself off his bad companions.
;उसने बुरे साथियों से खुद को पीछा छुडाने की कोशिश की.
(defrule shake10
(declare (salience 4600))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-off_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pICA_CudZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shake.clp 	shake10   "  ?id "  pICA_CudZA )" crlf))
)
;@@@ Added by jagriti(20.1.2014)
;She shook out the bucket filled with water. 
;उसने पानी से भरी बाल्टी को गिराकर खाली कर दिया.
(defrule shake11
(declare (salience 4500))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 out)
(kriyA-object ?id ?id2)
(id-root ?id2 bucket)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 girAkara_KAlI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shake.clp	shake11  "  ?id "  " ?id1 "  girAkara_KAlI_kara )" crlf))
)

;@@@ Added by jagriti(20.1.2014)
;He shook out the mat in his courtyard.
;उसने अपने आंगन में चटाई को झाड़ा.
(defrule shake12
(declare (salience 4400))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 out)
(kriyA-object ?id ?id2)
(id-root ?id2 mat)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 JAdZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shake.clp shake12  "  ?id "  " ?id1 "  JAdZa )" crlf))
)
;@@@ Added by jagriti(20.1.2014)
;She shook out cloths in his courtyard.
;उसने अपने आंगन में कपड़े फैलाए. 
(defrule shake13
(declare (salience 4300))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 out)
(kriyA-object ?id ?id2)
(id-root ?id2 cloth)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PElA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shake.clp shake13  "  ?id "  " ?id1 "  PElA )" crlf))
)

;@@@ Added by jagriti(20.1.2014)
;Mother shook up the child from his sleep.
;माँ ने बच्चे को उसकी नींद से जगा दिया.
(defrule shake14
(declare (salience 4200))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shake.clp shake14 "  ?id "  " ?id1 "  jagA )" crlf))
)


;"shake","N","1.hilAnA"
;Give the jar a good shake.
;--"2.spanxana"
;--"3.kRaNa"
;Hang on! I'll be ready in two shakes.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_shake4
(declare (salience 5001))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 awake)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jagA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shake.clp   sub_samA_shake4   "   ?id " jagA_xe )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_shake4
(declare (salience 5001))
(id-root ?id shake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 awake)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jagA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shake.clp   obj_samA_shake4   "   ?id " jagA_xe )" crlf))
)
