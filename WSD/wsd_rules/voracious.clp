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

;@@@ Added by Prachi Rathore[8-3-14]
;He's a voracious reader of historical novels. [cambridge]
;वह ऐतिहासिक उपन्यासों का एक अत्युत्सुक पाठक है . 
(defrule voracious1
(declare (salience 5000))
(id-root ?id voracious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 reader)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyuwsuka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  voracious.clp 	voracious1   "  ?id "  awyuwsuka )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[8-3-14]
;a voracious eater[oald]
;एक पेटू खानेवाला . 
(defrule voracious2
(declare (salience 400))
(id-root ?id voracious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id petU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  voracious.clp 	voracious2   "  ?id " petU )" crlf)))


;@@@ Added by Prachi Rathore[8-3-14]
;a voracious eater[oald]
;एक पेटू खानेवाला . 
(defrule voracious3
(declare (salience 200))
(id-root ?id voracious)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id petU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  voracious.clp 	voracious3   "  ?id " petU )" crlf)))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_voracious1
(declare (salience 5000))
(id-root ?id voracious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 reader)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyuwsuka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " voracious.clp   sub_samA_voracious1   "   ?id " awyuwsuka )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_voracious1
(declare (salience 5000))
(id-root ?id voracious)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 reader)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyuwsuka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " voracious.clp   obj_samA_voracious1   "   ?id " awyuwsuka )" crlf))
)
