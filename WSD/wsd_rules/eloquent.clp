;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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

;@@@ Added by Pramila(BU) on 26-01-2014
;She became eloquent after marriage.      ;shiksharthi
;वह शादी के बाद वाक्पटु हो गई.
(defrule eloquent0
(declare (salience 4950))
(id-root ?id eloquent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAkpatu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eloquent.clp 	eloquent0   "  ?id "  vAkpatu )" crlf))
)

;@@@ Added by Pramila(BU) on 26-01-2014
;Eloquent speech.       ;shiksharthi
;वाग्मितापूर्ण भाषण
(defrule eloquent1
(declare (salience 4950))
(id-root ?id eloquent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 speech)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAgmiwApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eloquent.clp 	eloquent1   "  ?id "  vAgmiwApUrNa )" crlf))
)

;-----------------default rules---------------------------------
;@@@ Added by Pramila(BU) on 26-01-2014
;His eyes were eloquent.      ;oald
;उसकी आँखें भावपूर्ण थी.
(defrule eloquent2
(declare (salience 4000))
(id-root ?id eloquent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eloquent.clp 	eloquent2   "  ?id "  BAvapUrNa )" crlf))
)


;@@@ Added by Pramila(BU) on 26-01-2014
(defrule eloquent3
(declare (salience 0))
(id-root ?id eloquent)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  eloquent.clp 	eloquent3   "  ?id "  BAvapUrNa )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_eloquent1
(declare (salience 4950))
(id-root ?id eloquent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 speech)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAgmiwApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " eloquent.clp   sub_samA_eloquent1   "   ?id " vAgmiwApUrNa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_eloquent1
(declare (salience 4950))
(id-root ?id eloquent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 speech)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAgmiwApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " eloquent.clp   obj_samA_eloquent1   "   ?id " vAgmiwApUrNa )" crlf))
)
