
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
;@@@ Added by Prachi Rathore[24-3-14]
;On an unbanked road frictional force alone can provide the centripetal force needed to keep the cyclist moving on a circular turn without slipping.[ncert]
;सपाट सडक पर अकेला घर्षण बल ही साइकिल सवार को बिना फिसले वर्तुल मोड लेने के लिए आवश्यक अभिकेन्द्र बल प्रदान कर सकता है..
(defrule unbanked1
(declare (salience 5000))
(id-word ?id unbanked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 road)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sapAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unbanked.clp 	unbanked1   "  ?id "  sapAta )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[24-3-14]
;The percentage of unbanked households is very high among recent immigrants. [cambridge]
;बिना  बैंक खाते वाले परिवारों का प्रतिशत हाल ही देशान्तर में बसनेवाला लोगो में बहुत अधिक है . 
(defrule unbanked2
(declare (salience 400))
(id-word ?id unbanked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_bEMka_KAwe_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unbanked.clp 	unbanked2   "  ?id "  binA_bEMka_KAwe_vAlA )" crlf))
)

;@@@ Added by Prachi Rathore[24-3-14]
; The unbanked often use expensive cheque-cashing services.[cambridge]
;बिना  बैंक खाते वाले लोग अक्सर महँगी cheque-cashing सेवाओं का उपयोग करते है . 
(defrule unbanked3
(declare (salience 400))
(id-word ?id unbanked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_bEMka_KAwe_vAle_loga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unbanked.clp 	unbanked3   "  ?id "  binA_bEMka_KAwe_vAle_loga )" crlf))
)

;@@@ Added by Prachi Rathore[24-3-14]

(defrule unbanked4
(declare (salience 200))
(id-word ?id unbanked)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_bEMka_KAwe_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unbanked.clp 	unbanked4   "  ?id "  binA_bEMka_KAwe_vAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_unbanked1
(declare (salience 5000))
(id-word ?id unbanked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 road)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sapAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " unbanked.clp   sub_samA_unbanked1   "   ?id " sapAta )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_unbanked1
(declare (salience 5000))
(id-word ?id unbanked)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 road)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sapAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " unbanked.clp   obj_samA_unbanked1   "   ?id " sapAta )" crlf))
)
