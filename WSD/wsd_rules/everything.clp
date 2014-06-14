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

;@@@ Added by Pramila(Banasthali University) on 21-01-2014
;He puts his work before everything.         ;oald
;वह सब से पहले अपना काम रखता है.
;You can't blame him for everything.    ;cald
;तुम सब के लिए उसे दोष नहीं दे सकते.
(defrule everything0
(declare (salience 5000))
(id-root ?id everything)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-before_saMbanXI  ?id1 ?id)(kriyA-for_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  everything.clp 	everything0   "  ?id "  saba )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 21-01-2014
;Take this bag, and leave everything else to me.   ;oald
;इस बैग को लीजिए और बाकी सब मुझ पर छोड़ दीजिए.
(defrule everything1
(declare (salience 5000))
(id-root ?id everything)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaka  ?id ?id1)
(id-word ?id1 else)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  everything.clp 	everything1   "  ?id "  saba )" crlf))
)

;----------------default rules--------------------------------------
;@@@ Added by Pramila(Banasthali University) on 21-01-2014
;Money isn't everything.   ;oald
;पैसा सब-कुछ नहीं है.
(defrule everything2
(declare (salience 4000))
(id-root ?id everything)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saba-kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  everything.clp 	everything2   "  ?id " saba-kuCa )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 21-01-2014
(defrule everything3
(declare (salience 0))
(id-root ?id everything)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saba-kuCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  everything.clp 	everything3   "  ?id " saba-kuCa  )" crlf))
)
