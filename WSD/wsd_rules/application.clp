
(defrule application0
(declare (salience 5000))
(id-root ?id application)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) of)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upayoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  application.clp 	application0   "  ?id "  upayoga )" crlf))
)



;Added by sheetal
;Please enclose a curriculum vitae with your letter of application .
(defrule application2
(declare (salience 4950))
(id-root ?id application)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1  letter)
(viSeRya-of_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  application.clp       application2   "  ?id "  - )" crlf))
)

;Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 18-nov-2013
;They accepted some applications and rejected others.[old]
;उन्होंने कुछ आवेदन-पत्र को स्वीकार किया और अन्य नामञ्जूर किए 
;Argentina has submitted an application to host the World Cup.[cambridge]
;अर्जेंटीना ने विश्व कप की मेजबानी के लिए एक आवेदन-पत्र जमा किया है
(defrule application3
(declare (salience 5500))
(id-root ?id application)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object ?id1 ?id)(kriyA-subject ?id1 ?id))
(id-root ?id1 submit|reject|accept|fill|send);added send in the list by Garima Singh. eg: I've sent off applications for four different jobs.
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avexana-pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  application.clp       application3   "  ?id "  Avexana-pawra )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 8-jan-2014
;The judge refused her application for bail.
;न्यायाधीश ने जमानत के लिए उसकी अर्जी को नामजूंर कर दिया.
(defrule application4
(declare (salience 5500))
(id-root ?id application)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?kri ?id1)
(id-word ?id1 bail)
(kriyA-object  ?kri ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  application.clp       application4   "  ?id "  arjI )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-jan-2014
;My application got lost in the post.
;मेरा आवेदन पञ डाक में खो गया
(defrule application5
(declare (salience 5500))
(id-root ?id application)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avexana-pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  application.clp       application5   "  ?id "  Avexana-pawra )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 15/03/2014
;Applications must be in by April 30.[oald]
;आवेदन पञ ३० अप्रैल तक पहुँच जाने चाहिये
(defrule application6
(declare (salience 5500))
(id-root ?id application)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?kri ?id)
(kriyA-in_by_saMbanXI  ?kri ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Avexana-pawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  application.clp       application6   "  ?id "  Avexana-pawra )" crlf))
)




;*******************DEFAULT RULES**********************************

;These are some of the applications of space science.
(defrule application1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id application)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayoga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  application.clp 	application1   "  ?id "  prayoga )" crlf))
)
;default_sense && category=noun	prArWanA_pawra	0
;"application","N","1.prArWanA_pawra"
;Application forms are available with the booking clerk from 11.00 to 16.00 hr.
;Avoid frequent application of the brakes .
;--"2.prayoga"
;The application of 'BURNOL' on burns is in common use nowadays .
;Street application of traffic rules avoid so many accidents .
;
;
