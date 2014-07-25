;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;The gang entered the building posing as workmen. [OALD]
;दल ने श्रमिकों के जैसा दिखावा करते हुए इमारत में प्रवेश किया . 
(defrule pose0
(declare (salience 5000))
(id-root ?id pose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-as_saMbanXI  ?id ?)(kriyA-out_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAvA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pose.clp 	pose0   "  ?id "  xiKAvA_kara )" crlf))
)





;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;An elegant pose. [Cambridge]
;एक सुरुचिपूर्ण मुद्रा . 
(defrule pose1
(declare (salience 4900))
(id-root ?id pose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 adjective|verb)
(or(kriyA-subject  ?id ?id1)(kriyA-vAkyakarma  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muxrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pose.clp 	pose1   "  ?id "  muxrA )" crlf))
)

;$$$ Modified by Sonam Gupta MTech IT Banasthali 10-3-2014
;Her benevolence is a sheer pose. [Rajpal]
;उसकी दयालुता महज एक दिखावा है .
;He posed to be a very intelligent person. [Rajpal]
;वह एक बहुत बुद्धिमान व्यक्ति होने का दिखावा करता है .
;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;She's not really interested in art, it's just a pose. [Cambridge]
;वह कला में वास्तव में रुचि रखनेवाला नहीं है, यह सिर्फ दिखावा है . 
(defrule pose2
(declare (salience 4800))
(id-root ?id pose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-viSeRaka  ?id ?)(viSeRya-viSeRaNa  ?id ?)(kriyA-kqxanwa_karma  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pose.clp 	pose2   "  ?id "  xiKAvA )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;To pose a threat challenge. [OALD]
;एक धमकी चुनौती देना . 
(defrule pose3
(declare (salience 4700))
(id-root ?id pose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 threat|danger|risk|challenge)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pose.clp 	pose3   "  ?id "  xe )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;The two leaders posed for photographs outside the White House. [Cambridge]
;दो नेताओं ने व्हाइट हाउस के बाहर फोटो के लिए मुद्रा बनाई . 
(defrule pose4
(declare (salience 4600))
(id-root ?id pose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-for_saMbanXI  ?id ?)(kriyA-in_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muxrA_banAI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pose.clp 	pose4   "  ?id "  muxrA_banAI )" crlf))
)


(defrule pose5
(declare (salience 4500))
(id-root ?id pose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pose.clp 	pose5   "  ?id "  praswuwa_kara )" crlf))
)


(defrule pose6
(declare (salience 4400))
(id-root ?id pose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muxrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pose.clp 	pose6   "  ?id "  muxrA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 10-3-2014
;He posed a question in the meeting. [Rajpal]
;उसने सभा में एक प्रश्न प्रस्तुत किया .
(defrule pose7
(declare (salience 4900))
(id-root ?id pose)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 question)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pose.clp 	pose7   "  ?id "  praswuwa_kara )" crlf))
)

;"pose","N","1.muxrA"
;I made a comfortable pose for the camera.
;--"2.Cala-kapata"
;Her generosity is only a pose.
;
;
