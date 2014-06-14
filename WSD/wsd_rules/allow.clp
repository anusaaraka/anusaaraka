;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;Do you think Dad will allow you to go to Jamie's party?
;क्या तुम्हें लगता है कि पिता जी तुम्हें जैमी कीं पार्टी में जाने कीं  देंगे ?
(defrule allow1
(declare (salience 4000))
(id-root ?id allow)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-vAkyakarma  ?id ?id1)
(to-infinitive  ?id2 ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumawi_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allow.clp 	allow1   "  ?id "  anumawi_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  allow.clp      allow1   "  ?id " ko )" crlf)
)
)

;You're not allowed to talk during the exam.
;परीक्षा के समय आपको बात करने कीं इजाजत नहीं है. 
(defrule allow2
(declare (salience 3500))
(id-root ?id allow)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-kriyArWa_kriyA  ?id ?id1)
(to-infinitive  ?id2 ?id1)
(not(kriyA-object ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumawi))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allow.clp 	allow2   "  ?id "  anumawi )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* " allow.clp    allow2   "  ?id " ko )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)16-dec-2013
;This is the ideal soil for tea because it allows water to filter through.[gyanannidhi]
;चाय के लिए वह आदर्श मिट्टी है क्योंकि यह पानी छन कर जाने देता है।
(defrule allow3
(declare (salience 3500))
(id-root ?id allow)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-kriyArWa_kriyA  ?id ?id2)
(to-infinitive  =(+ ?id 2) ?id2)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allow.clp 	allow3   "  ?id "  xe )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)16-jan-2014
;Pets are not allowed in this hotel.
;इस होटल में पालतू जानवर लाने की अनुमति नहीं है . 
(defrule allow4
(declare (salience 3500))
(id-root ?id allow)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-subject  ?id ?sub)
(id-root ?sub pet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAne_kI_anumawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allow.clp 	allow4   "  ?id "  lAne_kI_anumawi )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)28-jan-2014
;The student is allowed a choice of subjects which includes a general knowledge of the history of his country.[gyananidhi]
;अतः विद्यार्थी को विषयों को चुनने की अनुमति दी जाती है जिसमें उसके देश के इतिहास का सामान्य ज्ञान तथा विश्व भूगोल का सामान्य ज्ञान शामिल होता है।
(defrule allow5
(declare (salience 3500))
(id-root ?id allow)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-object  ?id ?obj)
(id-root ?obj choice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cunane_kI_anumawi_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allow.clp 	allow5  "  ?id "  cunane_kI_anumawi_xe )" crlf)
)
)


;**************************DEFAULT RULES*************************************


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;He never allowed any attempt to restrict the jurisdiction or powers of the High Court.[gyanannidhi]
;उन्होंने उच्च न्यायालय के अधिकार क्षेत्र शक्ति पर रोक लगाने के किसी भी प्रयास की कभी भी अनुमति नहीं दी
(defrule allow0
(declare (salience 0))
(id-root ?id allow)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumawi_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  allow.clp 	allow0  "  ?id "  anumawi_xe )" crlf))
)






