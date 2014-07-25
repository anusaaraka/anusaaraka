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
;We drove along at a terrific speed.[oald]
;हम तेज रफ्तार में आगे बढे . 
(defrule terrific0
(declare (salience 5000))
(id-root ?id terrific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 speed|noise)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terrific.clp 	terrific0   "  ?id "  weja )" crlf)
)
)


;@@@ Added by Prachi Rathore[17-2-14]
;I've got a terrific amount of work to do.[oald]
;मेरे पास करने के लिये  बहुत अधिक मात्रा कार्य है . 
;मेरे पास बहुत ज्यादा/अधिक काम है.
(defrule terrific3
(declare (salience 5000))
(id-root ?id terrific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 amount)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terrific.clp 	terrific3   "  ?id "  bahuwa_aXika )" crlf)
)
)


;@@@ Added by Prachi Rathore[17-2-14]
;She was terrified on seeing the terrific scene in the cinema.[shiksharthi-kosh]
;वह चलचित्र में भयानक दृश्य को देखने पर डर गयी थी . 
(defrule terrific4
(declare (salience 4500))
(id-root ?id terrific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-on_saMbanXI  ?id2 ?id3)
(id-root ?id2 terrify)
(kriyA-object  ?id3 ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BayAnaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terrific.clp 	terrific4   "  ?id "  BayAnaka )" crlf)
)
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[17-2-14]
;A terrific opportunity .[oald]
;एक शानदार मौका . 
(defrule terrific1
(declare (salience 400))
(id-root ?id terrific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terrific.clp 	terrific1   "  ?id "  SAnaxAra )" crlf))
)

;@@@ Added by Prachi Rathore[17-2-14]

(defrule terrific2
(declare (salience 200))
(id-root ?id terrific)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAnaxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terrific.clp 	terrific2   "  ?id "  SAnaxAra )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_terrific0
(declare (salience 5000))
(id-root ?id terrific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 speed|noise)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " terrific.clp   sub_samA_terrific0   "   ?id " weja )" crlf)
)
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_terrific0
(declare (salience 5000))
(id-root ?id terrific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 speed|noise)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id weja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " terrific.clp   obj_samA_terrific0   "   ?id " weja )" crlf)
)
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_terrific3
(declare (salience 5000))
(id-root ?id terrific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 amount)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " terrific.clp   sub_samA_terrific3   "   ?id " bahuwa_aXika )" crlf)
)
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_terrific3
(declare (salience 5000))
(id-root ?id terrific)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 amount)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " terrific.clp   obj_samA_terrific3   "   ?id " bahuwa_aXika )" crlf)
)
)
