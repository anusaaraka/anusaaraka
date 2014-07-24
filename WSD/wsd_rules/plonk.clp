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

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-4-2014
;He just plonked himself down and turned on the TV. [oald]
;वह बस आ धमका और टी वी बन्द कर दिया .
(defrule plonk1
(declare (salience 5000))
(id-root ?id plonk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 A_Xamaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " plonk.clp  plonk1  "  ?id "  " ?id1 "  A_Xamaka  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-4-2014
;She sat down with a plonk. [oald]
;वह धम से बैठी .
(defrule plonk2
(declare (salience 5000))
(id-root ?id plonk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plonk.clp 	plonk2   "  ?id "  Xama )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-4-2014
;A bottle of the local plonk. [oald]
;स्थानीय सस्ती शराब की बोतल .
(defrule plonk3
(declare (salience 4000))
(id-root ?id plonk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saswI_SarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plonk.clp 	plonk3   "  ?id "  saswI_SarAba )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 3-4-2014
(defrule plonk4
(declare (salience 4000))
(id-root ?id plonk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plonk.clp 	plonk4   "  ?id "  pataka )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 3-4-2014
(defrule plonk5
(id-root ?id plonk)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pataka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plonk.clp 	plonk5   "  ?id "  pataka )" crlf))
)
