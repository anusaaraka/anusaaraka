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




;@@@ Added by Pramila(BU) on 22-03-2014
;We could see wreaths of smoke rising into the sky.   ;shiksharthi
;हम आकाश में धुएँ के छल्ले देख सके.
(defrule wreath1
(declare (salience 5000))
(id-root ?id wreath)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 smoke)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CallA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wreath.clp 	wreath1   "  ?id "  CallA )" crlf)
))

;----------------default rules-----------
;@@@ Added by Pramila(BU) on 22-03-2014
;He was garlanded with wreaths in the meeting.   ;shiksharthi
;बैठक में उसे मालाएँ पहनाई गई.
(defrule wreath2
(declare (salience 100))
(id-root ?id wreath)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wreath.clp 	wreath2   "  ?id "  mAlA )" crlf)
))

;@@@ Added by Pramila(BU) on 22-03-2014
(defrule wreath3
(declare (salience 0))
(id-root ?id wreath)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wreath.clp 	wreath3   "  ?id "  mAlA )" crlf)
))

