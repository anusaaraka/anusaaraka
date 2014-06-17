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
;@@@ Added by Pramila(BU) on 10-03-2014
;An equation obtained by equating a physical quantity with its dimensional formula is called the dimensional equation of the 
;physical quantity.   ;ncert
;किसी भौतिक राशि को उसके विमीय सूत्र के बराबर लिखने पर प्राप्त समीकरण को उस राशि का विमीय समीकरण कहते हैं.
(defrule equate0
(declare (salience 5000))
(id-root ?id equate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id1 ?id)
(kriyA-with_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara_liKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equate.clp 	equate0   "  ?id " barAbara_liKa )" crlf))
)


;-------------------default rules-------------------------
;@@@ Added by Pramila(BU) on 10-03-2014
;I don't see how you can equate the two things.  ;oald
;मै नहीं समझता कि तुम दो चीजों को बराबर कैसे मान सकते हो.
(defrule equate1
(declare (salience 100))
(id-root ?id equate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara_mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equate.clp 	equate1   "  ?id " barAbara_mAna )" crlf))
)


;@@@ Added by Pramila(BU) on 10-03-2014
(defrule equate2
(declare (salience 0))
(id-root ?id equate)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara_mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equate.clp 	equate2   "  ?id " barAbara_mAna )" crlf))
)
