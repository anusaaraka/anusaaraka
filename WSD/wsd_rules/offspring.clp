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
;@@@ Added by Pramila(BU) on 02-04-2014
;We were surprised to know unexpected offspring of their discussion.   ;shiksharthi
;हम उनकी परिचर्चा का अप्रत्याशित परिणाम जानकर आश्चर्यचकित हुए.
(defrule offspring0
(declare (salience 4800))
(id-root ?id offspring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " offspring.clp 	offspring0   "  ?id "pariNAma )" crlf))
)


;-------------------default rules--------------------------
;@@@ Added by Pramila(BU) on 02-04-2014
;Mothers love their offspring.   ;shiksharthi
;माँ अपनी संतति से प्यार करती है.
(defrule offspring1
(declare (salience 100))
(id-root ?id offspring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " offspring.clp 	offspring1   "  ?id "saMwawi )" crlf))
)

;@@@ Added by Pramila(BU) on 02-04-2014
(defrule offspring2
(declare (salience 0))
(id-root ?id offspring)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " offspring.clp 	offspring2   "  ?id "saMwawi )" crlf))
)
