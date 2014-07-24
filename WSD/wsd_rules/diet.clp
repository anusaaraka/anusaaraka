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
;@@@ Added by Pramila(Banasthali university) on 30-12-2013
;Children today are brought up on a diet of television cartoons and soap operas.         ;oald
;बच्चो को आजकल टीवी कार्टून और धारावाहिकों के विज्ञापन के आधार पर पाला जाता है.
(defrule diet0
(declare (salience 5000))
(id-root ?id diet)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(kriyA-on_saMbanXI  ?id2 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vijFApana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diet.clp 	diet0   "  ?id " vijFApana )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 30-12-2013
;The TV only offers a diet of comedies and old movies every evening.         ;cald
;टीवी हर शाम हास्य और पुरानी फिल्मों के कार्यक्रम प्रस्तुत करता है.
(defrule diet1
(declare (salience 4900))
(id-root ?id diet)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryakrama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diet.clp 	diet1   "  ?id " kAryakrama )" crlf))
)


;@@@ Added by Pramila(Banasthali university) on 30-12-2013
;I decided to go on a diet before my holiday.  ;oald
;मैंने अपनी छुट्टी तक अल्पाहार लेने का फैसला किया है.
(defrule diet2
(declare (salience 4900))
(id-root ?id diet)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpAhAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diet.clp 	diet2   "  ?id " alpAhAra  )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 01-02-2014
;We existed on a diet of rice.  ;oald
;हम चावल के अल्पाहार पर जीवित रहे .
(defrule diet3
(declare (salience 5000))
(id-root ?id diet)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(kriyA-on_saMbanXI  ?id2 ?id)
(id-root ?id1 rice|fruit)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpAhAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diet.clp 	diet3   "  ?id " alpAhAra  )" crlf))
)


;@@@ Added by Pramila(Banasthali university) on 30-12-2013
;To have a healthy, balanced diet.       ;oald
;एक स्वस्थ, संतुलित आहार लेना
(defrule diet4
(declare (salience 4000))
(id-root ?id diet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AhAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diet.clp 	diet4   "  ?id " AhAra )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 30-12-2013
;She's always dieting but she never seems to lose any weight.        ;oald
;वह नियमित रूप से अल्पाहार ले रही है परन्तु उसका वजन कम नहीं हो रहा है.
(defrule diet5
(declare (salience 4000))
(id-root ?id diet)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alpAhAra_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diet.clp 	diet5   "  ?id " alpAhAra_le )" crlf))
)
