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


;@@@ Added by Pramila(Banasthali University) on 06-01-2014
;The enemy made a sudden descent on the town.         ;shiksharthi
;शत्रुओं ने शहर पर एकाएक हमला किया.
(defrule descent0
(declare (salience 5000))
(id-root ?id descent)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(kriyA-on_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hamalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descent.clp 	descent0   "  ?id "  hamalA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-01-2014
;His descent to a criminal life.         ;shiksharthi
;अपराधिक जीवन की ओर उसका पतन. 
;His descent into crime was rapid.  ;cald
;अपराध में उसका पतन तेजी से हुआ था.
(defrule descent1
(declare (salience 5000))
(id-root ?id descent)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-to_saMbanXI  ?id ?id1)(viSeRya-into_saMbanXI  ?id ?id1))
(viSeRya-RaRTI_viSeRaNa  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descent.clp 	descent1   "  ?id "  pawana )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-01-2014
;She's a woman of mixed/French descent.       ;cald
;वह फ्रेंच / मिश्रित वंशज की एक औरत है.
(defrule descent2
(declare (salience 5000))
(id-root ?id descent)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaMSaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descent.clp 	descent2   "  ?id " vaMSaja )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-01-2014
;He claims direct descent from Mohammed.           ;cald
;वह मोहम्मद से प्रत्यक्ष वंशज का दावा करता है.
(defrule descent3
(declare (salience 5000))
(id-root ?id descent)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(kriyA-from_saMbanXI  ?id1 ?id2)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaMSaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descent.clp 	descent3   "  ?id " vaMSaja )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-01-2014
;We weren't prepared for the descent of thousands of journalists on the town.         ;cald
;हम शहर पर हजारों पत्रकारों के आक्रमण के लिए तैयार नहीं थे.
(defrule descent4
(declare (salience 5000))
(id-root ?id descent)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(viSeRya-on_saMbanXI  ?id2 ?id3)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AkramaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descent.clp 	descent4   "  ?id "  AkramaNa )" crlf))
)
;-------------------------default rules--------------------------------------
;@@@ Added by Pramila(Banasthali University) on 06-01-2014
;The road makes a sharp descent to the Ganga.           ;shiksharthi
;सड़क तीखे उतार से गंगाजी को जाती है.
(defrule descent5
(declare (salience 4000))
(id-root ?id descent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  descent.clp 	descent5   "  ?id "  uwAra )" crlf))
)
