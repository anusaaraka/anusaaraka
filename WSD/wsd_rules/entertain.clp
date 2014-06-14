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


;@@@ Added by Pramila(BU) on 31-01-2014
;She entertained us to tea.      ;shiksharthi
;उसने चाय पिलाकर हमारा सत्कार किया.
(defrule entertain0
(declare (salience 4950))
(id-root ?id entertain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawkAra_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entertain.clp 	entertain0   "  ?id "  sawkAra_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  entertain.clp      entertain0   "  ?id " kA )" crlf))
)

;@@@ Added by Pramila(BU) on 31-01-2014
;Can you entertain this proposal?    ;shiksharthi
;क्या आप यह प्रस्ताव स्वीकार कर सकते हैं ?
;His request may please be entertained.      ;shiksharthi
;कृपया उसका निवेदन स्वीकार करें .
(defrule entertain1
(declare (salience 4950))
(id-root ?id entertain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 request|proposal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entertain.clp 	entertain1   "  ?id "  svIkAra_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 31-01-2014
;He had entertained hopes of a reconciliation.   ;oald
;उसने फिर से मेल या मिलाप की आशाएँ रखी . 
;The General refused to entertain the possibility of defeat.            ;cald
;जनरल ने हार की संभावना रखने से इनकार कर दिया.
(defrule entertain2
(declare (salience 4950))
(id-root ?id entertain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 hope|possibility)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entertain.clp 	entertain2   "  ?id "  raKa )" crlf))
)

;@@@ Added by Pramila(BU) on 31-01-2014
;Now that I live on my own, I don't entertain much.      ;cald
;अब जबकि मैं स्व्यं ही रहता हूँ,मैं ज्यादा लोगो को नहीं बुलाता.
(defrule entertain3
(declare (salience 4950))
(id-root ?id entertain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-samakAlika_kriyA  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entertain.clp 	entertain3   "  ?id "  bulA )" crlf))
)


;--------------------default rules------------------------------
;@@@ Added by Pramila(BU) on 31-01-2014
;The teacher entertains the boys.      ;shiksharthi
;अध्यापक लड़कों का मनोरंजन करता है.
(defrule entertain4
(declare (salience 4000))
(id-root ?id entertain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manoraMjana_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entertain.clp 	entertain4   "  ?id "  manoraMjana_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  entertain.clp      entertain4   "  ?id " kA )" crlf))
)

;@@@ Added by Pramila(BU) on 31-01-2014
(defrule entertain5
(declare (salience 0))
(id-root ?id entertain)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id manoraMjana_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entertain.clp 	entertain5   "  ?id "  manoraMjana_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  entertain.clp      entertain5   "  ?id " kA )" crlf))
)
