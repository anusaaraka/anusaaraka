;#############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;######################################################################

;@@@ Added by jagriti(7.1.2013)
;Stack the deck of cards.
;ताश के पत्तों को चालबाज़ी से फेंटिए.
(defrule stack0
(declare (salience 5000))
(id-root ?id stack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(viSeRya-of_saMbanXI ?id1 ?id2)
(id-root ?id2 card)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAlabAjZI_se_PeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stack.clp 	stack0   "  ?id "  cAlabAjZI_se_PeMta )" crlf))
)

;@@@ Added by jagriti(7.1.2013)
;They were busy stacking the shelves with goods.
;वे अलमारियों को सामान से भरने में व्यस्त थे. 
(defrule stack1
(declare (salience 4900))
(id-root ?id stack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stack.clp 	stack1   "  ?id "  Bara )" crlf))
)

;....default rule.....
;@@@ Added by jagriti(7.1.2013)
(defrule stack3
(declare (salience 1))
(id-root ?id stack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dera_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stack.clp 	stack3   "  ?id "  Dera_lagA )" crlf))
)

;@@@ Added by jagriti(7.1.2013)
;A stack of plates.
;प्लेटों का ढेर.
(defrule stack4
(declare (salience 1))
(id-root ?id stack)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Dera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stack.clp 	stack4   "  ?id "  Dera )" crlf))
)
