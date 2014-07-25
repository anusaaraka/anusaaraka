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

;@@@ Added by Pramila(BU) on 04-04-2014
;The eyes ,nose, tongue and skin are known as organs. ;shiksharthi
;आँख, नाक, कान और चमडी इन्द्रियाँ कही जाती है.
(defrule organ1
(declare (salience 4900))
(id-root ?id organ)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-as_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id inxriyAz))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  organ.clp 	organ1   "  ?id "  inxriyAz )" crlf)
))


;@@@ Added by Pramila(BU) on 04-04-2014
;He plays on vocal organ very well.  ;shiksharthi
;वह माउथ वाद्य बहुत अच्छा बजाता है.
;She plays the organ in church.   ;oald
;वह चर्च में वाद्य बजाती है.
(defrule organ2
(declare (salience 4900))
(id-root ?id organ)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-on_saMbanXI  ?kri ?id)(kriyA-object  ?kri ?id))
(id-root ?kri play)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAxya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  organ.clp 	organ2   "  ?id "  vAxya )" crlf)
))

;@@@ Added by Pramila(BU) on 04-04-2014
;The People's Daily is the official organ of the Chinese Communist Party.  ;oald
;पीपुल्स डेली चीनी कम्युनिस्ट पार्टी का आधिकारिक मुखपत्र है.
(defrule organ3
(declare (salience 4900))
(id-root ?id organ)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 official)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKapawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  organ.clp 	organ3   "  ?id "  muKapawra )" crlf)
))
;------------------default rules----------------------------------------
;@@@ Added by Pramila(BU) on 04-04-2014
;Heart is also an organ of the body.  ;shiksharthi
;दिल भी शरीर का एक अंग है.
(defrule organ4
(declare (salience 100))
(id-root ?id organ)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  organ.clp 	organ4   "  ?id " aMga )" crlf)
))


;@@@ Added by Pramila(BU) on 04-04-2014
(defrule organ5
(declare (salience 0))
(id-root ?id organ)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  organ.clp 	organ5   "  ?id " aMga )" crlf)
))


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_organ3
(declare (salience 4900))
(id-root ?id organ)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 official)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKapawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " organ.clp   sub_samA_organ3   "   ?id " muKapawra )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_organ3
(declare (salience 4900))
(id-root ?id organ)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 official)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKapawra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " organ.clp   obj_samA_organ3   "   ?id " muKapawra )" crlf)
))
