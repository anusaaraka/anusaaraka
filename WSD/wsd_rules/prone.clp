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

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-1-2014
;Injury prone. [OALD]
;चोट का खतरा .
(defrule prone1
(declare (salience 5500))
(id-root ?id prone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 error|injury|earthquake)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KawarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prone.clp 	prone1   "  ?id "  KawarA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 16-1-2014
;The victim lay prone without moving. [OALD]
;पीङित बिना हिले औंधा पङा हुआ था .
(defrule prone2
(declare (salience 5500))
(id-root ?id prone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?noun ?id)
(kriyA-subject  ?id1 ?noun)
(id-root ?id1 lay|rest)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id OMXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prone.clp 	prone2   "  ?id "  OMXA )" crlf))
)

;######################################################Default Rule###########################################################################

;Note : for this context a better meaning of "PRONE" is needed.
;@@@ Added by Sonam Gupta MTech IT Banasthali 16-1-2014
;I'm prone to headaches. [Cambridge]
;मेरी सिर दर्द की प्रवृत्ति है .
(defrule prone3
(id-root ?id prone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravqwwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prone.clp 	prone3   "  ?id "  pravqwwi )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_prone1
(declare (salience 5500))
(id-root ?id prone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 error|injury|earthquake)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KawarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " prone.clp   sub_samA_prone1   "   ?id " KawarA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_prone1
(declare (salience 5500))
(id-root ?id prone)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 error|injury|earthquake)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KawarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " prone.clp   obj_samA_prone1   "   ?id " KawarA )" crlf))
)
