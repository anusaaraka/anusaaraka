
(defrule plug0
(declare (salience 5000))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id plaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug0   "  ?id "  plaga )" crlf))
)

;"plug","N","1.plaga"
;Fix this plug into the socket.
;--"2.anukUla_pracAra"
;The supporters gave a plug in the form of advertisement to their leader.
;
(defrule plug1
(declare (salience 4900))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dAta_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug1   "  ?id "  dAta_lagA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 25-1-2014
;She managed to get in a plug for her new book. [Cambridge]
(defrule plug2
(declare (salience 5000))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 get)
(kriyA-in_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug2   "  ?id "  pracAra_kara )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 25-1-2014
;The new computer system will help to plug the gap in the county's ability to collect taxes. [Cambridge]
(defrule plug3
(declare (salience 5000))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 gap|hole)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug3   "  ?id "  Bara )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 25-1-2014
;I'm still plugging away at my article. [Cambridge]
(defrule plug4
(declare (salience 5000))
(id-root ?id plug)
(id-word ?id plugging)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 away)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " plug.clp  plug4  "  ?id "  " ?id1 "  kAma_kara  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 25-1-2014
;We replanted the area with plugs of grass. [Cambridge]
(defrule plug5
(declare (salience 5000))
(id-root ?id plug)
(id-word ?id plugs)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gucCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug5   "  ?id "  gucCA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 25-1-2014
;He put a plug of tobacco in his mouth. [Cambridge]
(defrule plug6
(declare (salience 5000))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 tobacco)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tukafA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug6   "  ?id "  tukafA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-1-2014
;I heard a plug for that café on the radio. [MW]
;मैंने रेडियो पर उस कैफे के लिये प्रचार सुना .
(defrule plug7
(declare (salience 5000))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 hear|give)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug7   "  ?id "  pracAra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-1-2014
;She put in a plug for the band's new album on her radio program. [MW]
;उसने अपने रेडियो कार्यक्रम में नये बैण्ड का प्रचार कार्यक्रम रखा .
(defrule plug8
(declare (salience 5000))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 put)
(kriyA-in_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracAra_kAryakrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug8   "  ?id "  pracAra_kAryakrama )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-1-2014
;They may pull the plug on the tutoring program. [MW]
;वो शिक्षण कार्यक्रम से हाथ खीँच सकते हैं .
(defrule plug9
(declare (salience 5000))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 pull)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug9   "  ?id "  hAWa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-1-2014
;He plugged up the spaces between the stones with mud.  [MW]
;उसने पत्थरों के बीच की जगह को मिट्टी से भर दिया .
(defrule plug10
(declare (salience 5000))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 up)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " plug.clp  plug10  "  ?id "  " ?id1 "  Bara  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-1-2014
;The company needs to plug the holes in its security system.  [MW]
;कम्पनी को अपनी सुरक्षा व्यवस्था में कमं पूरी करने की आवश्यक्ता है .
(defrule plug11
(declare (salience 5500))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 hole|gap)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kamI_pUrI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " plug.clp  plug11  "  ?id "  " ?id1 "  kamI_pUrI_kara  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-1-2014
;He plugged him right in the chest.  [MW]
;उसने उसे ठीक छाती में गोली मारी .
(defrule plug12
(declare (salience 5500))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golI_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug12   "  ?id "  golI_mAra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-1-2014
;The computer program will take data from these sources and automatically plug it into the equation.  [MW]
;संघणक प्रोग्राम इन स्रोतों से डेटा लेगा और अपने आप इन्हें समीकरण में रखेगा .
(defrule plug13
(declare (salience 5500))
(id-root ?id plug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plug.clp 	plug13   "  ?id "  raKa )" crlf))
)


;"plug","V","1.dAta_lagAnA"
;I plug the bottle of cold drink after taking some out of it.
;--"2.xoharAI_se_kahanA"
;The media plugged the achievements of the late prime minister.
;--"3.mAranA"
;He'd been plugged full of holes.
;
