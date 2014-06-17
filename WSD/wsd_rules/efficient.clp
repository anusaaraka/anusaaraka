;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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

;The efficient use of energy.        ;oald
;शक्ति का प्रभावशाली प्रयोग
;As we get older, our bodies become less efficient at burning up calories.    ;oald
;जैसे-जैसे हम बड़े होते जाते हैं,हमारे शरीर में कैलोरी ख़र्च करने में कम प्रभावशाली हो जाता हैं.
(defrule efficient0
(declare (salience 5000))
(id-root ?id efficient)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-at_saMbanXI  ?id ?id1)(and(viSeRya-viSeRaNa  ?id1 ?id)(id-root ?id1 use|service)))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praBAvaSAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  efficient.clp 	efficient0   "  ?id " praBAvaSAlI  )" crlf))
)


;The Universe during this early hot phase was much more efficient than stars in producing helium.   
;आरंभिक गर्म चरण में तारों की तुलना में ब्रह्मांड हीलियम का उत्पादन करने में अधिक सक्षम था।
;An efficient secretary.        ;oald
;एक सक्षम सचिव
(defrule efficient1
(declare (salience 4000))
(id-root ?id efficient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakRama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  efficient.clp 	efficient1   "  ?id " sakRama  )" crlf))
)

(defrule efficient2
(declare (salience 0))
(id-root ?id efficient)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakRama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  efficient.clp 	efficient2   "  ?id " sakRama  )" crlf))
)
