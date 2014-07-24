(defrule remain0
(declare (salience 5000))
(id-root ?id remain)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 speed)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bane_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain0   "  ?id "  bane_raha )" crlf))
)

;As of now commenting this rule as we are getting mapping problem for the word "mother's"
;Added by Anita-19.12.2013
;;She will remain at her mother's until I return.
;;जब तक मैं लौटता हूँ तब तक वह अपनी माँ के यहाँ बनी रहेगी ।
;(defrule remain1
;(declare (salience 3000))
;(id-root ?id remain)
;?mng <-(meaning_to_be_decided ?id)
;(kriyA-subject ?id ?)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id banA_raha))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain1   "  ?id "  banA_raha )" crlf))
;)
;
(defrule remain2
(declare (salience 4700))
(id-root ?id remain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
;(id-root ?sub  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str))) ;Added by Manju Suggested by Chaitanya Sir (17-08-13) ... the problem remains. ... samasyA SeRa rahawI hE
(id-root ?id1 ?sub);As suggested by Chaitanya Sir removed inanimate.gdbm and modified the fact as shown by Roja (03-12-13) 
(test (and (neq (numberp ?sub) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?sub) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SeRa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain2   "  ?id "  SeRa_raha )" crlf))
)

;@@@ Added by Anita 19.12.2013
;Despite the chaos around him, he remained calm. [cambridge dictionary]
;उसके इधर-उधर अव्यवस्था के बावजूद वह शान्त रहा ।  (verified-sentence)
(defrule remain3
(declare (salience 4800))
(id-root ?id remain)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id2 calm)
(kriyA-subject  ?id ?id1)
(subject-subject_samAnAXikaraNa  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain3   "  ?id "  raha )" crlf))
)

;@@@ Added by Anita -18.12.2013
;Only a few hundred of these animals remain today. [cambridge dictionary]
;इनमें से अब कुछ सौ जानवर ही बचे हैं ।
;ina paSuoM kA sirPa kuCa sO Aja bacawA hE. (tam problem & word order problem)
(defrule remain4
(declare (salience 4900))
(id-root ?id remain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain4   "  ?id "  baca )" crlf))
)

;@@@ Added by Anita -18.12.2013
;The exact date of the wedding remains a secret. [cambridge dictionary]
;शादी की पक्की तारीख एक राज़ बनी हुई है । (tam problem)
(defrule remain5
(declare (salience 4950))
(id-root ?id remain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "time.gdbm" ?str)))
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root ?id2 wedding|birthday|marriage|event|anniversary)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain5   "  ?id "  banI_ho )" crlf))
)

;Added by Anita -18.12.2013
;Mix in half the butter and keep the remaining 50g for later. [cambridge dictionary]
;आधा मक्खन मिलाएं और शेष ५० ग्राम बाद के लिए रख लें ।
;(defrule remain5
;(declare (salience 5000))
;(id-root ?id remaining)
;?mng <-(meaning_to_be_decided ?id)
;(id-root ?id1 50g)
;(id-root ?id2 later)
;(id-root ?id3 the)
;(and(viSeRya-viSeRaNa  ?id1 ?id)(viSeRya-for_saMbanXI  ?id1 ?id2)(viSeRya-det_viSeRaNa  ?id1 ?id3))
;(id-cat_coarse ?id adjective)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id SeRa))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain5   "  ?id ;"  SeRa )" crlf))
;)

;@@@ Added by Anita -19.3.2014
;Hawaii remains a popular choice for winter vacation travel. [By mail]
;जाड़ा अवकाश के लिये हवाई एक लोकप्रिय विकल्प शेष रहता है।
(defrule remain6
(declare (salience 5000))
(id-root ?id remain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "place.gdbm" ?str)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SeRa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain6   "  ?id "  SeRa_raha )" crlf))
)

;####################################default-rule#################################

;@@@ Added by Anita -19.12.2013
;The remains of a Buddhist temple. [cambridge dictionary]
;बौद्ध मंदिर के अवशेष
;Three months after he disappeared, his remains were found in a cave.  [cambridge dictionary]
;उसके तीन महीने तक ग़ायब रहने के बाद एक गुफा में उसके अवशेष पाए गए ।
(defrule remain_default_noun
(id-root ?id remain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaSeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain_default_noun   "  ?id "  avaSeRa )" crlf))
)

(defrule remain_default_verb
(declare (salience 100))
(id-root ?id remain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  remain.clp 	remain_default_verb   "  ?id "  raha )" crlf))
)

;"remain","V","1.[SeRa]_raha"
;default_sense && category=verb	[SeRa]_raha	0
;"remain","VI","1.SeRa_rahanA"
;If you take 5 from 9,4 remains.
;After the fire,very little remained of the building.
;Much still remains to be done.
;--"2.bane_rahanA"
;Remain standing until I ask you.      
;I shall remain with you for a week.
;
