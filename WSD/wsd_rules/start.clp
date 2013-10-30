
(defrule start0
(declare (salience 5000))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " start.clp	start0  "  ?id "  " ?id1 "  calA  )" crlf))
)

(defrule start1
(declare (salience 4900))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 calA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " start.clp	start1  "  ?id "  " ?id1 "  calA  )" crlf))
)

(defrule start2
(declare (salience 4800))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 it)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SUru_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  start.clp 	start2   "  ?id "  SUru_ho )" crlf))
)

(defrule start3
(declare (salience 4700))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(id-word =(+ ?id 1) ing_clause)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SUru_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  start.clp 	start3   "  ?id "  SUru_karanA )" crlf))
)

; Rather than transitivity && intransitivity, the sense depends on the 'karwA'
; eg: He started singing a song.
; I have started working .
(defrule start4
(declare (salience 4600))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
;(or(kriyA-ibject ?id ?)(kriyA-kqxanwa_object ?id ?))
(or (kriyA-kqxanwa_viSeRaNa  ?id ?id1)(kriyA-object ?id ?)(kriyA-kqxanwa_karma ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Suru_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  start.clp 	start4   "  ?id "  Suru_kara )" crlf))
)

(defrule start5
(declare (salience 4500))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Suru_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  start.clp 	start5   "  ?id "  Suru_ho )" crlf))
)

(defrule start6
(declare (salience 4400))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AramBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  start.clp 	start6   "  ?id "  AramBa )" crlf))
)

;"start","N","1.AramBa"
;The players took position at the start.
;--"2.cOMka"
;Give it a new start.
;
;
;LEVEL 
;
;
;Headword : start
;
;Examples --
;
;"start","V","1.AraMBa karanA"
;Students started writing.
;vixyArWiyoM ne liKanA AraMBa kara xiyA.
;
;"2.cAlU karanA"
;He came && started his car.  
;vaha AyA Ora usane apanI kAra cAlU kara xI.
;
;"3.SurU honA"<--AraMBa honA 
;How did the quarrel start?
;JagadZA kEse SurU huA?
;
;"start","N","1.AramBa"
;If the start is good the end will also be good.
;yaxi AraMBa acCA hE wo aMwa BI acCA hI hogA.
;
;"2.prasWAna"<--prAraMBa kiyA<--AraMBa kiyA
;We made a start at a good time
;hamane acCe samaya para prasWAna kiyA
;
;"3.cOMka"
;The mother could not know the reason for the start of the child.
;mAz bacce kI cOMka kA kAraNa na samaJa sakI.
;
;nota:-- yaxi'start'Sabxa ke samaswa 'saMjFA'Ora 'kriyA' ke vAkyoM para xqRti dAleM
;      wo yaha niRkarRa nikAla sakawe hEM ki uparyukwa aXikAMSa SabxoM kA arWa mUla 
;      Sabxa'AraMBa' se xiyA jA sakawA hE awaH isake liye nimna sUwra xe sakawe
;      hEM       
;             sUwra:AraMBa[karanA/honA]/cOMkanA
;
;
;
