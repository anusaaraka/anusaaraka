;########################################################################`
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################`

;@@@ Added by jagriti(20.1.2014)
;A shady character.
;एक संदेहजनक स्वभाव . 
(defrule shady0
(declare (salience 5000))
(id-root ?id shady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 character)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxehajanaka ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shady.clp 	shady0  "  ?id "  saMxehajanaka)" crlf))
)

;@@@ Added by jagriti(20.1.2014)
;A shady deal. 
;एक गैरकानूनी डील . 
(defrule shady1
(declare (salience 4900))
(id-root ?id shady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 deal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gZErakAnUnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shady.clp 	shady1  "  ?id "  gZErakAnUnI)" crlf))
)

;@@@ Added by jagriti(20.1.2014)
;He is the most shady person in the state.
;वह राज्य में सबसे अधिक बदनाम  व्यक्ति है .
(defrule shady2
(declare (salience 4800))
(id-root ?id shady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxanAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shady.clp 	shady2  "  ?id "  baxanAma)" crlf))
)

;@@@ Added by jagriti(20.1.2014)
;The shady side of the street.
;सडक का छायादार छोर . 
(defrule shady3
(declare (salience 100))
(id-root ?id shady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyAxAra ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shady.clp 	shady3  "  ?id "  CAyAxAra)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_shady0
(declare (salience 5000))
(id-root ?id shady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 character)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxehajanaka ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shady.clp   sub_samA_shady0   "   ?id " saMxehajanaka)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_shady0
(declare (salience 5000))
(id-root ?id shady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 character)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMxehajanaka ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shady.clp   obj_samA_shady0   "   ?id " saMxehajanaka)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_shady1
(declare (salience 4900))
(id-root ?id shady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 deal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gZErakAnUnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shady.clp   sub_samA_shady1   "   ?id " gZErakAnUnI)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_shady1
(declare (salience 4900))
(id-root ?id shady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 deal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gZErakAnUnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shady.clp   obj_samA_shady1   "   ?id " gZErakAnUnI)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_shady2
(declare (salience 4800))
(id-root ?id shady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxanAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shady.clp   sub_samA_shady2   "   ?id " baxanAma)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_shady2
(declare (salience 4800))
(id-root ?id shady)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baxanAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " shady.clp   obj_samA_shady2   "   ?id " baxanAma)" crlf))
)
