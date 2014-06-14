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

;@@@ Added by Pramila(BU) on 28-03-2014
;Draw a short oblique line between the two words.   ;shiksharthi
;दोनो शब्दों के बीच में एक तिर्यक् रेखा खींचो.
(defrule oblique1
(declare (salience 4900))
(id-word ?id oblique)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 line|angle|sign)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiryak))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " oblique.clp 	oblique1   "  ?id "  wiryak )" crlf))
)


;---------------default rules-------------------
;@@@ Added by Pramila(BU) on 28-03-2014
;an oblique remark   ;shiksharthi
;एक अप्रत्यक्ष टिप्पणी
(defrule oblique2
(declare (salience 100))
(id-word ?id oblique)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aprawyakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " oblique.clp 	oblique2   "  ?id "  aprawyakRa )" crlf))
)

;@@@ Added by Pramila(BU) on 28-03-2014
(defrule oblique3
(declare (salience 0))
(id-word ?id oblique)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aprawyakRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " oblique.clp 	oblique3   "  ?id "  aprawyakRa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_oblique1
(declare (salience 4900))
(id-word ?id oblique)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 line|angle|sign)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiryak))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " oblique.clp   sub_samA_oblique1   "   ?id " wiryak )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_oblique1
(declare (salience 4900))
(id-word ?id oblique)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 line|angle|sign)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiryak))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " oblique.clp   obj_samA_oblique1   "   ?id " wiryak )" crlf))
)
