;@@@ Added by Anita 20-12-2013. 
;There is a rent in his jacket. (old clp sentence)
;उसकी जैकेट में चीरा है ।
(defrule rent1
(id-root ?id rent|rend)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-root ?id1 jacket|coat|sweater|clothe|dress|suit)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIrA))
(assert (id-wsd_root ?id rent))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent1   "  ?id "  cIrA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rent.clp     rent1   "  ?id " rent )" crlf))
)

;@@@ Added by Anita 20-12-2013 
;I rented out my house and went travelling for a year.
;मैंने अपना घर किराए पर दे दिया और एक साल की यात्रा पर चला गया ।
(defrule rent2
(id-root ?id rent|rend)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 out)
(kriyA-upasarga  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kirAye_para_xe))
(assert (id-wsd_root ?id rent))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent2   " ?id " " ?id1 " kirAye_para_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rent.clp     rent2   "  ?id " rent )" crlf))
)

;@@@ Added by Anita 20-12-2013
;There are some apartments for rent in these buildings. [old clp sentence]
;इन इमारतों में किराए के लिए कुछ फ्लैट हैं ।
;ina imArawoM meM kirAye ke liye kuCa PlEta hEM. [verified sentence]
(defrule rent3
(id-root ?id rent|rend)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id ?id2)
(id-root ?id2 building|flat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAyA))
(assert (id-wsd_root ?id rent))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent3   " ?id " kirAyA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rent.clp     rent3   "  ?id " rent )" crlf))
)


;"rent","N","1.xarAra"
;$$$ Modified by Anita 21-12-2013 Added relation (viSeRya-in_saMbanXI ?id ?id1) and (id-root ?id1 house|wall|pillar)
;There is a big rent in his new house.
;उसके नये घर में एक बड़ी दरार है ।
(defrule rent4
(id-root ?id rent|rend)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-root ?id1 house|wall|pillar)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarAra))
(assert (id-wsd_root ?id rent))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent4   "  ?id "  xarAra )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rent.clp     rent4   "  ?id " rent )" crlf))
)

;;Added by Anita 20-12-2013
;;Did you buy your video or is it rented? (old clp sentence)
;;क्या तुमने यह वीडियो खरीदा या किराए पर लिया ।
;(defrule rent6
;(declare (salience 4750))
;(id-root ?id rent|rend)
;?mng <-(meaning_to_be_decided ?id)
;(viSeRya-viSeRaNa  ?id ?)
;;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id kirAye_para_le))
;(assert (id-wsd_root ?id rent))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent6   "  ?id "  kirAye_para_le )" crlf)
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rent.clp     rent6   "  ?id " rent )" crlf))
;)
;
;@@@ Added by Anita 21-12-2013
;With one stroke of his sword, he rent his enemy's helmet in two. [cambridge dictionary]
;तलवार के एक झटके से उसने अपने दुश्मन के शिरस्त्राण को दो टुकड़ों में फाड़ दिया ।
(defrule rent5
(id-root ?id rent|rend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI ?id ?)
(kriyA-object  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PAdZa_xe))
(assert (id-wsd_root ?id rend))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent5   " ?id "  PAdZa_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rent.clp     rent5   "  ?id " rend )" crlf))
)
;@@@ Added by Anita 21-12-2013
;A terrifying scream rent the air.  [cambridge dictionary]
;एक भयावह चीख ने हवा को चीर दिया ।
(defrule rent6
(id-root ?id rent|rend)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 scream)
(kriyA-subject  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIra_xe))
(assert (id-wsd_root ?id rend))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent6   " ?id "  cIra_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rent.clp     rent6   "  ?id " rend )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " rent.clp    rent6   "  ?id " ko )" crlf))
)

;$$$ Modified by Anita 23-12-2013. Modified root fact and asserted root fact.
;He will be renting an apartment until he can find a house to buy. [cambridge dictionary]
;जब तक वह  खरीदने के लिए घर ढूँढ पाता है तब तक वह एक फ़्लैट किराए पर लेगा ।
(defrule rent7
(declare (salience -5))
(id-root ?id rent|rend)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAye_para_le))
(assert (id-wsd_root ?id rent))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp      rent7   "  ?id "  kirAye_para_le )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rent.clp     rent7   "  ?id " rent )" crlf))
)

;################################default-rule#################################
;$$$ Modified by Anita 21-12-2013. removed relations (id-word ?id1 take) and (kriyA-object ?id1 ?id)
;--"2.kirAyA"
;Monthly rent of his house is Rs.2000. [Old clp sentence rule]
;उसके घर का मासिक किराया २००० रुपये है ।
;Take this rent.
;yaha kirAyA lIjie.
;His house to be leased or let for rent.  (old clp sentence)
;उसका घर पट्टे के लिए या किराए के लिए है ।
(defrule rent_default_noun
(declare (salience -10))
(id-root ?id rent|rend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAyA))
(assert (id-wsd_root ?id rent))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent_default_noun   "  ?id "  kirAyA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rent.clp     rent_default_noun   "  ?id " rent )" crlf))
)

;$$$ Modified by Anita 21-12-2013. Modified root fact and asserted root fact. 
(defrule rent_default_verb
(declare (salience -10))
(id-root ?id rent|rend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kirAye_para_xe))
(assert (id-wsd_root ?id rent))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rent.clp 	rent_default_verb   "  ?id "  kirAye_para_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root   " ?*wsd_dir* "  rent.clp     rent_default_verb   "  ?id " rent )" crlf))
)

;--"2.kirAyA_lekara_prayoga_karane_kA_aXikAra_praxAna_karanA"
;His house to be leased or let for rent.  
