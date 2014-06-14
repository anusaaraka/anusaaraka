
(defrule position0
(declare (salience 5000))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWiwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  position.clp 	position0   "  ?id "  sWiwi )" crlf))
)

(defrule position1
(declare (salience 4900))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  position.clp 	position1   "  ?id "  raKa_xe )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 8-1-2014
;Before he was 25 years old, he had established his position in the world of mathematical research. [Gyannidhi]
;25 वर्ष का होने से पहले, उसने गणित सम्बन्धी शोध के विश्व में अपनी जगह स्थापित की थी . 
(defrule position2
(declare (salience 5500))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 establish|make)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  position.clp 	position2   "  ?id "  jagaha )" crlf))
)

;NOTE: This ruel need to be improved.
;@@@ Added by Sonam Gupta MTech IT Banasthali 8-1-2014
;She finished the race in third position. [Cambridge]
;उसने तीसरे स्थान में दौड पूर्ण की . 
(defrule position3
(declare (salience 5500))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 first|second|third|fourth|fifth|sixth|seventh|eighth|ninth|tenth|eleventh|twelvth|thirteenth|fourteenth|fifteenth|sixteenth|seventeenth|eightheenth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  position.clp 	position3   "  ?id "  sWAna )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 8-1-2014
;To apply for a position in a company. [Cambridge]
;कम्पनी में पद के लिये आवेदन करना . 
(defrule position4
(declare (salience 5500))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-for_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  position.clp 	position4   "  ?id "  paxa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 8-1-2014
;He took up his position by the door. [OALD]
;उसने दरवाजे के पास उसका स्थान लिया . 
(defrule position5
(declare (salience 5500))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 take|get|show)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  position.clp 	position5   "  ?id "  sWAna )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 8-1-2014
;From this position, you can see all of New York City's skyline. [OALD]
;इस स्थान से, आप पूरे न्यूयार्क शहर का क्षितिज देख सकते हैं . 
(defrule position6
(declare (salience 5000))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-from_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  position.clp 	position6   "  ?id "  sWAna )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 20-1-2014
;In recommending his appointment to the Viceroy, H.H. Risley, Home Secretary to the Government of India, wrote : 
;I have no hesitation in saying that the Hon'ble Mr. Justice Mookerjee is marked out by his scientific attainments, 
;his long connection with the University and the work he has done for it and by his official position as conspicuously  
;qualified for the post of Vice-Chancellor. [gyannidhi]
;वाइसराय को उनकी नियुक्ति के लिए सिफारिश करते हुए भारत सरकार के गृह सचिव एच॰ एच॰ रिस्ले ने लिखा, मुझे यह कहने में ज़रा भी हिचकिचाहट नहीं है 
;कि माननीय न्यायमूर्ति श्री मुकर्जी अपनी वैज्ञानिक उपलब्धियों, विश्वविद्यालय के साथ पुराने सम्बन्धों और उसके सिल उनके द्वारा किये गये कार्यों और अपने 
;राजकीय पद के कारण कुलपति के स्थान के लिए स्पष्ट रूप से योग्य सिद्ध होते हैं।
(defrule position7
(declare (salience 5500))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
(id-root ?id1 official|adminstrator|government)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  position.clp 	position7   "  ?id "  paxa )" crlf))
)

;"position","V","1.raKa xenA"
;Alarms are positioned at strategic points around the prison.
;
;

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_position3
(declare (salience 5500))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 first|second|third|fourth|fifth|sixth|seventh|eighth|ninth|tenth|eleventh|twelvth|thirteenth|fourteenth|fifteenth|sixteenth|seventeenth|eightheenth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " position.clp   sub_samA_position3   "   ?id " sWAna )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_position3
(declare (salience 5500))
(id-root ?id position)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 first|second|third|fourth|fifth|sixth|seventh|eighth|ninth|tenth|eleventh|twelvth|thirteenth|fourteenth|fifteenth|sixteenth|seventeenth|eightheenth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " position.clp   obj_samA_position3   "   ?id " sWAna )" crlf))
)
