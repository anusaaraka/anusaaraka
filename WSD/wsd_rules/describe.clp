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
;@@@ Added by Pramila(Banasthali university)
;Could you describe your attacker?                       ;cald
;क्या आप अपने हमलावर का बयान कर सकते हैं?
;The witness wasn't able to describe the robber.               ;m-w
 ;गवाह डाकू का बयान करने में सक्षम नहीं था.

(defrule describe0
(declare (salience 5000))
(id-root ?id describe)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 robber|attacker)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bayAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  describe.clp 	describe0   "  ?id "  bayAna_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali university)
;He described his experiences in a letter to his parents.         ;old
;उसने अपने माता - पिता को लिखे एक पत्र में अपने अनुभवों का वर्णन किया.
;The article describes how the experiment was done.           ;m-w
 ;लेख वर्णन करता है कि  प्रयोग कैसे किया गया था .  
;She described watching dolphins play beside the ship.              ;m-w
;उसने जहाज के पास खेल रहे डॉल्फिन का देखते हुए वर्णन किया.
;The current political situation in Vietnam is described in chapter 8.                ;oald
;वियतनाम में मौजूदा राजनीतिक स्थिति का अध्याय 8 में वर्णन किया गया है.
;Several people described seeing strange lights in the sky.                  ;oald
;कई लोगों ने आकाश में अदभुत रोशनी का देखते हुए वर्णन किया .


(defrule describe1
(declare (salience 4900))
(id-root ?id describe)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kqxanwa_karma  ?id ?id1)(kriyA-in_saMbanXI  ?id ?id1)(kriyA-vAkyakarma  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varNana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  describe.clp 	describe1   "  ?id " varNana_kara  )" crlf))
)

;@@@ Added by Pramila(Banasthali university)
;He used compasses to describe a circle.                 ;cald
;उसने वृत्त का चित्र खींचने के लिए परकार का इस्तेमाल किया.
;On the diameter of a circle an equilateral triangle is described.     ;old
;एक वृत्त के व्यास पर एक समबाहु त्रिभुज खींचा हुआ है.
;She used a stick to describe a circle on the ground.             ;m-w
;उसने जमीन पर एक वृत्त का चित्र खींचने के लिए एक छड़ी का इस्तेमाल किया.



(defrule describe2
(declare (salience 5000))
(id-root ?id describe)
?mng <-(meaning_to_be_decided ?id)
(or(and(kriyA-kriyArWa_kriyA  ?id1 ?id)(kriyA-object  ?id1 ?id2)(id-root ?id2 compass|scale))(kriyA-on_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  describe.clp 	describe2   "  ?id "  KIMca )" crlf))
)


;@@@ Added by Pramila(Banasthali university)
;A single light is seen to describe a circle.  ;old
;एक वृत्त को परिभाषित करने के लिए एक प्रकाश की इकाई का अवलोकन किया गया.

(defrule describe3
(declare (salience 5000))
(id-root ?id describe)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-karma  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariBARiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  describe.clp 	describe3   "  ?id " pariBARiwa_kara  )" crlf))
)

;@@@ Added by Pramila(Banasthali university)
;Please describe what happened next.              ;m-w
;आगे क्या हुआ कृपया बताएँ.
(defrule describe4
(declare (salience 5000))
(id-root ?id describe)
?mng <-(meaning_to_be_decided ?id)
(AjFArWaka_vAkya)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  describe.clp 	describe4   "  ?id " bawA  )" crlf))
)

;@@@ Added by Pramila(Banasthali university)
;The road describes a long loop around the town.                    ;oald
;सड़क शहर के चारों ओर एक लंबा घुमावदार वक्र बनाती है.
;The shark described a circle around the shoal of fish.           ;oald
;शार्क ने मछलियों के झुण्ड के चारों ओर वृत्त बनाया.
(defrule describe5
(declare (salience 5000))
(id-root ?id describe)
?mng <-(meaning_to_be_decided ?id)
(or(and(kriyA-object  ?id ?id1)(viSeRya-around_saMbanXI  ?id1 ?id2))(kriyA-around_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  describe.clp 	describe5   "  ?id " banA  )" crlf))
)


;@@@ Added by Pramila(Banasthali university)  on 10-03-2014
;The nature of a physical quantity is described by its dimensions.    ;ncert
;किसी भौतिक राशि की प्रकृति की व्याख्या उसकी विमाओं द्वारा की जाती है....
(defrule describe6
(declare (salience 5000))
(id-root ?id describe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-karma  ?id ?id1)
(id-root ?id1 nature)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  describe.clp 	describe6   "  ?id " kara  )" crlf))
)


;@@@ Added by Pramila(Banasthali university)  on 10-03-2014
;In Kinematics we study ways to describe motion without going into the causes of motion.   ;ncert
;शुद्धगतिकी में, हम वस्तु की गति के कारणों पर ध्यान न देकर केवल उसकी गति के बारे में अध्ययन करते हैं .
(defrule describe7
(declare (salience 5000))
(id-root ?id describe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-anaBihiwa_subject  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(assert (kriyA_id-object_viBakwi ?id ke_bAre_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  describe.clp 	describe7   "  ?id " -  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  describe.clp 	describe7   "  ?id " ke_bAre_meM )" crlf))
)

;@@@ Added by Pramila(Banasthali university)  on 12-03-2014
;Should it be described as the rate of change in velocity with distance or with time?   ;ncert
;वेग में हो रहे इस परिवर्तन को समय के सापेक्ष व्यक्त करना चाहिए या दूरी के सापेक्ष ? 
(defrule describe8
(declare (salience 5000))
(id-root ?id describe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  describe.clp 	describe8   "  ?id " vyakwa_kara  )" crlf))
)

;-------------------default rules--------------------------------
;@@@ Added by Pramila(Banasthali university)
;Can you describe the lost dog to me?                     ;m-w
;क्या तुम मुझे खोए हुए कुत्ते के बारे में बता सकते हो?
;Can you describe him to me?         ;oald
;क्या आप मुझे उसके बारे में बता सकते हैं?
(defrule describe9
(declare (salience 3000))
(id-root ?id describe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  describe.clp 	describe9   "  ?id "  bawA )" crlf))
)

;@@@ Added by Pramila(Banasthali university)
(defrule describe10
(declare (salience 0))
(id-root ?id describe)
?mng <-(meaning_to_be_decided ?id)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  describe.clp 	describe10   "  ?id "  bawA )" crlf))
)
