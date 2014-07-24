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

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;He has a Poignant vision. [rajpal]
;उसके पास पैनी दृष्टि है .
(defrule poignant1
(declare (salience 5000))
(id-root ?id poignant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-root ?id1 vision|eyesight|sight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEnI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poignant.clp 	poignant1   "  ?id "  pEnI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;Poignant smell of flowers.  [rajpal]
;फूलों की तेज़ सुगन्ध .
(defrule poignant2
(declare (salience 5000))
(id-root ?id poignant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 smell|scent|odor|fragrance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poignant.clp 	poignant2   "  ?id "  wejZa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;Pepper has poignant taste. [rajpal]
;काली मिर्च का तीखा स्वाद होता है .
(defrule poignant3
(declare (salience 5000))
(id-root ?id poignant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 taste|flavour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poignant.clp 	poignant3   "  ?id "  wIKA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
(defrule poignant4
(declare (salience 4000))
(id-root ?id poignant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haqxya_vixAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poignant.clp 	poignant4   "  ?id "  haqxya_vixAraka )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
(defrule poignant5
(id-root ?id poignant)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haqxya_vixAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poignant.clp 	poignant5   "  ?id "  haqxya_vixAraka )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_poignant2
(declare (salience 5000))
(id-root ?id poignant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 smell|scent|odor|fragrance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " poignant.clp   sub_samA_poignant2   "   ?id " wejZa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_poignant2
(declare (salience 5000))
(id-root ?id poignant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 smell|scent|odor|fragrance)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " poignant.clp   obj_samA_poignant2   "   ?id " wejZa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_poignant3
(declare (salience 5000))
(id-root ?id poignant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 taste|flavour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " poignant.clp   sub_samA_poignant3   "   ?id " wIKA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_poignant3
(declare (salience 5000))
(id-root ?id poignant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 taste|flavour)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wIKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " poignant.clp   obj_samA_poignant3   "   ?id " wIKA )" crlf))
)
