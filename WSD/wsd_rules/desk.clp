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


;@@@ Added by Pramila(BU) on 18-12-2013
;The check-in desk.
;चैक-इन काउन्टर
;cash counter
;कैश काउन्टर
(defrule desk0
(declare (salience 4950))
(id-root ?id desk)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(id-word ?id1 check-in|reception|cash|front|information)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAuntara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desk.clp 	desk0   "  ?id "  kAuntara )" crlf))
)


;@@@ Added by Pramila(BU) on 18-12-2013
;He had a pile of papers on his desk.     ;cald
;उसके पास उसकी मेज पर पत्रों का ढेर था.
(defrule desk1
(declare (salience 4950))
(id-root ?id desk)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-on_saMbanXI  ?id1 ?id)(kriyA-on_saMbanXI  ?id1 ?id)(kriyA-at_saMbanXI  ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desk.clp 	desk1   "  ?id "  meja )" crlf))
)

;@@@ Added by Pramila(BU) on 20-01-2014
;A pile of papers blew off the desk.      ;m-w
;मेज से कागजों का ढेर उड़ गया.
(defrule desk2
(declare (salience 4950))
(id-root ?id desk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(kriyA-upasarga  ?id1 ?id2)
(id-word ?id2 off)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desk.clp 	desk2   "  ?id "  meja )" crlf))
)

;@@@ Added by Pramila(BU) on 20-01-2014
;His desk was covered with books and papers.      ;oald
;उसकी मेज किताबों और कागजों से ढकी हुई थी.
(defrule desk3
(declare (salience 4950))
(id-root ?id desk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(kriyA-with_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id meja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desk.clp 	desk3   "  ?id "  meja )" crlf))
)

;@@@ Added by Pramila(BU) on 18-12-2013
;sports desk
;खेल सम्बन्धी पूछताछ
(defrule desk4
(declare (salience 4000))
(id-root ?id desk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa-wACa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desk.clp 	desk4   "  ?id "  pUCa-wACa )" crlf))
)

;@@@ Added by Pramila(BU) on 18-12-2013
(defrule desk5
(declare (salience 0))
(id-root ?id desk)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa-wACa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  desk.clp 	desk5   "  ?id " pUCa-wACa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_desk0
(declare (salience 4950))
(id-root ?id desk)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1 check-in|reception|cash|front|information)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAuntara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " desk.clp   sub_samA_desk0   "   ?id " kAuntara )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_desk0
(declare (salience 4950))
(id-root ?id desk)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1 check-in|reception|cash|front|information)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAuntara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " desk.clp   obj_samA_desk0   "   ?id " kAuntara )" crlf))
)
