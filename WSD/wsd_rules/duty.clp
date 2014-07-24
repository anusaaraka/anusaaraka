;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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
;@@@ Added by Pramila(BU) on 28-12-2013
;There's a high duty on alcohol.      ;cald
;शराब पर एक भारी कर है.
(defrule duty0
(declare (salience 5000))
(id-root ?id duty)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-on_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duty.clp 	duty0   "  ?id " kara  )" crlf))
)

;@@@ Added by Pramila(BU) on 28-12-2013
;The duty of the agency is to act in the best interests of the child.  ;cald
;एजेंसी का कर्तव्य बच्चे के सर्वोत्तम हित में कार्य करना है.
;Your duties as a parent.   ;oald
;माता-पिता की तरह तुम्हारे कर्त्तव्य.
;I felt it was my duty to tell them the truth.    ;oald
;मैंने महसूस किया कि उन्हें सच्चाई बताना मेरा कर्त्तव्य था. 
(defrule duty1
(declare (salience 5000))
(id-root ?id duty)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id ?id1)(saMjFA-to_kqxanwa  ?id ?id1)(viSeRya-as_saMbanXI  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karwwavya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duty.clp 	duty1   "  ?id "  karwwavya )" crlf))
)

;@@@ Added by Pramila(BU) on 28-12-2013
;You should report for duty at 8 a.m. on Monday.          ;cald
;आपको सोमवार को 08:00 बजे काम के लिए रिपोर्ट करना चाहिए.
(defrule duty2
(declare (salience 5000))
(id-root ?id duty)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-at_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duty.clp 	duty2   "  ?id "  kAma )" crlf))
)

;@@@ Added by Pramila(BU) on 28-12-2013
;We are duty bound to justify how we spend our funds.          ;cald
;हम , अपनी आय को कैसे खर्च करें , सही साबित करने के लिए कर्त्तव्यबद्ध है.
(defrule duty3
(declare (salience 5000))
(id-root ?id duty)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?id2)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 karwwavyabaxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " duty.clp	duty3  "  ?id "  " ?id1 "  karwwavyabaxXa  )" crlf))
)

;@@@ Added by Pramila(BU) on 28-12-2013
;I spend a lot of my time on administrative duties.           ;oald
;मैं प्रशासनिक कार्यों पर अपना बहुत समय लगाता हूँ.
;Your duties will include setting up a new computer system.    ;oald     
;तुम्हारे कार्यों में एक नए कंप्यूटर प्रणाली की स्थापना करना होगा.
(defrule duty4
(declare (salience 4900))
(id-root ?id duty)
?mng <-(meaning_to_be_decided ?id)
(id-root-category-suffix-number ?id duty noun s p)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duty.clp 	duty4   "  ?id " kArya  )" crlf))
)

;@@@ Added by Pramila(BU) on 28-12-2013
(defrule duty5
(declare (salience 4000))
(id-root ?id duty)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karwwavya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  duty.clp 	duty5   "  ?id "  karwwavya )" crlf))
)

