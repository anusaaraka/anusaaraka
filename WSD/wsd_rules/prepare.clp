;##############################################################################
;#  Copyright (C) 2002-2005 Shweta Vikram (shwetavikram.2009@rediffmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################

;Added by Sonam Gupta MTech IT Banasthali 2013
;It's best to be prepared. 
;तैयार रहना सर्वोत्तम है.
(defrule prepare0
(declare (salience 1900))
(id-root ?id prepare)
?mng <-(meaning_to_be_decided ?id)
(or(and(to-infinitive  ? ?id)(kriyA-subject  ?id ?)(saMjFA-to_kqxanwa  ? ?id))(and(kriyA-kriyArWa_kriyA  ?id ?)(kriyA-subject  ?id ?))(and(kriyA-object  ?id ?)(kriyA-subject  ?id ?)(kriyA-kriyArWa_kriyA  ? ?id)(to-infinitive  ? ?id)(kriyA-for_saMbanXI  ?id ?)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prepare.clp 	prepare0  "  ?id " wEyAra_raha)" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;We don't have much more time to prepare.
;हमारे पास तैयारी करने के लिए ज्यादा समय नहीं है.
(defrule prepare1
(declare (salience 1800))
(id-root ?id prepare)
?mng <-(meaning_to_be_decided ?id)
(and(saMjFA-to_kqxanwa  ? ?id)(to-infinitive  ? ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyArI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prepare.clp 	prepare1  "  ?id " wEyArI_kara)" crlf))
)


;Added by Shweta Vikram(07/09/2013)
;To prepare lunch.
;दोपहर का खाना बनाना.
(defrule prepare2
(declare (salience 1700))
(id-root ?id prepare)
?mng <-(meaning_to_be_decided ?id)
(or(to-infinitive  ? ?id)(kriyA-in_saMbanXI  ?id ?))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prepare.clp 	prepare2  "  ?id " banA)" crlf))
)



;Added by Shweta Vikram(11/09/2013)Default
(defrule prepare3
(declare (salience 1600))
(id-root ?id prepare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 verb)
(id-cat_coarse ?id2 adjective)
(or(and(kriyA-kriyArWa_kriyA  ?id ?id1)(viSeRya-viSeRaNa  ?id2 ?id))(and(kriyA-object ?id ?)(viSeRya-viSeRaNa  ? ?id)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prepare.clp 	prepare3  "  ?id "  wEyAra_kara )" crlf))
)



;Added by Shweta Vikram(11/09/2013)
;Hipparchus of Nicaea , a Greek mathematician ( 150 B.C. ) , was possibly the first to prepare these Tables . 
;nAikiyA nivAsI hippArkasa ( 150 IsA pUrva . ) , jo eka yUnAnI gaNiwajFa WA , saMBavawaH pahalA vyakwi WA jisane ina sAraNiyoM kI racanA kI.
;नाइकिया निवासी हिप्पार्कस ( 150 ईसा पूर्व . ) , जो एक यूनानी गणितज्ञ था , संभवतः पहला व्यक्ति था जिसने इन सारणियों की रचना की. 
(defrule prepare4
(declare (salience 1500))
(id-root ?id prepare)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id racanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prepare.clp 	prepare4   "  ?id "  racanA_kara )" crlf))
)

;####################################################Default Rule###########################################################################

(defrule prepare5
(id-root ?id prepare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prepare.clp 	prepare5  "  ?id "  wEyAra_kara )" crlf))
)


;meaning
;==1.wEyAra_kara
;==2.banA
;==3.racanA_kara
;==4.savaXAna_kara
;==5.pakA
;==6.sajA
;==7.praswuwa_kara
;==8.TIka_kara

;http://10.2.56.85:8084/Gyan_Search_80M/
;The first task was to prepare an , election manifesto .
;सबसे पहले काम था एक ऐसा घोषणा - पत्र तैयार करना . 
;LSD is very easy to prepare in the laboratory . 
;एल . एस . डी . को प्रयोगशाला में बनाना आसान है.
;The artistes themselves prepare the puppets required for the plays they produce . 
;स्वयं प्रहसन का पाठ तैयार करके वे उसे अपने भावी ग्राहकों के सामने प्रदर्शित करती हैं .
;Thus , the larvae prepare their own abode of safety and plenty .
;इस प्रकार लार्वा अपनी सुरक्षा और प्रचुरता के लिए अपना आवास स् वयं बनाते हैं . 
;It is necessary to prepare and plan for the distant future too . 
;दूर - गामी भविष्य के लिए भी तैयारी करना और योजना बनाना जरुरी है.
;She helped DrBose to prepare his new book . 
;उसने डा . बोस की नयी पुस्तक तैयार करने में सहायता की .
;Stop a little ,I said to the two of them ,let me prepare Lola . 
;जरा ठहरिये , मैंने दोनों से कहा , मैं जरा जाकर लोला को सावधान कर आऊं . ???(Discuss)
;They help one another in this search for new words and prepare the notes .
;वे एक - दूसरे को शब्दों की याद भी करा देते हैं और कोई - कोई तो शब्द लिख तक लेते है . 
;The Constituent Assembly set to work to prepare a new constitution for India . 
;विधान परिषद देश के लिए नया विधान बना रही थी.
;The court empowered Sir Asutosh to prepare a scheme for utilizing the gift . 
;न्यायालय ने सर आशुतोष को ईस उपहार के उपयोग की योजना बनाने का अधिकार दिया.
;Hipparchus of Nicaea , a Greek mathematician ( 150 B.C. ) , was possibly the first to prepare these Tables . 
;नाइकिया निवासी हिप्पार्कस ( 150 ईसा पूर्व . ) , जो एक यूनानी गणितज्ञ था , संभवतः पहला व्यक्ति था जिसने इन सारणियों की रचना की.
;Then I would arrive in the second car and prepare for the meeting , when the first car would move ahead to the next meeting place . 
;जब सब लोग अपने - अपने स्थान पर बैठ जाते , मैं दूसरी मोटर में पहुंच जाता .



;dictionary.cambridge.org
;Have you prepared for your interview? She'll prepare the food ahead of time and freeze it. 
;This course aims to prepare students for middle and senior managerial positions. 
;Are the players mentally and physically prepared to play a tough game? The meal took two hours to prepare.
;It almost seems as if she is preparing to die. You need to prepare your self for a long wait.






