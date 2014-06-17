
(defrule wheel0
(declare (salience 5000))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wheel.clp 	wheel0   "  ?id "  pahiyA )" crlf))
)

;"wheel","N","1.pahiyA"
;The wheel in the cycle is not moving.
;

;@@@ Added by Pramila Banasthali 06-03-2014
;The scouts wheeled around the fair.   ;shiksharthi
;स्काउट मेले के आस-पास घूमते रहे.
(defrule wheel1
(declare (salience 5000))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-around_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUmawA_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wheel.clp 	wheel1   "  ?id "  GUmawA_raha )" crlf))
)

;@@@ Added by Pramila Banasthali 06-03-2014
;He wheeled to the right.  ;shiksharthi
;वह दाँयी ओर मुड़ा.
(defrule wheel2
(declare (salience 4900))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wheel.clp 	wheel2   "  ?id "  mudZa )" crlf))
)

;@@@ Added by Pramila Banasthali 06-03-2014
;Kites are wheeling about.  ;shiksharthi
;चील चक्कर काट रही है.
(defrule wheel3
(declare (salience 5000))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse =(+ ?id 1) adverb)
(id-word =(+ ?id 1) about)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) cakkara_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wheel.clp 	wheel3  "  ?id "  "  (+ ?id 1)  "  cakkara_kAta )" crlf))
)


;@@@ Added by Pramila Banasthali 06-03-2014
;They wheeled him away to the hospital.    ;shiksharthi
;वे उसे अस्पताल ले गए.
(defrule wheel4
(declare (salience 5000))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 away)
(id-word =(+ ?id 2) to)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 (+ ?id 2) le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wheel.clp 	wheel4  "  ?id "  "  ?id1 (+ ?id 2)  "  le_jA )" crlf))
)

;@@@ Added by Pramila Banasthali 06-03-2014
;He wheeled his bicycle to the hill.   ;shiksharthi
;वह अपनी साइकिल पहाड़ी पर ले गया.
(defrule wheel5
(declare (salience 5000))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(kriyA-to_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wheel.clp 	wheel5   "  ?id "  le_jA )" crlf))
)

;@@@ Added by Pramila Banasthali 06-03-2014
;She wheeled her bicycle across the road.  ;oald
;वह अपनी साइकिल सड़क के उस पार ले गई.
;The nurse wheeled him along the corridor.  ;oald
;नर्स उसे बरामदे से ले गई.
(defrule wheel6
(declare (salience 5000))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-across_saMbanXI  ?id ?id1)(kriyA-along_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wheel.clp 	wheel6   "  ?id "  le_jA )" crlf))
)

;@@@ Added by Pramila Banasthali 06-03-2014
;He wheeled his horse back to the gate.  ;oald
;उसने अपने घोडे को गेट की ओर वापिस मोड़ा.
(defrule wheel7
(declare (salience 5000))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-word ?id1 back)
(kriyA-object  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id modZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wheel.clp 	wheel7   "  ?id "  modZa )" crlf))
)

;@@@ Added by Pramila Banasthali 06-03-2014
;Birds wheeled above us in the sky.  ;oald
;पक्षी आकाश में ऊपर चक्कर काट रहे थे.
(defrule wheel8
(declare (salience 5000))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-above_saMbanXI  ?id ?id1)
(kriyA-in_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakkara_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wheel.clp 	wheel8   "  ?id "  cakkara_kAta )" crlf))
)

(defrule wheel9
(declare (salience 100))
(id-root ?id wheel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahiyoM_para_le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wheel.clp 	wheel9   "  ?id "  pahiyoM_para_le_jA )" crlf))
)

;"wheel","VTI","1.pahiyoM_para_le_jAnA"
;He wheeled the goods from place to place.
;
