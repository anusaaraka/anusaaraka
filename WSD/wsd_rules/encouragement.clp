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

;@@@ Added by Pramila(BU) on 29-03-2014
; - With encouragement from Principal Sandhya Medpallivaar the teachers and students built the fort out of clay.   ;news dev corpus
; प्रधानाध्यापक संध्या मेडपल्लीवार के प्रोत्साहित होकर शिक्षकों व विद्यार्थियों ने मिट्टïी से किले का निर्माण किया।
(defrule encouragement0
(declare (salience 4900))
(id-root ?id encouragement)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ?id1 ?id)
(viSeRya-from_saMbanXI  ?id ?id2)
(id-word =(- ?id 1) with)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id (- ?id 1) prowsAhiwa_hokara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng   " ?*wsd_dir* " encouragement.clp 	encouragement0  "  ?id "  "  (- ?id 1)  "  prowsAhiwa_hokara )" crlf))
)

;--------------default rules-----------------------------
;@@@ Added by Pramila(BU) on 29-03-2014
; We gave encouragement to the indian team.    ;hinkhoj
; हमने भारतीय टीम को प्रोत्साहन दिया.
(defrule encouragement1
(declare (salience 100))
(id-root ?id encouragement)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prowsAhana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encouragement.clp 	encouragement1   "  ?id " prowsAhana  )" crlf))
)


;@@@ Added by Pramila(BU) on 29-03-2014
(defrule encouragement2
(declare (salience 0))
(id-root ?id encouragement)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prowsAhana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encouragement.clp 	encouragement2   "  ?id " prowsAhana  )" crlf))
)
