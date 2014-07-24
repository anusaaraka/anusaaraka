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


;@@@ added by Pramila(BU) on 25-01-2014
;The determination of policy is not your business - your job is to implement it.       ;cald
;नीति का निर्धारण करना आपका व्यापार नहीं है - आपका काम इसे लागू करना है.
(defrule determination0
(declare (salience 4950))
(id-root ?id determination)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirXAraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  determination.clp 	determination0   "  ?id "  nirXAraNa )" crlf))
)

;@@@ added by Pramila(BU) on 25-01-2014
;You can't help but admire her determination to succeed.      ;cald
;तुम मदद नहीं कर सकते लेकिन सफल होने के लिए उसके दृढ़ संकल्प की प्रशंसा कर सकते हैं.
(defrule determination1
(declare (salience 4950))
(id-root ?id determination)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa_saMkalpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  determination.clp 	determination1   "  ?id "  xqDZa_saMkalpa )" crlf))
)

;@@@ added by Pramila(BU) on 25-01-2014
;I admire her determination to get it right.        ;oald
;मैं इसे ठीक करने के लिए उसके दृढ़ संकल्प की प्रशंसा करता हूँ.
(defrule determination2
(declare (salience 4950))
(id-root ?id determination)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(saMjFA-to_kqxanwa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZa_saMkalpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  determination.clp 	determination2   "  ?id "  xqDZa_saMkalpa )" crlf))
)

;--------------------------------------------default rules----------------------------------------
;@@@ added by Pramila(BU) on 25-01-2014
;He showed great courage and determination.          [problem sentence]
;उसने बहुत साहस और दृढ़ता दिखाई.
(defrule determination3
(declare (salience 4000))
(id-root ?id determination)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  determination.clp 	determination3   "  ?id "  xqDZawA )" crlf))
)

;@@@ added by Pramila(BU) on 25-01-2014
(defrule determination4
(declare (salience 0))
(id-root ?id determination)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xqDZawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  determination.clp 	determination4   "  ?id "  xqDZawA )" crlf))
)
