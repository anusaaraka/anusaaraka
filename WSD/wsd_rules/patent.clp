
(defrule patent0
(declare (salience 5000))
(id-root ?id patent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawyakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patent.clp 	patent0   "  ?id "  prawyakRa )" crlf))
)

;"patent","Adj","1.prawyakRa"
;He has put forward a patent question.
;
(defrule patent1
(declare (salience 4900))
(id-root ?id patent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_AviRkAra_kA_pUrNa_aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patent.clp 	patent1   "  ?id "  kisI_AviRkAra_kA_pUrNa_aXikAra )" crlf))
)

;"patent","N","1.kisI_AviRkAra_kA_pUrNa_aXikAra/aXikAra_pawra"
;He has obtained a patent for this new model of fridge.
;
(defrule patent2
(declare (salience 4800))
(id-root ?id patent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanaxa_xekara_aXikAra_kI_rakRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patent.clp 	patent2   "  ?id "  sanaxa_xekara_aXikAra_kI_rakRA_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-1-2014
;In addition to this, the large number of essays submitted for the Griffith Memorial Prize makes it 
;patent that many of our graduates are engaged in advance study and research work. [Gyannidhi]
;इसके अलावा ग्रिफिथ स्मारक पुरस्कार के लिए जिस तरह भारी संख्या में निबंध प्रस्तुत किये हैं उसमें स्पष्ट हो जाता है कि हमारे बहुत से स्नातक उच्च स्तर के अध्ययन और शोध-कार्य में लगे हुए हैं।
(defrule patent3
(declare (salience 5500))
(id-root ?id patent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 make)
(kriyA-vAkyakarma  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  patent.clp 	patent3   "  ?id "  spaRta )" crlf))
)

;"patent","VT","1.sanaxa_xekara_aXikAra_kI_rakRA_karanA"
;The company patented for their exclusively designed dish washer.
;
