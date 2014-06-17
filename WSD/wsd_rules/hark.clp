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
;@@@ Added by Prachi Rathore[17-2-14]
 ;The newest styles hark back to the clothes of the Seventies. [oald]
;नवीनतम शैलियाँ ७० के दशक के वस्त्रों की याद दिलाती हैं . 
(defrule hark0
(declare (salience 5000))
(id-root ?id hark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?id1)
(id-root ?id1 back)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 yAxa_xilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hark.clp 	hark0  "  ?id "  " ?id1 "  yAxa_xilA )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[17-2-14]
 ;Hark! I hear a step on the stair!
;ध्यान से सुनिए!मैं सीढी पर कदमों की आहट सुनता हूँ! 
(defrule hark2
(declare (salience 400))
(id-root ?id hark)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna_se_suna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hark.clp 	hark2   "  ?id " xyAna_se_suna )" crlf))
)

;@@@ Added by Prachi Rathore[17-2-14]
 ;Hark, I hear a distant trumpet!
(defrule hark3
(declare (salience 200))
(id-root ?id hark)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna_se_suna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hark.clp 	hark3   "  ?id " xyAna_se_suna )" crlf))
)
