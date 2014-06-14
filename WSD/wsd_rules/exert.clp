;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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

;How much control can he exert over his own life?   [oxford LD]
;वह अपने ही जीवन पर कितना नियंत्रण कर सकता हैं?
(defrule exert0
(declare (salience 5000))
(id-root ?id exert)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(viSeRya-viSeRaNa  ?id1 ?id2)
(id-root ?id2 control)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exert.clp 	exert0   "  ?id "  kara )" crlf))
)

;The moon exerts a force on the earth that causes the tides.
;चांद पृथ्वी पर बल लगाता है जो ज्वार भाटा का कारण बनता है.
;This shows that external agencies (e.g. gravitational and magnetic forces) can exert force on a body even from a distance.
;यह दर्शाता है कि बाह्य साधन (इन उदाहरणों में गुरुत्वीय एवं चुम्बकीय बल) एक दूरी से भी किसी पिण्ड पर बल लगा सकता है.
;The answer according to Newton is: Yes, the stone does exert an equal and opposite force on the earth.
;परन्तु न्यूटन के अनुसार इस प्रश्न का उत्तर है: हाँ, पत्थर भी पृथ्वी पर परिमाण में समान तथा दिशा में विपरीत बल लगाता है. 
;The compressed spring in turn exerts a force on your hand and you can feel it.
;सम्पीडित कमानी भी प्रत्युत्तर में आपके हाथों पर बल लगाती है: आप इस बल का अनुभव करते हैं.
;In Chapter 4, we learned that charges in motion (current) can exert force/torque on a stationary magnet.
;अध्याय 4 में हमने अध्ययन किया कि गतिमान आवेश (विद्युत धारा) स्थिर चुंबक पर बल/बल युग्म लगा सकते हैं. 
;We obtain the force F exerted by a charge Q on a charge q, as (1.7) Note that the charge q also exerts an equal 
;and opposite force on the charge Q.
;आवेश q द्वारा आवेश q पर आरोपित बल f को हम इस प्रकार प्राप्त करते हैं : ( 1.7 ) ध्यान दीजिए आवेश q भी आवेश q पर परिमाण में समान परन्तु दिशा में विपरीत बल लगाता है .
;If we place another point charge q at a point P, where OP = r, then the charge Q will exert a force on q as per 
;Coulomb's law.
;यदि एक अन्य बिन्दु आवेश q , बिन्दु p पर रखा जाए , जहाँ op = r , तो आवेश q , q पर कूलॉम के नियमानुसार बल लगाएगा .
(defrule exert1
(declare (salience 5000))
(id-root ?id exert)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 force|torque)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exert.clp 	exert1   "  ?id " lagA  )" crlf))
)

;He exerted all his authority to make them accept the plan.    [oxford ALD]
;उन्होंने योजना को लागू करने के लिए अपनी सभी अधिकार प्रयोग किए.
;If you were to exert your influence they might change their decision.    [cambridge ALD]
;यदि तुम अपने प्रभाव का प्रयोग करते तो वे अपना निर्णय बदल सकते थे.
(defrule exert2
(declare (salience 5000))
(id-root ?id exert)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id2)(and(kriyA-vAkyakarma  ?id ?id1)(kriyA-anaBihiwa_subject  ?id1 ?id2)))
(id-root ?id2 influence|authority)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prayoga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exert.clp 	exert2   "  ?id "  prayoga_kara )" crlf))
)
;-----------------------------default rules---------------------------------------
(defrule exert3
(declare (salience 4000))
(id-root ?id exert)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariSrama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exert.clp 	exert3   "  ?id " pariSrama_kara  )" crlf))
)

(defrule exert4
(declare (salience 3000))
(id-root ?id exert)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariSrama_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exert.clp 	exert4   "  ?id " pariSrama_kara  )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_exert0
(declare (salience 5000))
(id-root ?id exert)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(subject-subject_samAnAXikaraNa ?id1 ?id2)
(id-root ?id2 control)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " exert.clp   sub_samA_exert0   "   ?id " kara )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_exert0
(declare (salience 5000))
(id-root ?id exert)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(object-object_samAnAXikaraNa ?id1 ?id2)
(id-root ?id2 control)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " exert.clp   obj_samA_exert0   "   ?id " kara )" crlf))
)
