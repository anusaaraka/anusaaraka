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

;@@@ Added by Pramila(BU) on 07-02-2014
;He was caught for the evasion of income tax.    ;shiksharthi
;आयकर का अपवंचन करने पर उसे गिरफ्तार किया गया.
(defrule evasion0
(declare (salience 4950))
(id-root ?id evasion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-for_saMbanXI  ? ?id)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apavaMcana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evasion.clp 	evasion0   "  ?id " apavaMcana )" crlf)
)
)

;-----------------------default rules------------------------------------------
;@@@ Added by Pramila(BU) on 07-02-2014
;He made several evasions in his statement    ;shiksharthi
;उसने अपने कथन में कई बहानें बनाए.
(defrule evasion1
(declare (salience 100))
(id-root ?id evasion)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evasion.clp 	evasion1   "  ?id " bahAnA )" crlf)
)
)

;@@@ Added by Pramila(BU) on 07-02-2014
(defrule evasion2
(declare (salience 0))
(id-root ?id evasion)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evasion.clp 	evasion2   "  ?id " bahAnA )" crlf)
)
)
