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
;@@@ Added by Prachi Rathore
; a specialist in naval tactics.[m-w]
;नौसैनिक युद्ध कौशल में विशेषज्ञ .  
(defrule tactic0
(declare (salience 5000))
(id-root ?id tactic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 naval)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuxXa_kOSala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tactic.clp 	tactic0   "  ?id "  yuxXa_kOSala )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore
;An effective tactic for solving crimes . [m-w]
;अपराधों को हल करने के लिये प्रभावकारी युक्ति . 
(defrule tactic1
(declare (salience 4000))
(id-root ?id tactic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yukwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tactic.clp 	tactic1   "  ?id "  yukwi )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_tactic0
(declare (salience 5000))
(id-root ?id tactic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 naval)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuxXa_kOSala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tactic.clp   sub_samA_tactic0   "   ?id " yuxXa_kOSala )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_tactic0
(declare (salience 5000))
(id-root ?id tactic)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 naval)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuxXa_kOSala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " tactic.clp   obj_samA_tactic0   "   ?id " yuxXa_kOSala )" crlf))
)
