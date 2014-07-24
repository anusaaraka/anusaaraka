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
;@@@ Added by Prachi Rathore[18-3-14]
;harmonious relations between the country's ethnic groups.[cambridge]
;देश के जातीय समूहों के बीच सद्भावनापूर्ण सम्बन्ध . 
(defrule harmonious0
(declare (salience 5000))
(id-root ?id harmonious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 relation|agreement|combination|neighbour|alliance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saxBAvanApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harmonious.clp 	harmonious0   "  ?id "  saxBAvanApUrNa )" crlf))
)

;@@@ Added by Prachi Rathore[18-3-14]
;Harmonious songs.[shiksharthi-kosh]
;समस्वर गीत .  
(defrule harmonious1
(declare (salience 5000))
(id-root ?id harmonious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 song|sound|bell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samasvara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harmonious.clp 	harmonious1   "  ?id "  samasvara )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[18-3-14]
 ;Harmonious question.
;सुव्यवस्थित प्रश्न 
(defrule harmonious2
(declare (salience 400))
(id-root ?id harmonious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suvyavasWiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harmonious.clp 	harmonious2   "  ?id "  suvyavasWiwa )" crlf))
)


;@@@ Added by Prachi Rathore[18-3-14]

(defrule harmonious3
(declare (salience 200))
(id-root ?id harmonious)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suvyavasWiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harmonious.clp 	harmonious3   "  ?id "  suvyavasWiwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_harmonious0
(declare (salience 5000))
(id-root ?id harmonious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 relation|agreement|combination|neighbour|alliance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saxBAvanApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " harmonious.clp   sub_samA_harmonious0   "   ?id " saxBAvanApUrNa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_harmonious0
(declare (salience 5000))
(id-root ?id harmonious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 relation|agreement|combination|neighbour|alliance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saxBAvanApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " harmonious.clp   obj_samA_harmonious0   "   ?id " saxBAvanApUrNa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_harmonious1
(declare (salience 5000))
(id-root ?id harmonious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 song|sound|bell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samasvara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " harmonious.clp   sub_samA_harmonious1   "   ?id " samasvara )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_harmonious1
(declare (salience 5000))
(id-root ?id harmonious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 song|sound|bell)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samasvara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " harmonious.clp   obj_samA_harmonious1   "   ?id " samasvara )" crlf))
)
