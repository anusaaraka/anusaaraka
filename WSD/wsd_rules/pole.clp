;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam27virgo@gmail.com)
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

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-4-2014
; Like poles repel each other. [ncert]
;समान ध्रुव एक दूसरे का प्रतिरोध करते हैं . 
(defrule pole1
(declare (salience 5000))
(id-root ?id pole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 like|unlike)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xruva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pole.clp 	pole1   "  ?id "  Xruva )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 2-4-2014
;Their opinions were at opposite poles of the debate. [M-W]
;उनके विचार वाद-विवाद में विपरीत छोर थे .
(defrule pole2
(declare (salience 5000))
(id-root ?id pole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 opposite)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pole.clp 	pole2   "  ?id "  Cora )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2-4-2014
;Pole a boat. [M-W]
;नाव चलाईये .
(defrule pole3
(declare (salience 5000))
(id-root ?id pole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pole.clp 	pole3   "  ?id "  cala )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-4-2014
(defrule pole4
(declare (salience 4000))
(id-root ?id pole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KamBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pole.clp 	pole4   "  ?id "  KamBA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2-4-2014
(defrule pole5
(id-root ?id pole)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KamBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pole.clp 	pole5   "  ?id "  KamBA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_pole1
(declare (salience 5000))
(id-root ?id pole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 like|unlike)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xruva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pole.clp   sub_samA_pole1   "   ?id " Xruva )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_pole1
(declare (salience 5000))
(id-root ?id pole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 like|unlike)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xruva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pole.clp   obj_samA_pole1   "   ?id " Xruva )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_pole2
(declare (salience 5000))
(id-root ?id pole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 opposite)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pole.clp   sub_samA_pole2   "   ?id " Cora )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_pole2
(declare (salience 5000))
(id-root ?id pole)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 opposite)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pole.clp   obj_samA_pole2   "   ?id " Cora )" crlf))
)
