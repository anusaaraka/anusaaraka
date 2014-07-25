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

;@@@ Added by Pramila(BU) on 18-02-2014
;The verdict was overruled by the Supreme Court.  ;oald
;फैसला सुप्रीम कोर्ट द्वारा रद्द कर दिया गया था.
(defrule overrule1
(declare (salience 4900))
(id-root ?id overrule)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 verdict|Court|judgement)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overrule.clp 	overrule1   "  ?id "  raxxa_kara_xe )" crlf)
))

;--------------------deafult rules----------------------
;@@@ Added by Pramila(BU) on 18-02-2014
;The principal overruled the teacher-in-charge.  ;shiksharthi
;प्राचार्य ने प्रभारी अध्यापक के विरुद्ध निर्णय दिया.
(defrule overrule2
(declare (salience 100))
(id-root ?id overrule)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNaya_xe))
(assert (kriyA_id-object_viBakwi ?id ke_viruxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overrule.clp 	overrule2   "  ?id "  nirNaya_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  overrule.clp      overrule2   "  ?id " ke_viruxXa )" crlf)
))

;@@@ Added by Pramila(BU) on 18-02-2014
(defrule overrule3
(declare (salience 0))
(id-root ?id overrule)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirNaya_xe))
(assert (kriyA_id-object_viBakwi ?id ke_viruxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overrule.clp 	overrule3   "  ?id "  nirNaya_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  overrule.clp      overrule3   "  ?id " ke_viruxXa )" crlf)
))
