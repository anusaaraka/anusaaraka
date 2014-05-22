;#############################################################################
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
;######################################################################
;@@@ Added by jagriti(31.08.2013)
;Note that sensitive electrical instruments in the vicinity of an electromagnet can be damaged.  [physics corpus]
;नोट कीजिए कि विद्युत चुंबक के समीप रखे सुग्राही विद्युत यंत्र को क्षतिग्रस्त किया जा सकता है.
(defrule sensitive0
(declare (salience 5000))
(id-root ?id sensitive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id ?id1)
(id-word ?id1 instrument|electrical)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sugrAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sensitive.clp 	sensitive0   "  ?id " sugrAhI)" crlf))
)

;----------------------- Default rules -------------------------
;Skin of some children is very sensitive.[word net]
;कुछ बच्चों की त्वचा बहुत संवेदनशील है.
(defrule sensitive1
(declare (salience 100))
(id-root ?id sensitive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMvexanaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sensitive.clp 	sensitive1   "  ?id " saMvexanaSIla)" crlf))
)
;She is very sensitive to other people's feelings. [word net]
;वह अन्य लोगों की भावनाओं के प्रति बहुत संवेदनशील है.
(defrule sensitive2
(id-root ?id sensitive)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMvexanaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sensitive.clp 	sensitive2   "  ?id " saMvexanaSIla)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sensitive0
(declare (salience 5000))
(id-root ?id sensitive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1 instrument|electrical)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sugrAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sensitive.clp   sub_samA_sensitive0   "   ?id " sugrAhI)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sensitive0
(declare (salience 5000))
(id-root ?id sensitive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1 instrument|electrical)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sugrAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sensitive.clp   obj_samA_sensitive0   "   ?id " sugrAhI)" crlf))
)
