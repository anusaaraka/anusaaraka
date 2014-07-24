;Added by Shirisha Manju Suggested by Chaitanya Sir (18-10-13)
;The Sahara Desert extends for miles.     [Cambridge Dic]
;सहारा मरुस्थल मीलों तक फैला हुआ है .
;It extends from a height of 65 Km to about 400 Km above the earth's surface. [physics]
;Our land extends as far as the river. 	[OALD]
(defrule extend0
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(or (kriyA-subject  ?id ?id1)(kriyA-from_saMbanXI ?id ?id1)(kriyA-as_saMbanXI  ?id ?id1))
(id-word ?sub desert|mountain|height|river)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEla))
(assert (id-H_vib_mng ?id yA_huA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend0   "  ?id "  pahuzca )" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_vib_mng  " ?*wsd_dir* "  extend.clp   extend0   "  ?id " yA_huA_hE )" crlf)
)

;Added by Shirisha Manju Suggested by Chaitanya Sir (17-10-13)
;The path extends beyond the end of the road.  [Cambridge Dic]
;रास्ता सड़क के आगे तक जाता है.
(defrule extend1
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-subject ?id ?sub)
(id-root ?sub road|path|way)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend1   "  ?id "  jA )" crlf))
)

;Added by Shirisha Manju Suggested by Chaitanya Sir (17-10-13)
;Rain is expected to extend to all parts of the country by this evening. [Cambridge Dic]
;आज शाम तक, बारिश [के] देश के पूरे भाग में पहुंचने की आशा है.	
;$$$ Modified by Pramila(BU) on 22-02-2014 [condition '(kriyA-kriyArWa_kriyA  ?id1 ?id)' added]
(defrule extend2
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-subject  ?id1 ?sub)
(id-root ?sub rain)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend2   "  ?id "  pahuzca )" crlf))
)

;Added by Shirisha Manju Suggested by Chaitanya Sir (17-10-13)
;The effects of this legislation will extend further than the government intends.      [Cambridge Dic]
;इस कानून का जहाँ तक सरकार इरादा करती है उससे आगे असर होने वाला है.
(defrule extend3
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-subject ?id ?sub)
(id-root ?sub effect)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asara_ho ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend3   "  ?id "  asara_ho )" crlf))
)

;Added by Shirisha Manju Suggested by Chaitanya Sir (17-10-13)
;The pub has recently extended its opening hours. [Cambridge Dic]
;पब ने हाल में ही अपने खुले रहने की अवधि_बढ़ा दी है. 
;$$$ modified by Pramila(BU) on 22-02-2014 [condition '(id-root ?id1 visa|licence|stay)' removed]
(defrule extend4
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "time.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaXi_baDZA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend4   "  ?id "  avaXi_baDZA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  extend.clp   extend4  "?id " kA )" crlf)
)
)

;@@@ Added by Pramila(Banasthali university) on 22-02-2014
;I need to extend my visa.	[Cambridge Dic]		 
;मुझे अपने वीसा की अवधि बढ़वानी है .  
(defrule extend5
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?id1)
(id-root ?id1 visa)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaXi_baDZavA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend5   "  ?id " avaXi_baDZavA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  extend.clp   extend5  "?id " kA )" crlf)
)
)
;Added by Shirisha Manju Suggested by Chaitanya Sir (17-10-13)
;I should like to extend my thanks to you for your kindness.
;आपकी मेहरबानी के लिए मैं आपको धन्यवाद देना चाहूँगा .		[Cambridge Dic]
;The government is extending aid to people who have been affected by the earthquake.   [Cambridge Dic]
;सरकार उन लोगों को अनुदान दे रहीं है जिन पर भूकम्प का असर पड़ा है.
;The bank has agreed to extend us money to us to buy our house.
;हमें घर खरीदने के लिए धन देने के लिए बैंक मान गया है .		[Cambridge Dic]
;The bank refused to extend credit to them.
(defrule extend6
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(or (kriyA-object ?id ?obj)(kriyA-kqxanwa_karma ?id ?obj))
(id-root ?obj thanks|aid|money|credit)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend6   "  ?id "  xe )" crlf))
)

;Added by Shirisha Manju Suggested by Chaitanya Sir (18-10-13)
;Parking restrictions do not extend to disabled people.  [Cambridge Dic]
;विकलांगो के लिए पार्किंग-प्रतिबंध लागू नहीं होते .
;The offer does not extend to employees' partners.       [OALD]
(defrule extend7
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-subject ?id ?sub)
(id-root ?sub restriction|law|offer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgU_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend7   "  ?id "  lAgU_ho )" crlf))
)

;Added by Shirisha Manju Suggested by Chaitanya Sir (18-10-13)
;She feels that her job doesn't extend her enough.   [Cambridge Dic]
;उसे लगता है कि नौकरी में उसकी योग्यता का पूरा उपयोग नहीं किया जा रहा है.
(defrule extend8
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?obj)
(viSeRya-RaRTI_viSeRaNa ?obj ?vi)
(id-root ?vi I|he|she|they|him|her|we|us|them)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogyawA_kA_upayoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend8   "  ?id "  yogyawA_kA_upayoga_kara )" crlf))
)

;Added by Shirisha Manju Suggested by Chaitanya Sir (18-10-13)
;Jim didn't really have to extend himself in the exam. [OALD]
(defrule extend9
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?obj)
(or (id-root ?obj ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))(id-root ?obj himself|herself|myself))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogyawA_kA_upayoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend9   "  ?id "  yogyawA_kA_upayoga_kara )" crlf))
)

;Added by Shirisha Manju Suggested by Chaitanya Sir (22-10-13)
;The chairperson extended a warm welcome to the guest speaker. [Cambridge Dic]
;चेयरपर्सन ने गेस्ट स्पीकर का हार्दिक स्वागत किया .
;I'm sure you will join me in extending a very warm welcome to our visitors. [OALD]
(defrule extend10
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?obj)
(id-root ?obj welcome)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend10   "  ?id "  kara )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 03-01-2014
;So Gopal went to Uma's house and extended a personal invitation.      ;gyannidhi
;इसलिए गोपाल ऊमा के घर पर गया और एक वैयक्तिक आमन्त्रण दिया. 
(defrule extend11
(declare (salience 5000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object ?id ?obj)
(id-root ?obj invitation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp   extend11   "  ?id "  xe )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 22-02-2014
;We are planning to extend our publishing of children's books. 
;हम बच्चों की किताबों के [अपने] प्रकाशन को बढाने की योजना बना रहें हैं . 	[Cambridge Dic]
;The government has produced a series of leaflets designed to extend public awareness of the dangers of AIDS.[Cambridge Dic]
;सरकार ने जनता में एड्स के खतरे के प्रति जागरूकता बढाने के लिए कई सूचनापत्र बनाएं.(निकाले)
;We have plans to extend our house. 	[Cambridge Dic]
;अपना मकान बढाने की हमारी योजना है.
;There are plans to extend the no-smoking area.  [OALD]
(defrule extend12
(declare (salience 4900))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(or(kriyA-kriyArWa_kriyA  ?id1 ?id)(saMjFA-to_kqxanwa  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp 	extend12   "  ?id "  baDZAnA )" crlf))
)
;--------------------------- Default ----------------------------------------------------------
;He extended his hand as a greeting.	[Cambridge Dic]
;उसने अभिवादन करने के लिए अपना हाथ बढ़ाया .
;There are plans to extend the no-smoking area.  [OALD]
(defrule extend13
(declare (salience 4000))
(id-root ?id extend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  extend.clp 	extend13   "  ?id "  baDZA )" crlf))
)

;default_sense && category=verb	PElA	0
;"extend","V","1.PElAnA"
;The railway line has not yet been extended to the remotest areas in the North-
;East regions.
;--"2.nimaMwraNa_xenA"
;The school extended an invitation to the parents on the occasion of Republic Day
;--"3.baDZAnA"
;The minister has extended his visit for another week.
;
;
