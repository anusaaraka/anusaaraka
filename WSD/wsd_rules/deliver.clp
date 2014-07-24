;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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
;Leaflets have been delivered to every household.;oald
;पुस्तिकाएं हर घर में पहुँचाई जा चुकी है;. Oald
;We promise to deliver within 48 hours.;oald
;हम 48 घंटे के भीतर पहुँचाने का वादा करते है;. Oald 
;Mail is delivered to our office twice a day. ;cambridge ald
;मेल एक दिन में दो बार हमारे कार्यालय में पहुँचाया जाता है.
;The supermarket delivers groceries within 30 miles of the store. ;m-w
;सुपरमार्केट स्टोर से 30 मील की दूरी के भीतर किराने का सामान पहुँचाता है.   

(defrule deliver0
(declare (salience 4900))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-to_saMbanXI  ?id ?id1)(kriyA-on_saMbanXI  ?id ?id1)(kriyA-within_saMbanXI  ?id ?id1)(kriyA-samakAlika_kriyA  ?id1 ?id)(kriyA-kAlavAcI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuzcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver0   "  ?id " pahuzcA  )" crlf))
)


;The actors delivered their lines with passion. ;m-w
;अभिनेता ने जोश के साथ अपनी लाइने बोली.  
;He delivered his lines confidently. ;oald
;वह आत्मविश्वास से अपनी लाइने बोली.
(defrule deliver1
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 line)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver1   "  ?id " bola  )" crlf))
)

;The novel delivers an inspiring look into the life and ideas of Gandhi.  ;m-w
;उपन्यास  गांधी के जीवन और विचारों में एक प्रेरणादायक दृश्य दर्शाता है.

(defrule deliver2
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 look)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver2   "  ?id " xarSA  )" crlf))
)


;The police said that it was the blow that had been delivered to her head that had killed her.;cald 
;पुलिस ने कहा कि यह उसके सिर पर दिया गया धक्का था जिससे वह मर गई.
;He delivered the blow with all his force. ;oald
;उसने अपने सारे बल के साथ धक्का दिया.
(defrule deliver3
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 blow)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver3   "  ?id " xe  )" crlf))
)

;The bowler tripped as he was delivering the ball.;cald
;गेंदबाज फिसल गया जब वह गेंद फेंक रहा था .
(defrule deliver4
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 ball)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver4   "  ?id " PeMka  )" crlf))
)

;She delivered her third child at home. ;cald
;उसने घर पर अपने तीसरे बच्चे को जन्म दिया.
;She was delivered of a healthy boy. ;oald
;उसने एक स्वस्थ बच्चे का जन्म दिया.

(defrule deliver5
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id1)(kriyA-of_saMbanXI  ?id ?id1))
(id-root ?id1 child|baby|boy|girl)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id janma_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver5   "  ?id " janma_xe  )" crlf))
)

;Is there nothing that can be done to deliver these starving people from their suffering? ;cald
;क्या यहाँ कुछ भी नहीं है जो इन भूखे लोगों को उनकी पीड़ा से बचाने के लिए किया जा सकता है ?
;Deliver us from evil. ;oald
;बुराई से हमे बचाओ.

(defrule deliver6
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver6   "  ?id " bacA  )" crlf))
)

;She’s waiting for him to deliver on his promise.;old
;वह अपने वादे को पूरा करने के लिए उसका इंतजार कर रही है.
;She always delivers on her promises.  ;oald
;वह हमेशा अपने वादे पूरा करती है.

(defrule deliver7
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 promise)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver7   "  ?id " pUrA_kara  )" crlf))
)

;The team delivered a stunning victory last night.;oald
; हमारी टीम ने कल रात एक शानदार जीत हासिल की.
(defrule deliver8
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id1 team)
(id-root ?id2 victory)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAsila_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver8   "  ?id " hAsila_kara )" crlf))
)

;The judge delivered a warning to the protesters. ;m-w
 ;न्यायाधीश ने प्रदर्शनकारियों को चेतावनी दी.
;The jury is expected to deliver a verdict later today. ;m-w
;जूरी को आज बाद में एक फैसले देने की उम्मीद है. 
;She is due to deliver a lecture on genetic engineering. ;oald
;वह जेनेटिक इंजीनियरिंग पर एक व्याख्यान देने के लिए है
;added 'kriyA-subject' relation on 25-01-14
(defrule deliver9
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id1)(kriyA-to_saMbanXI  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root  ?id1 lecture|verdict|warning)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver9   "  ?id "  xe )" crlf))
)

;@@@ Added by pramila(BU) on 05-12-2013
;The baby was delivered by Caesarean section.;oald
;बच्चे को सीजेरियन सेक्शन द्वारा जन्म कराया गया था.
(defrule deliver10
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 child|baby|boy|girl)
(kriyA-by_saMbanXI  ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id janma_karA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver10   "  ?id " janma_karA  )" crlf))
)

;@@@ Added by pramila(BU) on 07-01-2014
;The speech which he delivered on the occasion of the unveiling of the tablet was eloquent and in chaste English drew the admiration of the audience.              ;gyannidhi
;भाषण जो उसने गोली के प्रथम प्रस्तुतीकरण के अवसर पर दिया था ,भावपूर्ण था  और शुद्ध अंग्रेज़ी में उनके भावपूर्ण भाषण की श्रोताओं ने खूब प्रशंसा की.
(defrule deliver11
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-jo_samAnAXikaraNa  ?id2 ?id1)
(id-root  ?id2 speech|verdict|warning|lecture)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver11   "  ?id "  xe )" crlf))
)

;@@@ Added by pramila(BU) on 25-01-2014
;He has promised to finish the job by June and I am sure he will deliver.             ;gyannidhi
;उसने जून तक कार्य को समाप्त करने का वादा किया है और मैं निश्चित हूँ कि वह समाप्त करेगा.
(defrule deliver12
(declare (salience 5000))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id1 ?id)
(conjunction-components  ?id3 ?id2 ?id1)
(kriyA-kriyArWa_kriyA  ?id2 ?kri)
(id-root  ?kri finish)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver12   "  ?id "  samApwa_kara )" crlf))
)
;-------------------------default rules--------------------
;He will deliver the speech at noon.  ;m-w
;वह दोपहर में भाषण देगा.  
;The jury finally delivered its verdict. ;oald
;जूरी ने अंत में अपना फैसला दिया.
(defrule deliver13
(declare (salience 300))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver13   "  ?id "  xe )" crlf))
)


(defrule deliver14
(declare (salience 0))
(id-root ?id deliver)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deliver.clp 	deliver14   "  ?id "  xe )" crlf))
)
