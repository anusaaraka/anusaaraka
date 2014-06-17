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
;@@@ Added by Prachi Rathore[18-3-14]
;Harsh detergents. 
;Ordinary soap can be too harsh for delicate skin. 
;साधारण साबुन नाजुक त्वचा के लिये ज्यादा ही कठोर हो सकता है . 
(defrule harsh0
(declare (salience 5000))
(id-root ?id harsh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-viSeRaNa ?id1 ?id))
(id-root ?id1 soap|detergent|shampoo)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaTora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harsh.clp 	harsh0   "  ?id "  kaTora)" crlf))
)

;@@@ Added by Prachi Rathore[18-3-14]
;The climate is harsh in the hot regions. [shiksharthi-kosh]
;गरम क्षेत्रों में जलवायु  रूखी है . 
(defrule harsh1
(declare (salience 5000))
(id-root ?id harsh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-viSeRaNa ?id1 ?id))
(id-root ?id1 climate|winter|nature)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harsh.clp 	harsh1   "  ?id "  rUKA )" crlf))
)

;@@@ Added by Prachi Rathore[18-3-14]
;His parents are harsh. [shiksharthi-kosh]
;उसके माँ बाप निष्ठुर हैं . 
;To be harsh to one's servant.[shiksharthi-kosh]
(defrule harsh4
(declare (salience 5000))
(id-root ?id harsh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-to_saMbanXI  ?id ?id1))
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niRTura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harsh.clp 	harsh4   "  ?id "  niRTura )" crlf))
)

;@@@ Added by Prachi Rathore[18-3-14]
;Harsh flood. 
;Harsh night. 
;Harsh sight. 

(defrule harsh5
(declare (salience 5000))
(id-root ?id harsh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 flood|night|sight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id darAvanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harsh.clp 	harsh5   "  ?id "  darAvanA )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[18-3-14]
;He regretted his harsh words. 
;
(defrule harsh2
(declare (salience 400))
(id-root ?id harsh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harsh.clp 	harsh2   "  ?id "  katu )" crlf))
)


;@@@ Added by Prachi Rathore[18-3-14]

(defrule harsh3
(declare (salience 200))
(id-root ?id harsh)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id katu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harsh.clp 	harsh3   "  ?id "  katu )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_harsh5
(declare (salience 5000))
(id-root ?id harsh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 flood|night|sight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id darAvanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " harsh.clp   sub_samA_harsh5   "   ?id " darAvanA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_harsh5
(declare (salience 5000))
(id-root ?id harsh)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 flood|night|sight)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id darAvanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " harsh.clp   obj_samA_harsh5   "   ?id " darAvanA )" crlf))
)
