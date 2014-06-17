;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith) 27/03/2014
;Many competing arguments were exchanged between Prime Minister Manmohan Singh and the main opposition party prime ministerial candidate, Narendra Modi, about the greatness of Sardar Patel.[news]
;प्रधानमंत्री मनमोहन सिंह और मुख्य विपक्षी दल से प्रधानमंत्री पद के दावेदार नरेंद्र मोदी के मध्य सरदार पटेल की महानता को लेकर प्रतिस्पर्धी तर्क हुए। 
(defrule argument1
(declare (salience 3000))
(id-root ?id argument)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-word ?id1 competing)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prawisparXI_warka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " argument.clp	argument1  "  ?id "  " ?id1 " prawisparXI_warka )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith) 27/03/2014
;There are strong arguments for and against euthanasia.[oald]
;इच्छा-मृत्यु  के पक्ष और विपक्ष में मजबूत दलीलें हैं
(defrule argument2
(declare (salience 3000))
(id-root ?id argument)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-for_saMbanXI  ?id ?id1)
(id-word ?id1 euthanasia)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xalIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  argument.clp 	argument2   "  ?id "  xalIla )" crlf))
)

;****************DEFAULT RULES***************************************


;@@@ Added by Garima Singh(M.Tech-C.S, Bansthali Vidyapith) 27/03/2014
;It is generally assumed that stress is caused by too much work.[oald]
;यह आम तौर पर माना जाता है कि तनाव बहुत ज्यादा काम के कारण होता है .
(defrule argument0
(declare (salience 0))
(id-root ?id argument)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahasa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  argument.clp 	argument0   "  ?id "  bahasa )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_argument1
(declare (salience 3000))
(id-root ?id argument)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1 competing)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prawisparXI_warka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " argument.clp   sub_samA_argument1   "   ?id " " ?id1 " prawisparXI_warka )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_argument1
(declare (salience 3000))
(id-root ?id argument)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1 competing)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 prawisparXI_warka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " argument.clp   obj_samA_argument1   "   ?id " " ?id1 " prawisparXI_warka )" crlf))
)
