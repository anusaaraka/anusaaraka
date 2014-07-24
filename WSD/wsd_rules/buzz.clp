
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-Feb-2014
;The doctor buzzed for the next patient to come in.[oald]
;डाक्टर ने अगले मरीज के अंदर आने के लिये घंटी बजायी . 
(defrule buzz2
(declare (salience 5000))
(id-root ?id buzz)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GaMtI_bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buzz.clp 	buzz2   "  ?id "  GaMtI_bajA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-Feb-2014
;I've been buzzing around town all day sorting out my trip.[oald]
;मैं अपनी याञा को सुलझाते हुये पूरा दिन नगर के चारों ओर भागता रहा हूँ . 
(defrule buzz3
(declare (salience 5000))
(id-root ?id buzz)
?mng <-(meaning_to_be_decided ?id)
(kriyA-around_saMbanXI  ?id ? )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buzz.clp 	buzz3   "  ?id "  BAga )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-Feb-2014
;Just buzz off and let me get on with my work.[oald]
;बस दूर चले जाओ और मुझे मेरा काम करने दो
(defrule buzz4
(declare (salience 5000))
(id-root ?id buzz)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xUra_cale_jAo))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " buzz.clp	buzz4  "  ?id "  " ?id1 "  xUra_cale_jAo )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-Feb-2014
;The buzz is that Matt is in Scotland. [oald]
;चर्चा|अफवाह  है कि मैट स्कोटलैंड में है
(defrule buzz5
(declare (salience 5000))
(id-root ?id buzz)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?id1)
(id-word ?id1 the)
;(kriyA-vAkyakarma  ?kri ?id2);uncomment the below lines if any conflict is found and comment the above line
;(kriyA-vAkya_viBakwi  ?id2 ?id3)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id carcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buzz.clp 	buzz5   "  ?id "  carcA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)10-Feb-2014
;I'll give you a buzz on Monday, OK?[oald]
;मैं आपको सोमवार को फोन करूँगा
(defrule buzz6
(declare (salience 5000))
(id-root ?id buzz)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object_2  ?kri ?id)
(id-root ?kri give)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pona))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buzz.clp 	buzz6   "  ?id "   Pona )" crlf))
)

;*******************************DEFAULT RULES******************************

(defrule buzz0
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id buzz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BanaBanAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buzz.clp 	buzz0   "  ?id "  BanaBanAhata )" crlf))
)

;"buzz","N","1.BanaBanAhata"
;The buzz of a bee distracted my concentration.
;
(defrule buzz1
(declare (salience 0));salience reduced by Garima Singh
(id-root ?id buzz)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BanaBanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  buzz.clp 	buzz1   "  ?id "  BanaBanA )" crlf))
)

;"buzz","V","1.BanaBanAnA"
;This office is buzzing with activity.
;

;**************************EXAMPLES**************************************

;Bees buzzed lazily among the flowers.
;The doorbell buzzed loudly.
;My ears were buzzing .
;New York buzzes from dawn to dusk.
;My head was still buzzing after the day's events.
;The place was buzzing with journalists.
;The doctor buzzed for the next patient to come in.
;I've been buzzing around town all day sorting out my trip.
;Just buzz off and let me get on with my work.

;The buzz of bees hunting nectar.
;The buzz of the Entryphone interrupted our conversation.
;The buzz of conversation suddenly stopped when she came into the room.
;Buzz of excitement/expectation.
;She gets a buzz out of her work.
;Flying gives me a real buzz.
;You can sense the creative buzz in the city.
;The buzz is that Matt is in Scotland. 
;I'll give you a buzz on Monday, OK?
