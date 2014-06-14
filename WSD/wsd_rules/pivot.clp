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

;@@@ Added by Sonam Gupta MTech IT Banasthali 18-3-2014
;She pivoted around and walked out. [oald]
;वह घूमी और चली गई .
(defrule pivot1
(declare (salience 4500))
(id-root ?id pivot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 around)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pivot.clp  pivot1  "  ?id "  " ?id1 "  GUma  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 18-3-2014
;The book's plot pivots on the main character's need for revenge. [M-W]
;पुस्तक का कथानक मुख्य पात्र के बदले पर आधारित है .
(defrule pivot2
(declare (salience 5000))
(id-root ?id pivot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(kriyA-on_saMbanXI  ?id ?)
(id-root ?id1 plan|plot|scheme|idea|strategy|proposal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pivot.clp 	pivot2   "  ?id "  AXAriwa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 18-3-2014
;Our vacation plans will pivot around how much money we can save.  [M-W]
;हमारी अवकाश योजनाए़ निर्भर करेंगी कि हम कितना पैसा बचा सकते हैं .
(defrule pivot3
(declare (salience 5000))
(id-root ?id pivot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 around)
(kriyA-subject  ?id ?id2)
(id-root ?id2 plan|plot|scheme|idea|strategy|proposal)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 nirBara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pivot.clp  pivot3  "  ?id "  " ?id1 "  nirBara_kara  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 18-3-2014
;The dancers pivoted on their toes and changed direction.  [M-W]
;नृतक अपने अँगूठों पर घूमे और दिशा बदली .
(defrule pivot4
(declare (salience 4000))
(id-root ?id pivot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pivot.clp 	pivot4   "  ?id "  GUma )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 18-3-2014
;West Africa was the pivot of the cocoa trade.  [oald]
;वेस्ट अफ्रीका कोको व्यापार का केन्द्र बिन्दू  था .
(defrule pivot5
(declare (salience 4000))
(id-root ?id pivot)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kenxra_binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pivot.clp 	pivot5   "  ?id "  kenxra_binxU )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 18-3-2014
(defrule pivot6
(id-root ?id pivot)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kenxra_binxU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pivot.clp 	pivot6   "  ?id "  kenxra_binxU )" crlf))
)
