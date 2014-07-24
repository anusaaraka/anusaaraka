;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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

;@@@ Added by Pramila(BU) on 06-02-2014
;The courts were empowered to impose the death sentence for certain crimes.    ;oald
;अदालतों ने कुछ अपराधों के लिए मौत की सजा लागू करने का अधिकार दिया।
(defrule empower1
(declare (salience 4950))
(id-root ?id empower)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  empower.clp 	empower1   "  ?id "  aXikAra_xe )" crlf)
)
)

;@@@ Added by Pramila(BU) on 06-02-2014
;The court empowered Sir Asutosh to prepare a scheme for utilizing the gift.    ;gyannidhi
;न्यायालय ने सर आशुतोष को इस उपहार के उपयोग की योजना बनाने का अधिकार दिया।
(defrule empower2
(declare (salience 4950))
(id-root ?id empower)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(saMjFA-to_kqxanwa  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  empower.clp 	empower2   "  ?id "  aXikAra_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  empower.clp      empower2   "  ?id " ko )" crlf)
)
)


;-----------------default rules-----------------------
;@@@ Added by Pramila(BU) on 06-02-2014
;The movement actively empowered women and gave them confidence in themselves.    ;oald
;आंदोलन में सक्रिय रूप से महिलाओं को सशक्त बनाया और उन्हें अपने आप में विश्वास दिया.
(defrule empower3
(declare (salience 4000))
(id-root ?id empower)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saSakwa_banA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  empower.clp 	empower3   "  ?id "  saSakwa_banA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  empower.clp      empower3   "  ?id " ko )" crlf))
)

;@@@ Added by Pramila(BU) on 06-02-2014
(defrule empower4
(declare (salience 0))
(id-root ?id empower)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saSakwa_banA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  empower.clp 	empower4   "  ?id "  saSakwa_banA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  empower.clp      empower4   "  ?id " ko )" crlf))
)
