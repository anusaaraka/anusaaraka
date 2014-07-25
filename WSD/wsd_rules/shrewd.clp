;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Sing(singh.jagriti5@gmail.com)
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
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;########################################################################
;@@@ Added by jagriti(13.3.2014)
;To give a shrewd reason for his absence.[rajpal]
;उसके अनुपस्थिति के लिये एक समझदारीपूर्ण कारण देना . 
(defrule shrewd0
(declare (salience 5000))
(id-root ?id shrewd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 guess|answer|statement|move|reason)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJaxArIpUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shrewd.clp 	shrewd0 "  ?id "  samaJaxArIpUrNa )" crlf))
)
;@@@ Added by jagriti(13.3.2014)
;He is a shrewd lawyer.[rajpal]
;वह एक समझदार वकील है . 
(defrule shrewd1
(declare (salience 4900))
(id-root ?id shrewd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1  ?str&:(and (neq (numberp ?str) TRUE)(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shrewd.clp 	shrewd1 "  ?id "  samaJaxAra )" crlf))
)
;...Default rule...
;@@@ Added by jagriti(13.3.2014)
;Shrewd pain.[rajpal]
;तेज दर्द . 
(defrule shrewd2
(declare (salience 100))
(id-root ?id shrewd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shrewd.clp 	shrewd2 "  ?id "  weja )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_shrewd0
(declare (salience 5000))
(id-root ?id shrewd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 guess|answer|statement|move|reason)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJaxArIpUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shrewd.clp   sub_samA_shrewd0   "   ?id " samaJaxArIpUrNa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_shrewd0
(declare (salience 5000))
(id-root ?id shrewd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 guess|answer|statement|move|reason)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJaxArIpUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shrewd.clp   obj_samA_shrewd0   "   ?id " samaJaxArIpUrNa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_shrewd1
(declare (salience 4900))
(id-root ?id shrewd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (neq (numberp ?str) TRUE)(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shrewd.clp   sub_samA_shrewd1   "   ?id " samaJaxAra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_shrewd1
(declare (salience 4900))
(id-root ?id shrewd)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (neq (numberp ?str) TRUE)(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shrewd.clp   obj_samA_shrewd1   "   ?id " samaJaxAra )" crlf))
)
