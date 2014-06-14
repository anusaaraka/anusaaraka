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


;@@@ Added by Pramila(BU) on 26-01-2014
;The principles are embodied in the Declaration of Human Rights.   ;oald
;सिद्धांत मानव अधिकारों के वर्णन में प्रस्तुत किए गए हैं.
(defrule embody0
(declare (salience 4950))
(id-root ?id embody)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praswuwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  embody.clp 	embody0   "  ?id "  praswuwa_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 26-01-2014
;She embodied good sportsmanship on the playing field.     ;cald
;उसने खेल के मैदान पर अच्छी खेल-भावना दिखाई.
(defrule embody1
(declare (salience 4950))
(id-root ?id embody)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  embody.clp 	embody1   "  ?id "  xiKA )" crlf))
)

;--------------default rules-------------------------
;@@@ Added by Pramila(BU) on 26-01-2014
;The letter embodied all his ideas.   ;shiksharthi
;पत्र ने उसके सब विचार सम्मिलित किए . 
(defrule embody2
(declare (salience 4000))
(id-root ?id embody)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammiliwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  embody.clp 	embody2   "  ?id "  sammiliwa_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 26-01-2014
(defrule embody3
(declare (salience 0))
(id-root ?id embody)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammiliwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  embody.clp 	embody3   "  ?id "  sammiliwa_kara )" crlf))
)


