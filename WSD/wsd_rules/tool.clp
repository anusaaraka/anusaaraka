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
;@@@ Added by Prachi Rathore[5-2-14]
;The factory is not tooled up to produce this type of engine. [oald]
;फैक्टरी इस प्रकार  का इंजन बनाने के लिए औजार नहीं जुटा पायी है . 
(defrule tool0
(declare (salience 5000))
(id-root ?id tool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 up)
(kriyA-upasarga  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 OjAra_jutA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  tool.clp 	tool0  "  ?id "  " ?id1 "  OjAra_jutA  )" crlf))
)


;@@@ Added by Prachi Rathore[5-2-14]
; He tooled a design on the leather belt. [m-w]
;उसने चमडे के बैल्ट पर आकृति बनाई . 
(defrule tool4
(declare (salience 5000))
(id-root ?id tool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 design)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tool.clp 	tool4   "  ?id "  banA )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[5-2-14]
; His tools are words. [shiksharthi-kosh]
;शब्द ही उसके औजार  हैं . 
(defrule tool1
(declare (salience 4000))
(id-root ?id tool)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id OjAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tool.clp 	tool1   "  ?id "  OjAra )" crlf))
)

;Added by Prachi Rathore[5-2-14]
;I tooled around all day. [oald]
;
;(defrule tool2
;(declare (salience 4000))
;(id-root ?id tool)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id savArI_kara))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tool.clp 	tool2   "  ?id "  savArI_kara )" crlf))
;)

;@@@ Added by Prachi Rathore[5-2-14]
(defrule tool3
(id-root ?id tool)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id OjAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tool.clp 	tool3   "  ?id "  OjAra)" crlf))
)
