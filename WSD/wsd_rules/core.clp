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

;The lack of government funding is at the core of the problem.
;Let's get to the core of the argument.
(defrule core0
(declare (salience 3000))
(id-root ?id core)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id ?noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 problem|argument|organization)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saba_se_mahawvapUrNa_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  core.clp       core0   "  ?id "  saba_se_mahawvapUrNa_BAga )" crlf))
)

(defrule core1
(declare (salience 0))
(id-word ?id core)
(id-cat_coarse ?id noun)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMwarBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  core.clp       core1   "  ?id "  aMwarBAga )" crlf))
) 

;They are cutting back production of some of their core products.
;The company's core operations include entertainment and aviation.
;The final status negotiations would focus on the core issues of the peace process. 
(defrule core2
(declare (salience 0))
(id-word ?id core)
(id-cat_coarse ?id adjective)
?mng <-(meaninig_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saba_se_mahawvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  core.clp       core2   "  ?id "  saba_se_mahawvapUrNa )" crlf))
) 

;Peel and core the pears before cooking them.
(defrule core3
(declare (salience 0))
(id-word ?id core)
(id-cat_coarse ?id verb)
?mng <-(meaninig_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIjakoRa_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  core.clp       core3   "  ?id "  bIjakoRa_nikAla )" crlf))
) 

;*************************************************** MEANINGS ********************************************************************************

;NOUN
;*****

;IMPORTANT PART:सब से महत्वपूर्ण भाग
;CENTRE: keMxra-BAg(केंद्र-भाग), aMwarBAg(अंतर्भाग)

             
;ADJECTIVE
;**********

;IMPORTANT :most important or most basic:
		;EX: They are cutting back production of some of their core products.

;core value, belief, issue, etc.
		;EX: The final status negotiations would focus on the core issues of the peace process.
       
;core business/operations/activities : the most important or largest part of a company's business activities, which it depends on in order to continue trading:
		;EX: The company's core operations include entertainment and aviation.

;VERB
;*****

;बीजकोष निकालना :bIjakoRa nikAl: to remove the core from a piece of fruit:
		;EX: Peel and core the pears before cooking them.

;सार : sAr : the choicest or most essential or most vital part of some idea or experience
;the core of her arguements 

;******************************************************************** EXAMPLES ****************************************************************

;The core of the cloth-doll is of paper . 
;इनका भीतरी ढांचा कागज या लुगदी को बना होता है 
;A granite batholith forms the core of the Karakoram .
;एक ग्रेनाइट बैथोलिथ कराकोरम के क्रोड में है
;A sense of fairness and decency to form the core of the teacher 's frame of mind must come from social consciousness . 
;शिक्षक के दृष्टिकोण में न्याय और नेकी सामाजिक चेतना के माध्यम से ही आनी चाहिए
;The core of his organization must be made self-sustaining . 
;अपने संगठन के बुनियादी भाग को आत्मनिर्भर बनाना जरूरी था
;This internal consciousness is the common quintessential core of all life . 
;यह भीतरी चेतना सभी प्राणीयो à ¤ मे à ¤ व् याप् त सारतत् व है
;He said that all religions , stripped to the core of truth , are the same . 
;उनकी मान् यता थी कि सत् य के सार तत् व को उदघाटित करने वाले सभी धमै एक है
;Their idealism was not with out a hard core of realism and a sense of humor . 
;उनका आदर्शवाद यथार्थवाद की ठोस जमीन पर टिका था और साथ ही इसमें विनोद का पुट भी था

;But for all his passivity there was a hard core of iron will and determination which showed up on rare occasions .
;सर्व प्रकार की निष्क्रियता के होने पर भी उनमें लौह संकल्प तथा निश्चय का एक दृढ़ अभ्यंतर था जो असाधारण अवसरों पर प्रकट होता था 
;A sense of fairness and decency to form the core of the teacher 's frame of mind must come from social consciousness . 
;शिक्षक के दृष्टिकोण में न्याय और नेकी सामाजिक चेतना के माध्यम से ही आनी चाहिए
;He was determined to get a nuclear facility like the cyclotron which he had seen at Berkeley to serve as the core for nuclear research . 
;वे साइक्लोट्रान जैसी न्यूक्लीन सुविधा जिसे उन्होंने बार्कले में देखी थी प्राप्त करने के लिए कटिबद्ध थे ताकि वह न्यूक्लीन अनुसंधान के कोड का काम कर सकें
;Wash fruits , cut off both ends , peel , cut into quarters and core .
;फलों को धोकर दोनों सिरे काट नमक का घोल डुबोने के लिए , दीजिए और छिलका उतार दीजिए.
;Yet we saw and felt , to the innermost core of our being , the day-to-day humiliation and exploitation of our own people . 
;हमने रोजाना अपने आदमियों को अपनी आंखों जलील किये जाते और उनका शोषण होते देखा.
;The Guru said , ` My Sikhs shall not deny themselves the joys of the earth , though they will remain detached in their inner core . '

;It is this optimism that lifts up the tales above their world of unreality and makes them warmly earthy in their inner core . 
;यही आशावादिता इन कथाओं को काल् पनिकता से ऊपर उठाकर यथार्थ का आभास कराती है .
;MYTHS AND MYTHOLOGY MYTHS constitute not only an integral part of folklore , but are also the most essential core . 
;वर्तमान रीति - रिवाजों के उद्गम और विकास का समर्थन करने वाले मिथक इस विचारधारा के अंतर्गत माने जा सकते हैं
;In the core areas of several cities , traditional ways of life continue with some adjustments and adaptations . 
;अनेक नगरों के केंद्रीय क्षेत्रों में कुछ समायोजनों तथा अनुकूलनों के साथ परंपरागत जीवनशैली चलती रहती है
;This era is still considered by many as the ` golden age of science fiction ' since it produced some of the all-time classics of hard-core science fiction . 
;उनके इस उपक्रम ने विज्ञान कथा - साहित् य की टेढ़ी नींव को सुस् थापित करने हेतु उसे संतुलित सशक् तता भी प्रदान की

