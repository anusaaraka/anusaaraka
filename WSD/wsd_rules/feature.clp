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

;This is a feature film, not a documentary.सिनेमा की फिल्म
;यह एक एक वृत्तचित्र नहीं  , सिनेमा की फिल्म है. 
(defrule feature0
(declare (salience 5000))
(id-root ?id feature)
?mng <-(meaning_to_be_decided ?id)
(samAsa  ?id1 ?id)
(id-word ?id1 film)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sinemA_kI_Pilma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " feature.clp	feature0  "  ?id "  " ?id1 "  sinemA_kI_Pilma  )" crlf))
)


;This is an featured product.
;यह विशेष रुप से प्रदर्शित उत्पाद है.
(defrule feature1
(declare (salience 4900))
(id-root ?id feature)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id featured)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRa_rupa_se_praxarSiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feature.clp 	feature1   "  ?id "  viSeRa_rupa_se_praxarSiwa )" crlf))
)

;-------------------------------------------default rules---------------------------------------------
;I can't feature that happening.
;मै उस घटना को प्रधानता नही दे सकता.
;This restaurant features the most famous chefs in France.
;यह रेस्तरां फ्रांस में सबसे प्रसिद्ध शेफ को प्रधानता देता है.
;This film features an important hero.
;यह फिल्म एक महत्वपूर्ण नायक को प्रधानता देती हैं. 
(defrule feature2
(declare (salience 4900))
(id-root ?id feature)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praXAnawA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feature.clp 	feature2   "  ?id "  praXAnawA_xe )" crlf))
)


;The town's main features are its beautiful mosque and ancient marketplace.
;शहर की मुख्य विशेषताएं अपने खूबसूरत मस्जिद और प्राचीन बाजार हैं.
;Our latest mosdel of phone has several new features.
;हमारे फोन के नवीनतम माडल की कई नई विशेषताएं  है.
;A unique feature of these rock shelters was that they were dry.
;इन रॉक आश्रयों की एक अनूठी विशेषता है कि वे सूखे थे.
;Most important feature of this city is the river.
;इस शहर की सबसे महत्वपूर्ण विशेषता नदी है.
(defrule feature3
(declare (salience 4000))
(id-root ?id feature)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feature.clp 	feature3   "  ?id "  viSeRawA )" crlf))
)

(defrule feature4
(declare (salience 4000))
(id-root ?id feature)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id featured)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feature.clp 	feature4   "  ?id "  viSiRta )" crlf))
)


(defrule feature5
(declare (salience 3000))
(id-root ?id feature)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  feature.clp 	feature5   "  ?id "  lakRaNa )" crlf))
)

;Have to be resolved

;Nose is an important feature of the face.
;His features are good.
;He has wonderful strong features.
;Her eyes are her best feature.
