;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam27virgo@gmail.com)
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

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
;I palled around with him and his sister at school. [oald]
;मैंने उसके और उसकी बहन के साथ विद्यालय में मैत्रीपूर्ण व्यवहार रखा .
(defrule pal1
(declare (salience 5000))
(id-root ?id pal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 around)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 mEwrIpUrNa_vyavahAra_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pal.clp  pal1  "  ?id "  " ?id1 "  mEwrIpUrNa_vyavahAra_raKa  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
;They palled up while they were at college. [oald]
;उन्होंने मित्रता की जब वे कालेज में थे .
(defrule pal2
(declare (salience 5000))
(id-root ?id pal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 miwrawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pal.clp  pal2  "  ?id "  " ?id1 "  miwrawA_kara  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
;A gal pal. [M-W]
;एक महिला मित्र .
(defrule pal3
(declare (salience 5000))
(id-root ?id pal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pal.clp 	pal3   "  ?id "  miwra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
(defrule pal4
(id-root ?id pal)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id miwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pal.clp 	pal4   "  ?id "  miwra )" crlf))
)
