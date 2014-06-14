;########################################################################

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
;########################################################################`
;The wine is a snip at £3.65.[oxford dict]
;शराब 3.65 यूरो में  फायदे का सौदा है . 
(defrule snip0
(declare (salience 5000))
(id-root ?id snip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-at_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PZAyaxe_kA_sOxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snip.clp 	snip0   "  ?id "  PZAyaxe_kA_sOxA )" crlf))
)
;.................Default Rule..............
;The collage consists of snips of wallpaper.[oxford dict]
;कोलाज दीवारी कागज के कतरन् का बनता है .
(defrule snip1
(declare (salience 1))
(id-root ?id snip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kawaran))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snip.clp 	snip1   "  ?id "  kawaran )" crlf))
)
;She was snipping a few dead heads off the roses.[oxford dict]
;वह गुलाब से कुछ ऊपरी मृत भाग को काट रही थी.
(defrule snip2
(declare (salience 1))
(id-root ?id snip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  snip.clp 	snip2   "  ?id "  kAta )" crlf))
)
