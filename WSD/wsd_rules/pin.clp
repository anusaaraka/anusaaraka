
(defrule pin0
(declare (salience 5000))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 down)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pin.clp	pin0  "  ?id "  " ?id1 "  xe  )" crlf))
)

;I'can't pin u down to a definite date of the party.
;mEM wumheM pArtI ke lie eka niSciwa wiWi nahIM xe sakawA
(defrule pin1
(declare (salience 4900))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AlapIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pin.clp 	pin1   "  ?id "  AlapIna )" crlf))
)

;"pin","N","1.AlapIna"
;Get me a packet of pins.
;--"2.suI_kI_noka"
;Please don't irritate me with this pin.
;--"3.KUztI"
;Rakesh hanged your coat on pin.
;--"4.pEra"
;Anu's pins are effected by polio.
;
(defrule pin2
(declare (salience 4800))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pina_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pin.clp 	pin2   "  ?id "  pina_lagA )" crlf))
)

;"pin","V","1.pina_lagAnA"
;She pinned the bills together.
;


;@@@ Added by Sonam Gupta MTech IT Banasthali 17-1-2014
;They tried to pin the murder on the dead woman's husband. [Cambridge]
;उन्होंने मृत स्त्री के पति पर खून का दोष लगाने का प्रयास किया . 
(defrule pin3
(declare (salience 5500))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 murder|assassinate|mascare|robbery|steal)
(kriyA-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRa_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pin.clp 	pin3   "  ?id "  xoRa_lagA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 17-1-2014
;He supports the group and wears its pin on his lapel. [OALD]
;वह दल को समर्थन देता है और उसके खुले गले के कोट कालर पर उसका बिल्ला पहनता है . 
(defrule pin4
(declare (salience 5500))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 wear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id billA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pin.clp 	pin4   "  ?id "  billA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 17-1-2014
;They pinned him against a wall and stole his wallet. [OALD]
;उन्होंने उसे दीवार से बाँधा और उसका बटुअा चुरा लिया . 
(defrule pin5
(declare (salience 5500))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-against_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pin.clp 	pin5   "  ?id "  bAzXA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 17-1-2014
;They pinned him to the ground.  [Cambridge]
;उन्होंने उसे जमीन पर पटका . 
(defrule pin6
(declare (salience 5500))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?id1)
(id-root ?id1 ground)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pin.clp 	pin6   "  ?id "  pataka )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 17-1-2014
;They found him pinned under the wreckage of the car.  [OALD]
;उन्होंने उसे गाङी के ध्ंवसावशेष के नीचे बँधा हुआ पाया . 
(defrule pin7
(declare (salience 5500))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-under_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bazXA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pin.clp 	pin7   "  ?id "  bazXA_huA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 17-1-2014
;He's not as quick on his pins as he used to be.  [OALD]
;वह अपने पैरों पर अब उतना तेज नहीं रहा जैसे वो पहले था . 
(defrule pin8
(declare (salience 5500))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pin.clp 	pin8   "  ?id "  pEra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 17-1-2014
;They pinned him down on the floor.  [Cambridge]
;उन्होंने उसे फर्श पर पटका . 
(defrule pin9
(declare (salience 5500))
(id-root ?id pin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 down)
(kriyA-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id patakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pin.clp 	pin9   "  ?id "  patakA )" crlf))
)

