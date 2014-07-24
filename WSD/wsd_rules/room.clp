;This file is created by Aditya and Hardik(21-06-2013),IIT(BHU) batch 2012-2017.

;$$$ Modifed by Anita--4.3.2014
;Removed (kriyA-object ?id1 ?id)|(kriyA-aBihiwa ?id1 ?id)  
;He has no room for her in his life. [old clp sentence]
;उसकी जिन्दगी में उसके लिए कोई स्थान नहीं है ।
(defrule room1
(declare (salience 4000))
(id-root ?id room)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id ?id1); ;added by Anita 4-3-2014
(id-root ?id1 life)	;added by Anita 4-3-2014
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  room.clp 	room1   "  ?id "  sWAna )" crlf))
)

;@@@ Added by Anita--24.2. 2014
;A draft of cold air entered the room through the open window.  [Gyan Nidhi]
;ठण्डी हवा के झोंके ने खुली खिडकी में से कमरे में प्रवेश किया ।
;TaNdI havA ke JoMke ne KulI KidakI meM se kamare meM praveSa kiyA. [verified sentence]
(defrule room2
(declare (salience 3000))
(id-root ?id room)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 window|door)
(kriyA-object ?kri ?id)
(kriyA-through_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  room.clp 	room2   "  ?id "  kamarA )" crlf))
)

;@@@ Added by Anita--4.3.2014
;There is enough room to accomodate everyone.
;हर किसी को समायोजित करने के लिए पर्याप्त जगह है ।
(defrule room3
(declare (salience 5000))
(id-word ?id room)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id2)
(id-root ?id2 enough)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  room.clp 	room3   "  ?id "  jagaha )" crlf))
)

;@@@ Added by Anita--4.3.2014
;There is always a room for improvement . [old clp sentence]
;सुधार के लिए हमेशा गुंजाइश है ।
(defrule room4
(declare (salience 3075))
(id-root ?id room)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guMjAiSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  room.clp 	room4   "  ?id "  guMjAiSa )" crlf))
)
;#############################default-rule###################################


;$$$ Modified by Anita--4.3.2014
;Removed (id-word ?id rooms) fact
;There are enough rooms to accomodate everyone. [Old clp sentence]
;वहाँ प्रत्येक को समायोजित करने पर्याप्त कमरे हैं ।
;Do this in your room.
;Apake kamare meM yaha kIjie.
;I was sleeping in my room.
;mEM mere kamare meM so rahA WA.
;There is a ghost in the room.
;kamare meM eka BUwa hE.
(defrule room0
(id-root ?id room)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  room.clp 	room0   "  ?id "  kamarA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_room3
(declare (salience 5000))
(id-word ?id room)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id2)
(id-root ?id2 enough)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " room.clp   sub_samA_room3   "   ?id " jagaha )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_room3
(declare (salience 5000))
(id-word ?id room)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id2)
(id-root ?id2 enough)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " room.clp   obj_samA_room3   "   ?id " jagaha )" crlf))
)
