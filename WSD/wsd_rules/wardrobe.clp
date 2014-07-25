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

;@@@ Added by Pramila(BU) on 26-02-2014
;She bought a new wardrobe of clothes.  ;shiksharthi
;उसने कपड़ो का नया संग्रह खरीदा
(defrule wardrobe0
(declare (salience 4900))
(id-root ?id wardrobe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMgraha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wardrobe.clp 	wardrobe0   "  ?id "  saMgraha )" crlf)
))

;------------------------default rules---------------------
;@@@ Added by Pramila(BU) on 26-02-2014
;Open the wardrobe and hang these clothes therein.  ;shiksharthi
;अलमारी खोलो और उसमें ये कपड़े लटका दो.
(defrule wardrobe1
(declare (salience 100))
(id-root ?id wardrobe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alamArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wardrobe.clp 	wardrobe1   "  ?id "  alamArI )" crlf)
))

;@@@ Added by Pramila(BU) on 26-02-2014
(defrule wardrobe2
(declare (salience 0))
(id-root ?id wardrobe)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alamArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wardrobe.clp 	wardrobe2   "  ?id "  alamArI )" crlf)
))

