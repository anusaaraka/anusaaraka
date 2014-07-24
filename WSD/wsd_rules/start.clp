
(defrule start0
(declare (salience 5000))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-up_saMbanXI ?id ?) ;Automatically modified kriyA-upasarga to kriyA-prep_saMbanXI by Sukhada's program. 
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calA));Automatically modified 'affecting_id-affected_ids-wsd_group_root_mng ?id ?id1' to 'id-wsd_root_mng ?id ' by Sukhada's program. 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* " start.clp start0 " ?id "  calA )" crlf)) 
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
;@@@ Added by jagriti(5.4.2014)
;He came and started the machine.[rajpal]
;वह आया और मशीन चालू किया . 
(defrule start5
(declare (salience 5200))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?id1)
(id-root ?id1 car|engine|machine)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAlU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  start.clp 	start5   "  ?id "  cAlU_kara )" crlf))
)
;@@@ Added by jagriti(5.4.2014)
;He has started on a journey.[rajpal]
;वह यात्रा पर चल पडा.
(defrule start8
(declare (salience 5100))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(or(kriyA-on_saMbanXI ?id ?id1)(kriyA-for_saMbanXI ?id ?id1)(kriyA-at_saMbanXI ?id ?id1))
(not(kriyA-object ?id ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  start.clp 	start8   "  ?id "  cala_padZa)" crlf))
)
;@@@ Added by jagriti(5.4.2014)
;When I reached the station,the train had started.[rajpal]
;जब मैं स्टेशन पहुंचा तो ट्रेन छूट चुकी थी.
(defrule start9
(declare (salience 5000))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-subject ?id ?id1)
(id-root ?id1 train|bus)
(not(kriyA-object ?id ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CUta_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  start.clp 	start9   "  ?id "  CUta_jA)" crlf))
)
;@@@ Added by jagriti(5.4.2014)
;The sudden noise made the child start.[rajpal]
;अचानक शोर ने बच्चे को चौका दिया.
(defrule start10
(declare (salience 5000))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun )
(kriyA-object ?id1 ?id)
(id-root ?id1 make)
(samAsa_viSeRya-samAsa_viSeRaNa ?id ?id2)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cOkA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " start.clp	start10  "  ?id "  " ?id1 "  cOkA_xe  )" crlf))
)
;@@@ Added by jagriti(5.4.2014)
;We made a start at a good time.[rajpal]
;हमने अच्छे समय में प्रस्थान किया.
(defrule start11
(declare (salience 5000))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun )
(kriyA-object ?id1 ?id)
(id-root ?id1 make)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prasWAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " start.clp	start11  "  ?id "  " ?id1 "  prasWAna_kara )" crlf))
)
;@@@ Added by jagriti(5.4.2014)
;He got a start of ten meters.[rajpal]
;उसने दस मीटर की रिआयत प्राप्त की . 
(defrule start12
(declare (salience 5000))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun )
(kriyA-object ?id1 ?id)
(id-root ?id1 get)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id riAyawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  start.clp 	start12   "  ?id "  riAyawa)" crlf))
)
;....Default Rule....
;$$$ Modified by jagriti(3.4.2014)..default meaning Suru_kara instead of Suru_ho
;For simplicity we shall start with a two particle system.[ncert]
;सरलता की दृष्टि से हम दो कणों के निकाय से शुरुआत करेङ्गे.
(defrule start6
(declare (salience 100))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Suru_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  start.clp 	start6   "  ?id "  Suru_kara )" crlf))
)


(defrule start7
(declare (salience 100))
(id-root ?id start)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AramBa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  start.clp 	start7   "  ?id "  AramBa )" crlf))
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
