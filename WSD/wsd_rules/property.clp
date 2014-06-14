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

;@@@ Added by Sonam Gupta MTech IT Banasthali 11-3-2014
;Thus it is mainly the electromagnetic force that governs the structure of atoms and molecules the dynamics
;of chemical reactions and the mechanical thermal and other properties of materials. [physics]
;अतः परमाणु तथा अणुओं की संरचना, रासायनिक अभिक्रियाओं की गतिकी, तथा वस्तुओं के यान्त्रिक, तापीय तथा अन्य गुणों का परिचालन मुख्यतः विद्युत चुम्बकीय बल द्वारा ही होता है.
(defrule property1
(declare (salience 5000))
(id-root ?id property)
(id-cat_coarse ?id noun)
?mng <- (meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id ?)(viSeRya-viSeRaNa  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guNa))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  property.clp 	property1  " ?id "  guNa )" crlf)))




;@@@ Added by Sonam Gupta MTech IT Banasthali 11-3-2014
;Those books are my property.  [MW]
;ये पुस्तकें मेरी सम्पत्ति हैं .
(defrule property2
(id-root ?id property)
(id-cat_coarse ?id noun)
?mng <- (meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sampawwi))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  property.clp 	property2  " ?id "  sampawwi )" crlf)))

;@@@ Added by Sonam Gupta MTech IT Banasthali 11-3-2014
;Most observed phenomena in daily life are rather complicated manifestations of the basic laws. [physics]
;दैनिक जीवन की अधिकांश प्रेक्षित परिघटनाएँ मूल नियमों की जटिल अभिव्यक्ति ही होती हैं.
(defrule property3
(id-root ?id property)
?mng <- (meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sampawwi))
(if ?*debug_flag*
then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  property.clp 	property3  " ?id "  sampawwi )" crlf)))

