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

;@@@ Added by Pramila(BU) on 17-02-2014
;He has overacted in the film.  ;shiksharthi
;उसने फिल्म में अत्यभिनय किया है.
(defrule overact1
(declare (salience 4900))
(id-root ?id overact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
(id-root ?id1 film|play)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaBinaya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overact.clp 	overact1   "  ?id "  awyaBinaya_kara )" crlf)
))

;------------------------default rules---------------------

;@@@ Added by Pramila(BU) on 17-02-2014
;He overacted in the discussion.  ;shiksharthi
;उसने चर्चा में अति कर दी.
(defrule overact2
(declare (salience 100))
(id-root ?id overact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awi_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overact.clp 	overact2   "  ?id "  awi_kara_xe )" crlf)
))


;@@@ Added by Pramila(BU) on 17-02-2014
(defrule overact3
(declare (salience 0))
(id-root ?id overact)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awi_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overact.clp 	overact3   "  ?id "  awi_kara_xe )" crlf)
))
