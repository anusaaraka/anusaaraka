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
;@@@ Added by Pramila(BU) on 03-01-2014
;our rupee is debased with aluminium.             ;shiksharthi
;हमारे रूपए  में खोट मिलाया हुआ है.
(defrule debase0
(declare (salience 4800))
(id-root ?id debase)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Kota_milA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debase.clp 	debase0   "  ?id " Kota_milA )" crlf))
)

;---------------------default rules-------------------------
;@@@ Added by Pramila(BU) on 03-01-2014
;Bad behaviour debases a person.   ;shiksharthi
;बुरा व्यवहार व्यक्ति को भ्रष्ट कर देता है.
(defrule debase1
(declare (salience 4000))
(id-root ?id debase)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BraRta_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debase.clp 	debase1   "  ?id " BraRta_kara_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 03-01-2014
(defrule debase2
(declare (salience 3000))
(id-root ?id debase)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BraRta_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debase.clp 	debase2   "  ?id " BraRta_kara_xe )" crlf))
)
