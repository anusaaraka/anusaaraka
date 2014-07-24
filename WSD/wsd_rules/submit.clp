;##############################################################################
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


; Argentina has submitted an application to host the World Cup.[cambridge dict]
;अर्जेंटीना ने विश्व कप की मेजबानी के लिए एक आवेदन-पत्र जमा किया है.

(defrule submit0
(declare (salience 5000))
(id-root ?id submit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 application|claim|complaint)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  submit.clp 	submit0  "  ?id "  jamA_kara)" crlf))
)

;In conclusion, I submit that the proposal will not work without some major changes.[cambridge dict]
;निष्कर्ष में, मैं कहता हूँ कि प्रस्ताव कुछ मुख्य परिवर्तनों के बिना काम नहीं करेगा . 
(defrule submit1
(declare (salience 4900))
(id-root ?id submit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  submit.clp 	submit1  "  ?id "  kaha)" crlf))
)

;@@@ Added by jagriti(18.1.2014)
;In 1893 the Senate considered the matter again and [adopted] a resolution, respectfully requesting the Government of India to take into their early consideration the proposal submitted to them for amending the Act.
;1893 में सीनेट ने इस मामले पर पुनः विचार किया और भारत सरकार से अधिनियम के संशोधन के लिए प्रस्तुत किये गये प्रस्ताव पर शीघ्र विचार करने का सादर अनुरोध करते हुए एक प्रस्ताव पारित किया।
;In addition to this, the large number of essays submitted for the Griffith Memorial Prize makes it patent that many of our graduates are engaged in advance study and research work.
;इसके अलावा ग्रिफिथ स्मारक पुरस्कार के लिए जिस तरह भारी संख्या में निबंध प्रस्तुत किये हैं उसमें स्पष्ट हो जाता है कि हमारे बहुत से स्नातक उच्च स्तर के अध्ययन और शोध-कार्य में लगे हुए हैं।
(defrule submit2
(declare (salience 4800))
(id-root ?id submit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-kqxanwa_viSeRaNa ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswuwa_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  submit.clp 	submit2  "  ?id " praswuwa_kara)" crlf))
)

; @@@ Added by jagriti(25.1.2014)
; She refused to submit to threats. [oxford advance learner]
;उसने धमकियों को मान लेने से मना कर दिया .  
(defrule submit3
(declare (salience 4700))
(id-root ?id submit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA ?id1 ?id)
(id-root ?id1 refuse)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  submit.clp 	submit3  "  ?id "  mAna_le)" crlf))
)

;@@@ Added by jagriti(25.1.2014)
;Need a lady submit herself to her husband.
;एक महिला को  अपने पति के लिए खुद को समर्पण करने की आवश्यकता है. 
(defrule submit4
(declare (salience 4600))
(id-root ?id submit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 herself|himself|myself)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarpaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  submit.clp 	submit4  "  ?id "  samarpaNa_kara)" crlf))
)

;...............Default rule..................
;@@@ Added by jagriti
;Changed meaning from 'mAna_le' to 'jamA_kara' (25-01-14)
(defrule submit5
(declare (salience 100))
(id-root ?id submit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  submit.clp 	submit5  "  ?id "  jamA_kara)" crlf))
)

