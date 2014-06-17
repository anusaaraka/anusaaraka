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

;@@@ Added by Pramila(BU) on 01-02-2014
;This Committee was to make suggestions whereby the existing expenditure and the available resources for M.A. classes may be put to the 
;best use.         ;gyannidhi
;समिति को ऐसे सुझाव देने थे जिनसे एम॰ ए॰ कक्षाओं पर किया जा रहे वर्तमान व्यय और उपलब्ध साधनों का सर्वोत्तम उपयोग किया जा सके।
(defrule existing0
(declare (salience 5000))
(id-word ?id existing)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varwamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exist.clp 	exist0   "  ?id "  varwamAna )" crlf))
)

;@@@ Added by Pramila(BU) on 01-02-2014
(defrule existing1
(id-word ?id existing)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varwamAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exist.clp 	exist1   "  ?id "  varwamAna )" crlf))
)
