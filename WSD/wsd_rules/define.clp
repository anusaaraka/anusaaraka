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
;Added by Pramila(Banasthali University)
;We defined physical health as the overall health of the physical body.
;हमने शारीरिक स्वास्थ्य को शारीरिक वस्तु के सम्पूर्णतयः स्वास्थ्य के रूप में परिभाषित किया . 
;A ray is defined as the path of energy propagation in the limit of wavelength tending to zero.
;किरण को वास्तव में, शून्य की ओर प्रवृत्त होते हुए तरङ्गदैर्घ्य की सीमा में ऊर्जा संचरण के पथ के रूप में परिभाषित किया गया है. 
;
(defrule define0
(declare (salience 5000))
(id-root ?id define)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariBARiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  define.clp 	define0   "  ?id "  pariBARiwa_kara )" crlf))
)


;Note that strength is only defined at pixels where the algorithm would draw a line.
;ध्यान दीजिए कि तीव्रता सिर्फ कम्प्यूटर पर प्रकट होने वाले शब्दबिन्दु पर सीमाङ्कित की हुई है जहाँ प्रणाली लाइन खीँचेगी 
;The border line of the country should be clearly defined.
;देश का सीमारेखा स्पष्टतः सीमाङ्कित की जानी चाहिए .
(defrule define1
(declare (salience 5000))
(id-root ?id define)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 line|strength|level|category|point)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImAfkiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  define.clp 	define1   "  ?id "  sImAfkiwa_kara )" crlf))
)


(defrule define2
(declare (salience 4500))
(id-root ?id define)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id defined)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSZciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  define.clp    define2   "  ?id "  niSZciwa )" crlf))
)



;------------------------------------------- Default rules --------------------------------------------
;All of these words were defined in a thesaurus.
;ये सभी शब्द शब्दकोश में परिभाषित किए गये थे
;Metadata set was defined to create a repository. 
;मेटाडाटा समुच्चय कोष बनाने के लिए परिभाषित किया गया था . 
;Procedures and criteria are defined prior to the beginning of the review process.
;कार्यविधि और मानदण्ड पुनरवलोकन प्रक्रिया के आरम्भ से पहले परिभाषित किए गये हैं . 
(defrule define3
(declare (salience 3000))
(id-root ?id define)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariBARiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  define.clp 	define3   "  ?id "  pariBARiwa_kara )" crlf))
)

;The photocurrent is found to decrease rapidly until it drops to zero at a certain sharply defined, critical value of the negative potential V 0 on the plate A.
;यह पाया गया कि प्रकाशिक - धारा तेजी से कम होती जाती है जब तक कि यह पट्टिका A पर ऋण विभव V 0 के किसी निश्चित तीक्ष्ण और स्पष्ट क्रान्तिक मान पर शून्य नहीं हो जाती.

(defrule define4
(declare (salience 3000))
(id-root ?id define)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRZta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  define.clp 	define4   "  ?id "  spaRZta )" crlf))
)

