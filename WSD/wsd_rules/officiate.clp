;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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
;@@@ Added by Pramila(BU) on 02-04-2014
;A referee from a neutral country will officiate at the game.   ;oald
;एक तटस्थ देश से एक रेफरी खेल में अंपायरिंग करेंगे.
(defrule officiate0
(declare (salience 4800))
(id-root ?id officiate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?id1)
(id-root ?id1 game|match)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMpAyariMga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " officiate.clp 	officiate0   "  ?id " aMpAyariMga_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 02-04-2014
;He officiates as officer on this post.  ;shiksharthi
;वह इस पद पर अधिकारी के रूप में स्थानापन्न हुए है.
(defrule officiate1
(declare (salience 4800))
(id-root ?id officiate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?id1)
(viSeRya-on_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAnApanna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " officiate.clp 	officiate1   "  ?id " sWAnApanna_ho )" crlf))
)

;-----------------default rules------------------
;@@@ Added by Pramila(BU) on 02-04-2014
;He officiated as chairman in the divisional office.  ;shiksharthi
;उसने मंडल कार्यालय में अध्यक्ष के रूप में काम किया है
(defrule officiate2
(declare (salience 100))
(id-root ?id officiate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " officiate.clp 	officiate2   "  ?id " kAma_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 02-04-2014
(defrule officiate3
(declare (salience 0))
(id-root ?id officiate)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " officiate.clp 	officiate3   "  ?id " kAma_kara )" crlf))
)
