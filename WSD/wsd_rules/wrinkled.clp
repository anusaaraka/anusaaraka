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

;@@@ Added by Pramila(BU) on 27-03-2014
;He was wearing a wrinkled shirt.   ;shiksharthi
;वह सिलवटदार कमीज पहने हुए था.
(defrule wrinkled1
(declare (salience 5000))
(id-word ?id wrinkled)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 shirt|cloth|trouser|skirt|stocking|suit|dupatta)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id silvataxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wrinkled.clp 	wrinkled1   "  ?id "  silvataxAra )" crlf)
))


;-----------------default rules-----------------------
;@@@ Added by Pramila(BU) on 27-03-2014
;Look at his wrinkled hand.   ;shiksharthi
;उसके झुर्रीदार हाथों को देखो.
(defrule wrinkled2
(declare (salience 100))
(id-word ?id wrinkled)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JurrIxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wrinkled.clp 	wrinkled2   "  ?id "  JurrIxAra )" crlf)
))

;@@@ Added by Pramila(BU) on 27-03-2014
(defrule wrinkled3
(declare (salience 0))
(id-word ?id wrinkled)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JurrIxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wrinkled.clp 	wrinkled3   "  ?id "  JurrIxAra )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_wrinkled1
(declare (salience 5000))
(id-word ?id wrinkled)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 shirt|cloth|trouser|skirt|stocking|suit|dupatta)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id silvataxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " wrinkled.clp   sub_samA_wrinkled1   "   ?id " silvataxAra )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_wrinkled1
(declare (salience 5000))
(id-word ?id wrinkled)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 shirt|cloth|trouser|skirt|stocking|suit|dupatta)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id silvataxAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " wrinkled.clp   obj_samA_wrinkled1   "   ?id " silvataxAra )" crlf)
))
