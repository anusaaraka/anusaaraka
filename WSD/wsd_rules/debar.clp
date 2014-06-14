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
;@@@ Added by Pramila(Banasthali university) on 03-01-2014
;He was debarred from going to cinema.         ;shiksharthi
;उसे सिनेमा जाने से प्रतिबंधित किया गया.
(defrule debar0
(declare (salience 4900))
(id-root ?id debar)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(kriyA-to_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawibaMXiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debar.clp 	debar0   "  ?id " prawibaMXiwa_kara )" crlf))
)
;------------------------------default rules-----------------------

;@@@ Added by Pramila(Banasthali university) on 03-01-2014
;Criminals should be debarred from voting.         ;shiksharthi
;अपराधियों को मताधिकार से वंचित कर देना चाहिए.
(defrule debar1
(declare (salience 4000))
(id-root ?id debar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaMciwa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debar.clp 	debar1   "  ?id " vaMciwa_kara_xe )" crlf))
)


;@@@ Added by Pramila(Banasthali university) on 03-01-2014
(defrule debar2
(declare (salience 3000))
(id-root ?id debar)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaMciwa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  debar.clp 	debar1   "  ?id " vaMciwa_kara_xe )" crlf))
)
