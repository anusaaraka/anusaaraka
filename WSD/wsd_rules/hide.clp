;Added by Preeti (30-08-13)
;Boots made from buffalo hide.
;भेंस की खाल से बने जूते.
(defrule hide_KAla
(declare (salience 900))
(id-root ?id hide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hide.clp 	hide_KAla   "  ?id "  KAla )" crlf))
)

;Added by Preeti (30-08-13)
;He is only worried about his own hide. 
;वह सिर्फ अपनी सुरक्षा के लिए चिंतित है.
(defrule hide_surakRA
(declare (salience 1000))
(id-root ?id hide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id surakRA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hide.clp 	hide_surakRA   "  ?id "  surakRA )" crlf))
)

;Modifed by Preeti (30-08-13)
;He hid the letter in a drawer.
;उसने पत्र को दराज में छिपाया. 
;He hid his face in his hands.
;उसने अपने हाथों में अपना चहरा छिपाया.
(defrule hide_CipA
(declare (salience 1200))
(id-root ?id hide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?) 
(or(kriyA-object ?id ?)(kriyA-kriyArWa_kriyA  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hide.clp 	hide_CipA  "  ?id "  CipA )" crlf))
)

;Modifed by Preeti (30-08-13)
;The house was hidden by trees.
;घर पड़ों से छिप गया था.
;The sun was hidden by the clouds.
;सूर्य बादलों से छिप गया था.
;cloud, tree added in by.clp&hide in was_en_tam.clp 
(defrule hide_Cipa
(declare (salience 1100))
(id-root ?id hide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(not(kriyA-object ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cipa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hide.clp 	hide_Cipa   "  ?id "  Cipa )" crlf))
)

;Added by Preeti (30-08-13)
;She hides herself away in her office all day.
;वह स्वंय को पूरा दिन दफ्तर में छिपाती है. 
(defrule hide_CipA1
(declare (salience 1250))
(id-root ?id hide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 away)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  hide.clp 	hide_CipA1  "  ?id "  " ?id1 " CipA )" crlf))
)

;Added by Preeti (30-08-13)
;She felt sure the letter had some hidden meaning.
;usane niSciwa mahasUsa kiyA pawra kA kuCa CipA arWa WA.
;All the hidden dangers lurk in the ocean depths.
;सभी छिपे खतरे महासागर की गहराई में छिपे रहते हैं.
(defrule hide_CipA2
(declare (salience 1300))
(id-root ?id hide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hidden)
(id-cat_coarse =(+ ?id 1) noun)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  CipA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  hide.clp 	hide_CipA2  "  ?id "  CipA )" crlf))
)


;Added by Preeti (30-08-13)
;I keep my private papers hidden.
;मैं अपने व्यक्तिगत पेपर छिपाकर रखता हूँ.
(defrule hide_CipA_kara
(declare (salience 1350))
(id-root ?id hide)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id hidden)
(viSeRya-kqxanwa_viSeRaNa  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id  CipA_kar))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  hide.clp 	hide_CipA_kara  "  ?id "  CipA_kar )" crlf))
)


