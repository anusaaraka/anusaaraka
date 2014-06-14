;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (Banasthali University)
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
;@@@ Added by jagriti(4.3.2014)
;She cast a speculative look at Kate.[oald] 
;वह केट पर एक कौतूहलपूर्ण नज़र डाली.
(defrule speculative0
(declare (salience 5000))
(id-root ?id speculative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 look)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOwUhalapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  speculative.clp 	speculative0   "  ?id "  kOwUhalapUrNa )" crlf))
)
;@@@ Added by jagriti(4.3.2014)
;speculative investment .[oald]
;लाभ की आशा से किया हुआ निवेश.
(defrule speculative1
(declare (salience 5000))
(id-root ?id speculative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 investment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABa_kI_ASA_se_kiyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  speculative.clp 	speculative1   "  ?id "  lABa_kI_ASA_se_kiyA_huA )" crlf))
)

;.....Default rule.....
;@@@ Added by jagriti(4.3.2014)
;The report is highly speculative and should be ignored. [oald]
;रिपोर्ट अत्यधिक कल्पित है और इसे अनदेखा किया जाना चाहिए.
(defrule speculative2
(declare (salience 100))
(id-root ?id speculative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalpiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  speculative.clp 	speculative2   "  ?id "  kalpiwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_speculative0
(declare (salience 5000))
(id-root ?id speculative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 look)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOwUhalapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " speculative.clp   sub_samA_speculative0   "   ?id " kOwUhalapUrNa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_speculative0
(declare (salience 5000))
(id-root ?id speculative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 look)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOwUhalapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " speculative.clp   obj_samA_speculative0   "   ?id " kOwUhalapUrNa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_speculative1
(declare (salience 5000))
(id-root ?id speculative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 investment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABa_kI_ASA_se_kiyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " speculative.clp   sub_samA_speculative1   "   ?id " lABa_kI_ASA_se_kiyA_huA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_speculative1
(declare (salience 5000))
(id-root ?id speculative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 investment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lABa_kI_ASA_se_kiyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " speculative.clp   obj_samA_speculative1   "   ?id " lABa_kI_ASA_se_kiyA_huA )" crlf))
)
