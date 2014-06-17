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
;It was a tremendous experience.[oald]
;यह एक जबर्दस्त अनुभव था . 
;A tremendous explosion.[oald]
;एक जबर्दस्त विस्फोट . 
(defrule tremendous0
(declare (salience 5000))
(id-root ?id tremendous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jabarxaswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tremendous.clp 	tremendous0   "  ?id "  jabarxaswa )" crlf)
)
)

;@@@ Added by Prachi Rathore[17-2-14]
;They were making the most tremendous amount of noise last night. [cambridge]
;वे पिछली रात भयंकर शोर मचा रहे थे . 
(defrule tremendous3
(declare (salience 5050))
(id-root ?id tremendous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 amount)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BayaMkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tremendous.clp 	tremendous3   "  ?id "  " ?id1 " BayaMkara )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[17-2-14]
;That performance was tremendous! [m-w]
;वह प्रदर्शन बहुत अच्छा था!  
(defrule tremendous1
(declare (salience 4000))
(id-root ?id tremendous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tremendous.clp 	tremendous1   "  ?id "   bahuwa_acCA)" crlf))
)

;@@@ Added by Prachi Rathore[17-2-14]
;
(defrule tremendous2
(declare (salience 4000))
(id-root ?id tremendous)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tremendous.clp 	tremendous2   "  ?id "   bahuwa_acCA)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_tremendous3
(declare (salience 5050))
(id-root ?id tremendous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 amount)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BayaMkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " tremendous.clp   sub_samA_tremendous3   "   ?id " " ?id1 " BayaMkara )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_tremendous3
(declare (salience 5050))
(id-root ?id tremendous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 amount)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 BayaMkara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " tremendous.clp   obj_samA_tremendous3   "   ?id " " ?id1 " BayaMkara )" crlf))
)
