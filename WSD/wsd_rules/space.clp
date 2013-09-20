
(defrule space0
(declare (salience 5000))
(id-root ?id space)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id spacing )
(viSeRya-between_saMbanXI ?id ?);Added by Shirisha Manju Suggested by Chaitanya Sir (19-09-13)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aMwarAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  space.clp  	space0   "  ?id "  aMwarAla )" crlf))
)

;"spacing","N","1.aMwarAlana"
;There is a lot of space between sun && moon.
;



(defrule space1
(declare (salience 4900))
(id-root ?id space)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id spaced )
(id-word ?id1 out)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 anwara_para_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " space.clp	space1  "  ?id "  " ?id1 "  anwara_para_raKa  )" crlf))
)




(defrule space3
(declare (salience 4700))
(id-root ?id space)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anwara_para_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  space.clp 	space3   "  ?id "  anwara_para_raKa )" crlf))
)


;Added by Meena(29.5.10)
;And 21 could stand for the 21 cm radio frequency of hydrogen in space .
;Was it a message from some intelligent beings in outer space ?
;Added kriyA-through_saMbanXI by Shirisha Manju Suggested by Chaitanya Sir (19-09-13) 
;In communication using radio waves, an antenna at the transmitter radiates the Electromagnetic waves (em waves), which travel through the space and reach the receiving antenna at the other end.
(defrule space4
(declare (salience 4600))
(id-root ?id space)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-in_saMbanXI  ?id1 ?id)(kriyA-in_saMbanXI ?id1  ?id)(kriyA-through_saMbanXI ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwarikRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  space.clp     space4   "  ?id "  aMwarikRa )" crlf))
)




;Salience reduced by Meena(29.5.10)
(defrule space5
(declare (salience 0))
(id-root ?id space)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  space.clp 	space4   "  ?id "  jagaha )" crlf))
)



;default_sense && category=noun	jagaha	0
;"space","N","1.jagaha"
;To play cricket we need a big space.
;--"2.anwarikRa"
;Niel Amstronge was the first person to go in to the space.
;
;
