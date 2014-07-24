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

;@@@ Added by Pramila(BU) on 28-02-2014
;She said in very weak voice.  ;shiksharthi
;उसने बहुत धीमी आवाज में कहा.
(defrule weak1
(declare (salience 4900))
(id-root ?id weak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-in_saMbanXI  ?kri ?id1)
(id-word ?id1 voice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weak.clp 	weak1   "  ?id "  XImA )" crlf)
))

;@@@ Added by Pramila(BU) on 28-02-2014
;His style of writing is weak.  ;shiksharthi
;उसकी लेखनशैली ओजरहित है.
(defrule weak2
(declare (salience 4900))
(id-root ?id weak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ojarahiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weak.clp 	weak2   "  ?id "  ojarahiwa )" crlf)
))


;@@@ Added by Pramila(BU) on 28-02-2014
;The team's weak points are in defence.   ;oald
;टीम की कमजोरी रक्षा में हैं.
;He knew her weak spot where Steve was concerned.   ;oald
;वह उसकी कमजोरी जानता था जहां स्टीव चिंतित था.
(defrule weak3
(declare (salience 4900))
(id-root ?id weak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 point|spot)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kamajorI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " weak.clp	weak3  "  ?id "  " ?id1 "  kamajorI )" crlf))
)

;@@@ Added by Pramila(BU) on 28-02-2014
;Coffee was weak.  ;shiksharthi
;कॉफी पतली थी.
(defrule weak4
(declare (salience 4900))
(id-root ?id weak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 tea|coffee|drink)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weak.clp 	weak4   "  ?id "  pawalA )" crlf)
))

;@@@ Added by Pramila(BU) on 28-02-2014
;Light was weak.  ;shiksharthi
;रोशनी मंद थी.
;Weak light/eyes.   ;shiksharthi
;मंद रोशनी/दृष्टि
(defrule weak5
(declare (salience 4900))
(id-root ?id weak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-viSeRaNa  ?id1 ?id))
(id-root ?id1 light|eye)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id maMxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weak.clp 	weak5   "  ?id "  maMxa )" crlf)
))
;------------------------default rules---------------------

;@@@ Added by Pramila(BU) on 28-02-2014
;He is weak in English.  ;shiksharthi
;वह अंग्रेजी में कमजोर है.
(defrule weak6
(declare (salience 100))
(id-root ?id weak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weak.clp 	weak6   "  ?id "  kamajora )" crlf)
))

;@@@ Added by Pramila(BU) on 28-02-2014
(defrule weak7
(declare (salience 0))
(id-root ?id weak)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kamajora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  weak.clp 	weak7   "  ?id "  kamajora )" crlf)
))


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_weak3
(declare (salience 4900))
(id-root ?id weak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 point|spot)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kamajorI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " weak.clp   sub_samA_weak3   "   ?id " " ?id1 " kamajorI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_weak3
(declare (salience 4900))
(id-root ?id weak)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 point|spot)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kamajorI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " weak.clp   obj_samA_weak3   "   ?id " " ?id1 " kamajorI )" crlf))
)
