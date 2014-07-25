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
;@@@ Added by Prachi Rathore[24-2-14]
; A tile floor underlies the rug.[m-w]
;एक खपरैल फर्श कम्बल के नीचे है . 
(defrule underlie0
(declare (salience 5000))
(id-root ?id underlie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 rug)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIcA ))
(assert (kriyA_id-object_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  underlie.clp 	underlie0   "  ?id "  nIcA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  underlie.clp 	underlie0   "  ?id "   ke)" crlf))
)



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[24-2-14]
;These ideas underlie much of his work.[oald]
;ये विचार उसके कार्य का आधार हैं . 
(defrule underlie1
(declare (salience 400))
(id-root ?id underlie)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  underlie.clp 	underlie1   "  ?id "  AXAra )" crlf))
)

;@@@ Added by Prachi Rathore[24-2-14]

(defrule underlie2
(declare (salience 200))
(id-root ?id underlie)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  underlie.clp 	underlie2   "  ?id "  AXAra )" crlf))
)
