;########################################################################

;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################
;The smack of nutmeg in the soup .[wordnet]
;सूप में जायफल का स्वाद.
(defrule smack0
(declare (salience 5000))
(id-root ?id smack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smack.clp 	smack0   "  ?id "  svAxa )" crlf))
)

;Two players accidentally smacked into each other. [oald]
;दो खिलाड़ी गलती से एक दूसरे से जोर से भिङ गए.
(defrule smack1
(declare (salience 4900))
(id-root ?id smack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-on_saMbanXI  ?id ?id1)(kriyA-into_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jZora_se_BidZa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smack.clp 	smack1   "  ?id "  jZora_se_BidZa_jA )" crlf))
)

;She smacked him gently on the cheek. [wordnet]
;उसने गाल पर उसको हल्के से चूमा . 

(defrule smack2
(declare (salience 5000))
(id-root ?id smack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI ?id ?id1)
(id-root ?id1 cheek|lip)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id halke_se_cUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smack.clp 	smack2   "  ?id "  halke_se_cUma )" crlf))
)

;He smacked the food ill-manneredly. [wordnet]
;उसने भोजन को बेढंग तरीके से चटखारे ले कर खाया . 

(defrule smack3
(declare (salience 4800))
(id-root ?id smack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 food)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cataKAre_le_kara_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smack.clp 	smack2   "  ?id "  cataKAre_le_kara_KA )" crlf))
)
;I ran smack into the back of a parked truck.[oxford dict]
;मैं एक खड़ी ट्रक के पीछे सीधे भागा . 
(defrule smack4
(declare (salience 5000))
(id-root ?id smack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(kriyA-into_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smack.clp 	smack4   "  ?id "  sIXe )" crlf))
)




;............Defaut Rule.....

;You'll get a smack if you're not careful.[wordnet] 
;आप तमाचा खाएंगे यदि आप सावधान नहीं हैं . 
(defrule smack5
(declare (salience 1))
(id-root ?id smack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wamAcA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smack.clp 	smack5   "  ?id "  wamAcA )" crlf))
)
;I never smack my children.[cambridge dict]
;मैं कभी नहीं मेरे बच्चों को चटाक से मारता हूँ . 
(defrule smack6
(declare (salience 1))
(id-root ?id smack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id catAka_se_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smack.clp 	smack6   "  ?id "  catAka_se_mAra )" crlf))
)
;Our mother’s house was smack in the middle of the city.[oxford dict]
;हमारी माँ का घर शहर के ठीक मध्यस्थल में था . 
;She lives smack in the middle of London.[cambridge dict]
;वह लन्दन के ठीक मध्यस्थल में रहती है . 

(defrule smack7
(declare (salience 1))
(id-root ?id smack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  smack.clp 	smack7   "  ?id " TIka )" crlf))
)

