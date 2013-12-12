;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02 at gmail dot com)
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
;His words implied a threat.[m-w]
;उसके शब्दों ने धमकी निहित थी . 
(defrule imply0
(declare (salience 3000))
(id-root ?id imply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 threat|equality)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nihiwa))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  imply.clp 	imply0   "  ?id "  nihiwa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  imply.clp     imply0   "  ?id "  ne)" crlf))
)

;The law implies that the total electric flux through a closed surface is zero if no charge is enclosed by the surface.[physics]
;इस नियम से यह परिणाम निकलता है कि यदि किसी बन्द पृष्ठ द्वारा कोई आवेश परिबद्ध नहीं किया गया है तो उस पृष्ठ से गुजरने वाला कुल फ्लक्स शून्य होता है .

(defrule imply1
(declare (salience 3000))
(id-root ?id imply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 law|war)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma_nikala))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  imply.clp 	imply1   "  ?id "  pariNAma_nikala )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  imply.clp     imply1   "  ?id "  se )" crlf))
)


;Are you implying that I'm fat?[cambridge]
;क्या आप संकेत दे रहे हैं कि मैं मोटा हूँ? 
(defrule imply2
(declare (salience 2900))
(id-root ?id imply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(and(kriyA-object ?id ?id1)(id-root ?id1 that))(id-root =(+ ?id 1) that))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkewa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  imply.clp 	imply2   "  ?id "  saMkewa_xe )" crlf))
)

;Variable rate loans, as the name implies, have a variable interest rate.[cambridge]
;परिवर्तनीय दर ऋण , जैसा कि नाम सूचित करता है, एक परिवर्तनीय ब्याज दर है.
(defrule imply3
(declare (salience 3000))
(id-root ?id imply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaNa ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  imply.clp 	imply3   "  ?id "  sUciwa_kara )" crlf))
)





;XXXXXXXXXXXXXXX DEFAULT XXXXXXXXXXXXXXXXX

 
;I'm not implying anything about your cooking, but could we eat out tonight?[cambridge]
;मैं आपके खाना पकाने की विधि के बारे में कुछ भी अर्थ नहीं निकाल रहा हूँ, परन्तु क्या हम आज की रात बाहर खा सकते हैं.
(defrule imply4	
(declare (salience 2500))
(id-root ?id imply)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arWa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  imply.clp 	imply4   "  ?id "  arWa_nikAla )" crlf))
)


(defrule imply5
(declare (salience 2000))
(id-root ?id imply)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id arWa_ho))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  imply.clp 	imply5   "  ?id "  arWa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  imply.clp     imply5   "  ?id "  kA )" crlf))
)
 
