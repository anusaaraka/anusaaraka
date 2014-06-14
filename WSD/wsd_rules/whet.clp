;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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
;@@@ Added by Pramila(BU) on 08-03-2014
;Whet the knife on a stone.   ;shiksharthi
;पत्थर पर चाकू पैना करो.
(defrule whet0
(declare (salience 5000))
(id-root ?id whet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 knife|blade)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEnA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whet.clp 	whet0   "  ?id "  pEnA_kara )" crlf))
)

;---------------default rules------------------------------
;@@@ Added by Pramila(BU) on 08-03-2014
;The book will whet your appetite for more of her work.   ;oald
;पुस्तक उसके अधिक काम के लिए तुम्हारी भूख को बढाएगी.
(defrule whet1
(declare (salience 100))
(id-root ?id whet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whet.clp 	whet1   "  ?id "  baDZA )" crlf))
)

;@@@ Added by Pramila(BU) on 08-03-2014
(defrule whet2
(declare (salience 0))
(id-root ?id whet)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whet.clp 	whet2   "  ?id "  baDZA )" crlf))
)
