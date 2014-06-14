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
;@@@ Added by Prachi Rathore[3-3-14]
; It was one of life's little ironies. [oald]
;यह जीवन की छोटी विडंबनाओ में से एक था . 

(defrule irony0
(declare (salience 5000))
(id-root ?id irony)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
(id-root ?id1 life)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vidaMbanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  irony.clp 	irony0   "  ?id "  vidaMbanA )" crlf))
)

;@@@ Added by Prachi Rathore[3-3-14]
;The irony is that when he finally got the job, he discovered he didn't like it. [oald]
;विडंबना यह है कि अन्ततः जब उसे  नौकरी मिली, उसने यह पाया कि उसे यह पसन्द नहीं . 
(defrule irony3
(declare (salience 5000))
(id-root ?id irony)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-det_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vidaMbanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  irony.clp 	irony3   "  ?id "  vidaMbanA )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[3-3-14]
 ;She said it without a hint/trace of irony.[oald]
;उसने इसको  व्यंगोक्ति के संकेत के बिना कहा . 
(defrule irony1
(declare (salience 400))
(id-root ?id irony)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyaMgyokwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  irony.clp 	irony1   "  ?id "  vyaMgyokwi )" crlf))
)

;@@@ Added by Prachi Rathore[3-3-14]
 
(defrule irony2
(declare (salience 400))
(id-root ?id irony)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyaMgyokwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  irony.clp 	irony2   "  ?id "  vyaMgyokwi )" crlf))
)
