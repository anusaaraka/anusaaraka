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

;@@@ Added by Pramila(BU) on 20-03-2014
;She was accused of withholding information from the police.  ;oald
;उस पर पुलिसे से सूचना छिपाने का आरोप लगाया गया.
(defrule withhold0
(declare (salience 4900))
(id-root ?id withhold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CipAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  withhold.clp 	withhold0   "  ?id "  CipAnA )" crlf)
))

;------------------------default rules---------------------
;@@@ Added by Pramila(BU) on 20-03-2014
;He withheld his consent.  ;shiksharthi
;उसने अपनी स्वीकृति रोक रखी.
(defrule withhold1
(declare (salience 100))
(id-root ?id withhold)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  withhold.clp 	withhold1   "  ?id "  roka_raKa )" crlf)
))

;@@@ Added by Pramila(BU) on 20-03-2014
(defrule withhold2
(declare (salience 0))
(id-root ?id withhold)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  withhold.clp 	withhold2   "  ?id "  roka_raKa )" crlf)
))
