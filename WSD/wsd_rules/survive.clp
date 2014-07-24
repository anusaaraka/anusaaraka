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
;########################################################################`
;She survived her husband by ten years.    [oxford]
;वह अपने पति की मृत्यु के बाद दस साल जीवित रही.
;He is survived by his wife and four children.[cambridge adv lear]
;वह अपनी पत्नी और चार बच्चों की मृत्यु के बाद भी जीवित रहे.
(defrule survive0
(declare (salience 5000))
(id-root ?id survive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_mQwyu_ke_bAxa_jIviwa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survive.clp 	survive0   "  ?id "  kI_mQwyu_ke_bAxa_jIviwa_raha)" crlf))
)


;Can you survive on $2000 a month in New York City?  [wordnet]
; क्या आप न्यूयॉर्क शहर में $2000 में एक महीने गुजारा कर सकते हैं?

;;She could barely survive on such a low wage. [wordnet]
;वह मुश्किल से इतनी कम मजदूरी में गुजारा कर सकी.

;The family are struggling to survive on very little money.
;परिवार बहुत कम पैसे में गुजारा करने के लिए संघर्ष कर रहे हैं.[cambridge dict]
(defrule survive1
(declare (salience 4900))
(id-root ?id survive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gujZArA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survive.clp 	survive1   "  ?id "  gujZArA_kara)" crlf))
)
;This Government could not survive even one year . 
;यह सरकार एक वर्ष भी नहीं चल पायी |           [Gyanaidhi Search Link]
(defrule survive2
(declare (salience 4800))
(id-root ?id survive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-word ?id1 government)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala_pA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survive.clp 	survive2   "  ?id "  cala_pA)" crlf))
) 

;Some of the traditional arts will survive because of their quality . 
;कुछ परंपरागत कलाएं अपनी गुणवत्ता के कारण बची रहेंगी |[Gyanaidhi Search]

;The company managed to survive the crisis.    [oxford]
;कंपनी संकट से बचने में कामयाब रहे.

(defrule survive3
(declare (salience 4700))
(id-root ?id survive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-of_saMbanXI  ?id ?)(kriyA-in_saMbanXI  ?id ?)(to-infinitive  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baca_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survive.clp 	survive3   "  ?id "  baca_jA)" crlf))
) 
;The prime minister succeeded in surviving the challenge to his authority.
;प्रधानमंत्री अपनी सत्ता की चुनौती को बचाए रखने में सफल रहा. [cambridge adv lear]
(defrule survive4
(declare (salience 4600))
(id-root ?id survive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bacAe_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survive.clp 	survive4   "  ?id "  bacAe_raka)" crlf))
) 

;Some strange customs have survived from earlier times. [eng to hindi wordnet]
;;कुछ असामान्य रिवाज बहुत पहले समय से अस्तित्व में हैं.
(defrule survive5
(declare (salience 4500))
(id-root ?id survive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aswiwva_meM_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survive.clp 	survive5   "  ?id "  aswiwva_meM_ho)" crlf))
) 

;She was the last surviving member of the family.[oxford]
;वह परिवार की अंतिम जीवित सदस्य थी.
(defrule survive6
(declare (salience 4400))
(id-root ?id survive)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survive.clp 	survive6   "  ?id "  jIviwa)" crlf))
) 




;.............default rule............

;It is obvious that only floating plants can survive here.
;यह स्पष्ट है कि वहां पर वैसे ही पौधे जीवित रह सकते हैं जो जल में डोलते रहते हैं |[Gyanaidhi Search Link]

(defrule survive7
(declare (salience 1))
(id-root ?id survive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survive.clp 	survive6   "  ?id "  jIviwa_raha)" crlf))
)

(defrule survive8
(declare (salience 0))
(id-root ?id survive)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  survive.clp 	survive8   "  ?id "  jIviwa_raha)" crlf))
)









