;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore[15-2-14]
;Teachers have a limited amount of time to interact with each child. [oald]
;शिक्षकों के पास हर एक बच्चे के साथ घुल मिलने के लिये समय की एक सीमित मात्रा है . 
(defrule interact0
(declare (salience 5000))
(id-root ?id interact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gula_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interact.clp 	interact0   "  ?id "  Gula_mila )" crlf))
)

;@@@ Added by Prachi Rathore[15-2-14]
;One kind of response from the earliest times has been to observe the physical environment carefully look for any meaningful patterns and relations in natural phenomena and build and use new tools to interact with nature. [ncert]
;आदि काल से मानव की एक प्रकार की प्रतिक्रिया यह रही है कि उसने अपने भौतिक पर्यावरण का सावधानीपूर्वक प्रेक्षण किया है, प्राकृतिक परिघटनाओं में अर्थपूर्ण पैटर्न तथा सम्बन्ध खोजे हैं, तथा प्रकृति के साथ प्रतिक्रिया कर सकने के लिए नए औजारों को बनाया तथा उनका उपयोग किया है.
(defrule interact3
(declare (salience 5050))
(id-root ?id interact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
(id-root ?id1 nature)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawikriyA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interact.clp 	interact3   "  ?id "  prawikriyA_kara )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[15-2-14]
;It's interesting at parties to see how people interact socially.[cambridge]
;पार्टियों में देखना रोचक है कि लोग सामाजिक रूप से कैसे बातचीत करते हैं . 
(defrule interact1
(declare (salience 300))
(id-root ?id interact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwacIwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interact.clp 	interact1   "  ?id "  bAwacIwa_kara )" crlf))
)


;@@@ Added by Prachi Rathore[15-2-14]

(defrule interact2
(declare (salience 250))
(id-root ?id interact)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAwaciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interact.clp 	interact2   "  ?id "  bAwaciwa_kara )" crlf))
)
