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


;@@@ Added by Pramila(BU) on 12-03-2014
;Two pieces of wood are equal in length.   ;oald
; दो लकड़ी के टुकड़े लम्बाई में बराबर है.
;In that case the magnitude of average velocity is equal to the average speed.   ;ncert
;ऐसी परिस्थितियों में वस्तु के औसत वेग का परिमाण उसकी औसत चाल के बराबर होगा .. .
(defrule equal0
(declare (salience 4950))
(id-root ?id equal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-to_saMbanXI  ?id ?id1)(viSeRya-in_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equal.clp 	equal0   "  ?id "  barAbara )" crlf)
)
)

;@@@ Added by Pramila(BU) on 12-03-2014
;There is an equal number of boys and girls in the class.   ;oald
;कक्षा में लड़को और लड़कियों की संख्या बराबर है.
(defrule equal1
(declare (salience 4950))
(id-root ?id equal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id barAbara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equal.clp 	equal1   "  ?id "  barAbara )" crlf)
)
)


;----------------default rules-------------------
;@@@ Added by Pramila(BU) on 12-03-2014
;The company has an equal opportunities policy.   ;oald
;कम्पनी की समान अवसर नीति है.
(defrule equal2
(declare (salience 100))
(id-root ?id equal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equal.clp 	equal2   "  ?id " samAna )" crlf)
)
)

;@@@ Added by Pramila(BU) on 12-03-2014
(defrule equal3
(declare (salience 0))
(id-root ?id equal)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  equal.clp 	equal3   "  ?id " samAna )" crlf)
)
)
