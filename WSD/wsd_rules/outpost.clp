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

;@@@ Added by Pramila(BU) on 15-02-2014
;He lives in an outpost of the city.  ;shiksharthi
;वह शहर से दूर की एक बस्ती में रहता है.
(defrule outpost1
(declare (salience 4900))
(id-root ?id outpost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra_kI_eka_baswI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outpost.clp 	outpost1   "  ?id "  xUra_kI_eka_baswI )" crlf)
))


;--------------------default rules-------------------------

;@@@ Added by Pramila(BU) on 15-02-2014
;a police outpost ;cald
;एक पुलिस चौकी
(defrule outpost2
(declare (salience 100))
(id-root ?id outpost)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outpost.clp 	outpost2   "  ?id "  cOkI )" crlf)
))

;@@@ Added by Pramila(BU) on 15-02-2014
(defrule outpost3
(declare (salience 0))
(id-root ?id outpost)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outpost.clp 	outpost3   "  ?id "  cOkI )" crlf)
))

