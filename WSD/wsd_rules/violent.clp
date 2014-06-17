;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02@gmail.com)
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
;Suddenly Rajvir's heart gave a violent lurch.[gyannidhi]
;एकाएक राजवीर का दिल बहुत जोरों से/बुरी तरह धड़कने लगा।[gyannidhi]
 
(defrule violent0		
(declare (salience 4000))
(id-root ?id violent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?)
(viSeRya-viSeRaNa  ? ?id)
(id-root ?id1 heart)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burI_waraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  violent.clp 	violent0   "  ?id "  burI_waraha)" crlf))
)

;@@@ Added by Prachi Rathore[31-12-13]
;One night there was a [violent] storm.[gyannidhi]
;एक रात भयानक तूफान आया।
(defrule violent2		
(declare (salience 4000))
(id-root ?id violent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BayaMkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  violent.clp 	violent2   "  ?id "  BayaMkara )" crlf))
)

;xxxxxxxxxxxxxxxxxxxxxxxxxxx DEFAULT RULE xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;@@@ Added by Prachi Rathore
;violent crime.[oald]
;हिंसात्मक अपराध . 
(defrule violent1		
(declare (salience 2100))
(id-root ?id violent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hiMsAwmaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  violent.clp 	violent1   "  ?id "  hiMsAwmaka )" crlf))
)




;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_violent0
(declare (salience 4000))
(id-root ?id violent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?)
(subject-subject_samAnAXikaraNa ? ?id)
(id-root ?id1 heart)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burI_waraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " violent.clp   sub_samA_violent0   "   ?id " burI_waraha)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_violent0
(declare (salience 4000))
(id-root ?id violent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?)
(object-object_samAnAXikaraNa ? ?id)
(id-root ?id1 heart)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id burI_waraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " violent.clp   obj_samA_violent0   "   ?id " burI_waraha)" crlf))
)
