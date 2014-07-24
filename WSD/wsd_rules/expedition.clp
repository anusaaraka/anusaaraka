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

;@@@ Added by Pramila(BU) on 08-02-2014
;He did it with expedition.    ;shiksharthi
;उसने इसे शीघ्रता से किया.
(defrule expedition1
(declare (salience 4950))
(id-root ?id expedition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIGrawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expedition.clp 	expedition1   "  ?id "  SIGrawA )" crlf)
)
)


;-------------------------default rules-----------------
;@@@ Added by Pramila(BU) on 08-02-2014
;I would like to join the expedition which is going to explore the moon.    ;shiksharthi
;मैं उस अभियान में सम्मिलित होना चाहूँगा जो चन्द्रमा पर खोज के लिए जा रहा है.
(defrule expedition2
(declare (salience 100))
(id-root ?id expedition)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBiyAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expedition.clp 	expedition2   "  ?id "  aBiyAna )" crlf)
)
)

;@@@ Added by Pramila(BU) on 08-02-2014
(defrule expedition3
(declare (salience 0))
(id-root ?id expedition)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBiyAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expedition.clp 	expedition3   "  ?id "  aBiyAna )" crlf)
)
)
