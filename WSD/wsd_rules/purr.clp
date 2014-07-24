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

;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
;The car purred away. [oald]
;गाड़ी घुरघुरा रही थी .
(defrule purr1
(declare (salience 5000))
(id-root ?id purr)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 away)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GuraGurA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " purr.clp  purr1  "  ?id "  " ?id1 "  GuraGurA  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
;He was purring with satisfaction. [oald]
;वह सन्तोष के साथ घुरघुरा रहा था .
(defrule purr2
(declare (salience 4000))
(id-root ?id purr)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GuraGurA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purr.clp 	purr2   "  ?id "  GuraGurA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
;The purr of a cat. [M-W]
;बिल्ली की घुरघुराहट .
(defrule purr3
(declare (salience 4000))
(id-root ?id purr)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GuraGurAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purr.clp 	purr3   "  ?id "  GuraGurAhata )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 21-3-2014
(defrule purr4
(id-root ?id purr)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GuraGurAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purr.clp 	purr4   "  ?id "  GuraGurAhata )" crlf))
)

