
(defrule impress0
(declare (salience 5000))
(id-root ?id impress)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 on)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ahamiyawa_samaJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " impress.clp	impress0  "  ?id "  " ?id1 "  ahamiyawa_samaJA  )" crlf))
)

;One thing which my father impressed on me was to stand up for muself. 
;eka cIjZa kI ahamiyawa jo mere piwA ne muJe samaJAI vaha WI apane pEroM para Kuxa KadZe honA
(defrule impress1
(declare (salience 4900))
(id-root ?id impress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impress.clp 	impress1   "  ?id "  praBAviwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  impress.clp   impress1   "  ?id " ko )" crlf)
)
)

;"impress","V","1.praBAviwa karanA"
;She knows how to impress her teachers.
;
;
;@@@ Added by Prachi Rathore[31-1-14]
;Your mother was clearly not impressed by our behaviour in the restaurant. [cambridge]
;आपकी माँ भोजनालय में हमारे बर्ताव से स्पष्टतः प्रभावित नहीं हुई थी . 
;We were impressed by/with his credentials. [m-w]
;हम उसके प्रमाण-पत्रों से प्रभावित हुए गये थे . 
(defrule impress2
(declare (salience 5000))
(id-root ?id impress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-by_saMbanXI ?id ?)(kriyA-with_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impress.clp 	impress2   "  ?id "  praBAviwa_ho )" crlf)
)
)

;@@@ Added by Prachi Rathore[31-1-14]
;He tried to impress me with his extensive knowledge of wine.[cambridge]
;उसने वाइन के उसके विस्तृत ज्ञान से मुझे प्रभावित करने का प्रयास किया . 
(defrule impress3
(declare (salience 5100))
(id-root ?id impress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-by_saMbanXI ?id ?)(kriyA-with_saMbanXI   ?id ?id1))
(kriyA-object  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAviwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impress.clp 	impress3   "  ?id "  praBAviwa_kara )" crlf)
)
)

;@@@ Added by Prachi Rathore[31-1-14]
;A design impressed on the book's cover.[m-w]
;आकृति  पुस्तक के आवरण पर छपी थी. 
(defrule impress4
(declare (salience 5100))
(id-root ?id impress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(kriyA-on_saMbanXI  ?id ?)
(id-root ?id1 design)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CapI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  impress.clp 	impress4   "  ?id "  CapI )" crlf)
)
)

