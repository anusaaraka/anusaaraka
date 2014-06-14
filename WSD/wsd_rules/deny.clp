;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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
;Many parents deny themselves so that their children can have the best.       ;cald  
;बहुत से माता –पिता  खुद को सुविधाओं से वंचित रखते हैं ताकि उनके बच्चों को सब कुछ सबसे अच्छा मिले .
(defrule deny0
(declare (salience 5000))
(id-root ?id deny)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object  ?id ?id1))
(id-word =(+ ?id 1) themselves|himself|ourselves|myself|yourselves)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suviXAoM_se_vaMciwa_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deny.clp 	deny0   "  ?id "  suviXAoM_se_vaMciwa_raKa )" crlf))
)


;The spokesman refused either to confirm or deny the reports.    ;oald
;प्रवक्ता ने या तो रिपोर्टों की पुष्टि या खंडन करने से इनकार कर दिया.
;He will not confirm or deny the allegations.             ;cald
;उन्होंने कहा कि आरोपों की पुष्टि या खंडन नहीं करेगा.

(defrule deny1
(declare (salience 4900))
(id-root ?id deny)
?mng <-(meaning_to_be_decided ?id)
(conjunction-components  ?id2 ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaMdana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deny.clp 	deny1   "  ?id "  KaMdana_kara )" crlf))
)


;The inquiry was denied access to intelligence sources. ;old     
;जांच को खुफिया सूत्रों का उपयोग से वंचित किया गया.
;They were denied access to the information.  ;oald  
;उनको जानकारी के उपयोग से वंचित किया गया. 
;Access to the information was denied to them.   ;oald   
;सूचना  के उपयोग से उनको वंचित किया गया.

(defrule deny2
(declare (salience 5000))
(id-root ?id deny)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaMciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deny.clp 	deny2   "  ?id "  vaMciwa_kara )" crlf))
)

;The judge denied their request.  ;m-w
;न्यायाधीश ने उनके अनुरोध को अस्वीकार किया. 
(defrule deny3
(declare (salience 5000))
(id-root ?id deny)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 request)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id asvIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deny.clp 	deny3   "  ?id "  asvIkAra_kara )" crlf))
)



;She has denied her family and refuses to have any contact with them.          ;cald   
;वह अपने परिवार  से संबंध तोड चुकी है और उनके साथ कोई संपर्क करने से इनकार कर दिया है.
(defrule deny4
(declare (salience 4900))
(id-root ?id deny)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 family|friend)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMbaMXa_woda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deny.clp 	deny4   "  ?id "  saMbaMXa_woda )" crlf))
)

;Even under torture, he refused to deny his faith.         ;cald   ????
;यहां तक ​​कि यातना के तहत,उसने अपने विश्वास को छोडने से इनकार कर दिया.
(defrule deny5
(declare (salience 5000))
(id-root ?id deny)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-under_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Coda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deny.clp 	deny5   "  ?id "  Coda )" crlf))
)

;The servants are ordered to deny him.  ;old       
;नौकरों को उसकी अवज्ञा करने के आदेश दिए गए.
(defrule deny6
(declare (salience 4900))
(id-root ?id deny)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avajFA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deny.clp 	deny6   "  ?id "  avajFA_kara )" crlf))
)


;---------------------------------default rules----------------------------------
;He denied the report that he would be quitting his job.  ;m-w
;उसने अपनी नौकरी छोड़ने की रिपोर्ट से इनकार किया.
;The police deny that racism is a problem in the department.  ;m-w
;पुलिस ने नस्लवाद विभाग में समस्या से इनकार किया.    
 ;I don't deny it.  ;m-w
;मैं इससे इनकार नहीं करता.  
;Neil denies that he broke the window, but I'm sure he did.   ;cald
;नील इनकार करता है कि उसने खिड़की तोड़ी हैं, लेकिन मुझे यकीन है कि उसने तोड़ी है.
;She denied all knowledge of the incident.   ;oald
;उसने घटना की सभी जानकारी से इनकार किया.
(defrule deny7
(declare (salience 3000))
(id-root ?id deny)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id inakAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deny.clp 	deny7   "  ?id "  inakAra_kara )" crlf))
)


(defrule deny8
(declare (salience 0))
(id-root ?id deny)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id inakAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deny.clp 	deny8   "  ?id "  inakAra_kara )" crlf))
)
