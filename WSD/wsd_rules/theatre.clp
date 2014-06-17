;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02 at gmail dot com)
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
;@@@ Added by Prachi Rathore[27-1-14] 
;Her tears were pure theatre. [cambridge]
;उसके आँसू पुर्णतया नकली थे . 
(defrule theatre0
(declare (salience 5000))
(id-root ?id theatre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 pure)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  theatre.clp 	theatre0   "  ?id "  nakalI )" crlf))
)

;@@@ Added by Prachi Rathore[27-1-14]
;I like music, theatre and cinema.[oald]
;मैं सङ्गीत, नाटक और चलचित्र को पसन्द करता हूँ . 
(defrule theatre2
(declare (salience 4900))
(id-root ?id theatre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(conjunction-components  ? $? ?id $?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAtaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  theatre.clp 	theatre2   "  ?id "  nAtaka )" crlf))
)

;@@@ Added by Prachi Rathore[27-1-14]
;He was essentially a man of the theatre.[oald]
;I want to work in theatre.
(defrule theatre3
(declare (salience 5000))
(id-root ?id theatre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-in_saMbanXI  ? ?id)(viSeRya-of_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rangamanca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  theatre.clp 	theatre3   "  ?id " rangamanca )" crlf))
)

;@@@ Added by Prachi Rathore[27-1-14]
;An intelligence officer in the Pacific theatre.[oald]
(defrule theatre4
(declare (salience 5000))
(id-root ?id theatre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yuxXa_kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  theatre.clp 	theatre4   "  ?id " yuxXa_kRewra )" crlf))
)

;@@@ Added by Prachi Rathore[27-1-14]
;A theatre of war.[cambridge]
;युद्ध का मैदान . 
(defrule theatre5
(declare (salience 5000))
(id-root ?id theatre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 war)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mExAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  theatre.clp 	theatre5   "  ?id " mExAna)) )" crlf))
)


;xxxxxxxxxxxx  Default Rule xxxxxxxxxxx
;@@@ Added by Prachi Rathore[27-1-14]
;How often do you go to the theatre?[oald]
(defrule theatre1
(id-root ?id theatre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Wiyetara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  theatre.clp 	theatre1   "  ?id "  Wiyetara )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_theatre0
(declare (salience 5000))
(id-root ?id theatre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 pure)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " theatre.clp   sub_samA_theatre0   "   ?id " nakalI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_theatre0
(declare (salience 5000))
(id-root ?id theatre)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 pure)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nakalI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " theatre.clp   obj_samA_theatre0   "   ?id " nakalI )" crlf))
)
