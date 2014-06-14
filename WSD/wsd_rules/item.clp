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
;@@@ Added by Prachi Rathore
;What's the next item on the agenda?[oald]
;कार्यसूची पर अगला विषय क्या है? 
(defrule item0
(declare (salience 5000))
(id-root ?id item)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viRaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  item.clp 	item0   "  ?id "  viRaya )" crlf))
)

;@@@ Added by Prachi Rathore
;I heard an item on the radio about women engineers.[oald]
;मैंने स्त्री इंजीनियरों के बारे में रेडिओ पर एक समाचार सुना . 
(defrule item1
(declare (salience 5000))
(id-root ?id item)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(or(kriyA-in_saMbanXI  ?id1 ?id2)(kriyA-on_saMbanXI  ?id1 ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAcAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  item.clp 	item1   "  ?id "  samAcAra )" crlf))
)




;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore
;Can I pay for each item separately?[oald]
;क्या मैं हर एक चीज के लिये अलग-अलग भुगतान कर सकता हूँ? 
(defrule item2
(declare (salience 4000))
(id-root ?id item)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  item.clp 	item2   "  ?id "  cIja )" crlf))
)
