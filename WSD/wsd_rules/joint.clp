
(defrule joint0
(declare (salience 5000))
(id-root ?id joint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAJe_kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  joint.clp 	joint0   "  ?id "  sAJe_kA )" crlf))
)

;"joint","Adj","1.sAJe_kA"
;The project is a joint venture between India && Russia.
;
(defrule joint1
(declare (salience 4900))
(id-root ?id joint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  joint.clp 	joint1   "  ?id "  jodZa )" crlf))
)

;"joint","N","1.jodZa{SarIra_kA}"
;She is suffering from joint pain.
;

;@@@ Added by Prachi Rathore[15-3-14]
;the issue of a joint statement by the French and German foreign ministers.[oald]
;फ्रेन्च और जर्मन विदेशी मन्त्री के द्वारा एक संयुक्त बयान  का निर्णय . 
(defrule joint2
(declare (salience 5500))
(id-root ?id joint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMyukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  joint.clp 	joint2   "  ?id "  saMyukwa )" crlf))
)


;@@@ Added by Prachi Rathore[15-3-14]
;Joint both the ends of the rope.[shiksharthi-kosh]
; रस्सी के दोनो सिरे जोड़ दीजिये . 
(defrule joint3
(declare (salience 500))
(id-root ?id joint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joda_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  joint.clp 	joint3   "  ?id "  joda_xe )" crlf))
)


;@@@ Added by Prachi Rathore[15-3-14]
;We had lunch at a hamburger joint and then went to see a movie. [cambridge]
;हमने एक कीमे के अड्डे पर दोपहर का खाना खाया और फिर चलचित्र  देखने के लिये गया . 
; A fast-food joint.
;एक फ़ास्ट फूड का अड्डा . 

(defrule joint4
(declare (salience 5500))
(id-root ?id joint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaNa  ?id ?id1)(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id addA))
(assert (id-H_vib_mng ?id1 kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  joint.clp 	joint4   "  ?id " addA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  joint.clp 	joint4   "  ?id1 "  kA )" crlf)
))
