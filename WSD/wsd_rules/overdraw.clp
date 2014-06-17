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
;Customers who overdraw their accounts will be charged a fee.  ;oald
;ग्राहको को, जो अपने खाते से ज्यादा पैसे निकालते है , एक शुल्क देना होगा.
;The account was overdrawn.   ;cald
;खाते से ज्यादा पैसे निकाले गए थे.
(defrule overdraw1
(declare (salience 4900))
(id-root ?id overdraw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 account)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jyAxA_pEse_nikAla))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overdraw.clp 	overdraw1   "  ?id "  jyAxA_pEse_nikAla )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  overdraw.clp      overdraw1   "  ?id " se )" crlf)
))

;@@@ Added by Pramila(BU) on 18-02-2014
;They were overdrawn by £150, so they couldn't write any cheques.  ;cald
;उन्होंने 150 पाउंड से ज्यादा पैसे निकाल लिए थे इसलिए वे कोई चैक नहीं लिख सकते थे
(defrule overdraw2
(declare (salience 4900))
(id-root ?id overdraw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA_by-saMbanXI ?id ?id1)
(id-word =(+ ?id 1) by)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) se_jyAxA_pEse_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " overdraw.clp	overdraw2  "  ?id "  " ?id1 "  se_jyAxA_pEse_nikAla  )" crlf))
)

;-------------------------default rules---------------------------
;@@@ Added by Pramila(BU) on 18-02-2014
;He has overdrawn the girl's beauty, though it is not true.  ;shiksharthi
;उसने लड़की की सुंदरता की अतिरंजना की जबकि यह सत्य नहीं है.
(defrule overdraw3
(declare (salience 100))
(id-root ?id overdraw)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awiraMjanA_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overdraw.clp 	overdraw3   "  ?id "  awiraMjanA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  overdraw.clp      overdraw3   "  ?id " kI )" crlf)
))


;@@@ Added by Pramila(BU) on 18-02-2014
(defrule overdraw4
(declare (salience 0))
(id-root ?id overdraw)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awiraMjanA_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overdraw.clp 	overdraw4   "  ?id "  awiraMjanA_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  overdraw.clp      overdraw4   "  ?id " kI )" crlf)
))

