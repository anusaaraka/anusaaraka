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


;@@@ added by Pramila(BU) on 18-12-2013
;Every word and gesture is expressive of the artist's sincerity.   ;oald
;हर शब्द और भाव कलाकार की ईमानदारी का सूचक है.
;The final movement of Beethoven's Ninth Symphony is expressive of joy.      ;cald
;बीथोवेन की नौवीं सिम्फनी का अंतिम आंदोलन खुशी का सूचक है.
(defrule expressive0
(declare (salience 5000))
(id-root ?id expressive)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expressive.clp 	expressive0   "  ?id " sUcaka  )" crlf))
)

;@@@ added by Pramila(BU) on 18-12-2013
;An expressive face.    ;cald
;भावाभिव्यक्तिपूर्ण चेहरा
;Expressive eyes.       ;cald
;भावाभिव्यक्तिपूर्ण आँखे
;The expressive power of his music.
;उसके संगीत की भावाभिव्यक्तिपूर्ण प्रतिभा
(defrule expressive1
(declare (salience 4000))
(id-root ?id expressive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAvABivyakwipUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expressive.clp 	expressive1   "  ?id "  BAvABivyakwipUrNa )" crlf))
)


;@@@ added by Pramila(BU) on 18-12-2013
(defrule expressive2
(declare (salience 0))
?mng <-(meaning_to_be_decided ?id)
(id-root ?id expressive)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAvABivyakwipUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expressive.clp 	expressive2   "  ?id "  BAvABivyakwipUrNa )" crlf))
)
