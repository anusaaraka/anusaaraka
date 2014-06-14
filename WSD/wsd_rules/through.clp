;;Added by Meena(1999999999.10.09)
;Fanned by a strong wind, the fire spread rapidly through the city.
(defrule through0
(declare (salience 5500))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(kriyA-through_saMbanXI  ?id1 ?id2)
(id-root ?id2 city|jungle|forest) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp   through0   "  ?id "  meM )" crlf))
)



;Added by Meena(13.10.09)
;It struggled to force its body through that little hole . 
(defrule through1
(declare (salience 5000))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(kriyA-through_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp   through1   "  ?id "  meM_se )" crlf))
)


(defrule through2
(declare (salience 5000))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_ora_se_xUsarI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp 	through2   "  ?id "  eka_ora_se_xUsarI_ora )" crlf))
)

;"through","Adv","1.eka_ora_se_xUsarI_ora"
;Put the chemical in the filter && let it pass through.
;--"2.SurU_se_anwa_waka"
;After the day's work the labourer slept right through.
;--"3.prawibanXa_ko_wodawe_hue"
;There was red signal but the car drove straight through'
;--"4.anwa_waka"
;We drove straight through from Chicago to Marshall.
;
(defrule through3
(declare (salience 4900))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_mAXyama_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp 	through3   "  ?id "  ke_mAXyama_se )" crlf))
)
;modified by Sukhada. Ex. We wish to invite participants from all across the world to participate through this site
;"through","Prep","1.meM_se"
;The thief entered the house through the window.
;--"2.se_waka"
;You stay in Birmingham Monday through Friday.
;--"3.ke_xvArA"
;You can get good results through hard work.
;--"4.Suru_se_anwa_waka"
;The children sat through the long concert.
;--"5.ke_kAraNa"
;The accident ocurred through his careless driving.
;

;;@@@   ---Added by Prachi Rathore
;It has been [through] a nuclear furnace several billion degrees hot![gyannidhi]
;यह एक नाभिकीय भट्ठी से होकर गुजरी है जिसका तापमान कई अरब डिग्री था।
(defrule through4
(declare (salience 5000))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(viSeRya-through_saMbanXI  ?id2 ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hokara_gujara))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp 	through4   "  ?id "  hokara_gujara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  through.clp     through4   "  ?id "  se )" crlf))
)


;;@@@   ---Added by Prachi Rathore
;The song changes key halfway through. [cambridge]
; गाना  बीच मे सुर बदलता है .  
(defrule through5
(declare (salience 5000))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-kriyA_viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp 	through5   "  ?id "  meM )" crlf))
)

;@@@  Added by Prachi Rathore
;A curious and puzzling feature about galaxies is that, whether singly or in clusters, they seem to contain a lot more say, ten times more unseen matter in and around them than is visible through stars, gas and dust.[gyannidhi]
;आकाशगंगाओं के बारे में हैरान कर देने वाली एक विशेषता है कि वे अकेली हों या समूह उनके बीच और आसपास अदृश्य पदार्थ की मात्रा उनसे काफी अधिक 10 गुना कह सकते हैं होती है, जो तारों में दिखायी देती है-गैस और धूल।
(defrule through6
(declare (salience 5100))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id preposition)
(viSeRya-through_saMbanXI  ?id2 ?id1)
(id-root ?id2 visible)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp 	through6   "  ?id "  meM )" crlf))
)

;@@@ Added by Prachi Rathore[20-1-14]
;It is not possible to infect another person through kissing.[oald]
;किसी और व्यक्ति को चुम्बन के द्वारा संक्रमित करना सम्भव नहीं है . 
(defrule through7
(declare (salience 5100))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(kriyA-through_saMbanXI  ?id1 ?)
(kriyA-object  ?id1 ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_xvArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp   through7   "  ?id "  ke_xvArA )" crlf))
)

;@@@ Added by Prachi Rathore[3-3-14]
;When you hold a pencil in front of you against some specific point on the background a wall and look at the pencil first through your left eye A closing the right eye and then look at the pencil through your right eye B closing the left eye you would notice that the position of the pencil seems to change with respect to the point on the wall. [ncert]
;जब आप किसी पेंसिल को अपने सामने पकडते हैं और पृष्ठभूमि (माना दीवार) के किसी विशिष्ट बिन्दु के सापेक्ष पेंसिल को पहले अपनी बायीं आँख A से (दायीं आँख बन्द रखते हुए) देखते हैं, और फिर दायीं आँख B से (बायीं आँख बन्द रखते हुए), तो आप पाते हैं, कि दीवार के उस बिन्दु के सापेक्ष पेंसिल की स्थिति परिवर्तित होती प्रतीत होती है.
(defrule through8
(declare (salience 5100))
(id-root ?id through)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id1 ?id2)
(viSeRya-through_saMbanXI  ?id2 ?)
(id-root ?id1 look|view|see)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  through.clp   through8   "  ?id " se )" crlf))
)

