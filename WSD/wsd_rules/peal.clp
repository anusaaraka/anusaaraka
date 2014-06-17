
(defrule peal0
(declare (salience 5000))
(id-root ?id peal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TahAkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peal.clp 	peal0   "  ?id "  TahAkA )" crlf))
)

;"peal","N","1.TahAkA/attahAsa"
;After hearing a joke she breaks into the peal of laughter.
;
(defrule peal1
(declare (salience 4900))
(id-root ?id peal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZagadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peal.clp 	peal1   "  ?id "  gadZagadZA )" crlf))
)

;"peal","V","1.gadZagadZAnA"
;Helen pealed with laughter.
;

;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;After their wedding the bells pealed out from the tower. [cambridge]
;विवाह के बाद दुर्ग से घण्टियां खनखनाई . 
(defrule peal2
(declare (salience 5500))
(id-root ?id peal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-subject  ?id ?id1)(viSeRya-of_saMbanXI  ?id ?id1))
(id-root ?id1 bell|ringbell|alarm|chime)
(kriyA-upasarga  ?id ?id2)
(id-root ?id2 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 KanaKanAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " peal.clp  peal2 "  ?id "  " ?id1 "  KanaKanAI  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;A loud peal of thunder woke him from restless sleep.  [cambridge]
;तूफान की तेज़ गड़गड़ाहट ने उसे बेचैनीभरी नीन्द से उठा दिया .
(defrule peal3
(declare (salience 5500))
(id-root ?id peal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 thunder|cloud)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gadZagadZAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peal.clp 	peal3   "  ?id "  gadZagadZAhata )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;When we heard the peal of bells, we knew a truce had been declared. [oald]
;जब हमने घण्टियों की गड़गड़ाहट सुनी, हमें पता लग गया कि युद्धविराम घोषित हो गया है .
(defrule peal4
(declare (salience 5500))
(id-root ?id peal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 bell|ringbell|alarm|chime)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KanaKanAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peal.clp 	peal4   "  ?id "  KanaKanAhata )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;His laughter pealed across the room. [M-W]
;उसकी हँसी कमरे में ठहकाई .
(defrule peal5
(declare (salience 5500))
(id-root ?id peal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 laughter)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TahakAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  peal.clp 	peal5   "  ?id "  TahakAyA )" crlf))
)

