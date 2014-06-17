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

;@@@ Added by Pramila(BU) on 04-04-2014
;He is of opponent thinking, I cannot agree with him.   ;shiksharthi
;वह प्रतिकूल विचारो वाला है , मैं उससे सहमत नहीं हो सकता.
(defrule opponent0
(declare (salience 5000))
(id-root ?id opponent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(kriyA-of_saMbanXI  ?kri ?id1)
(kriyA-subject  ?kri ?sub)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawikUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " opponent.clp opponent0   "  ?id "  prawikUla )" crlf)
))

;---------------------default rules--------------------------------
;@@@ Added by Pramila(BU) on 04-04-2014
;He defeated his opponent easily.   ;shiksharthi
;उसने अपने प्रतिपक्षी को हरा दिया.
(defrule opponent1
(declare (salience 100))
(id-root ?id opponent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawipakRI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " opponent.clp opponent1   "  ?id "  prawipakRI )" crlf)
))

;@@@ Added by Pramila(BU) on 04-04-2014
;You can only see the opponent part of this building from here.   ;shiksharthi
;तुम यहाँ से इस इमारत का केवल सामने वाला भाग देख सकते हो.
(defrule opponent2
(declare (salience 100))
(id-root ?id opponent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SAmane_vala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " opponent.clp opponent2   "  ?id "  SAmane_vala )" crlf)
))
