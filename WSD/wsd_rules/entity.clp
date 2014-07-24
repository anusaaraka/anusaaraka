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
;He reasoned that nature was symmetrical and that the two basic physical entities — matter and energy, must have symmetrical character.
;उसने यह तर्क दिया कि प्रकृति सममित है और दो मूल भौतिक सत्ताओं, द्रव्य एवं ऊर्जा, का भी सममित लक्षण होना चाहिए.
;usane yaha warka xiyA ki prakqwi samamiwa hE Ora xo mUla BOwika sawwAoM, xravya evaM UrjA, kA BI samamiwa lakRaNa honA cAhie.

;He regarded the north of the country as a separate cultural entity. 
;उसने देश के उत्तर को एक अलग सांस्कृतिक सत्ता के रूप में  माना . 
;usane xeSa ke uwwara ko eka alaga sAMskqwika sawwA ke rUpa meM  mAnA .

(defrule entity0
(declare (salience 5000))
(id-root ?id entity)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-saMKyA_viSeRaNa  ?id ?id1)(kriyA-as_saMbanXI  ?id1 ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entity.clp 	entity0   "  ?id "  sawwA )" crlf))
)

;Time is an independent entity of nature.
;समय प्रकृति का महत्वपूर्ण सत्व है.
;samaya prakqwi kA mahawvapUrNa sawva hE.

;Persons and corporations are equivalent entities under the law.
;व्यक्ति और निगम कानून के तहत समकक्ष सत्व हैं.
;vyakwi Ora nigama kAnUna ke wahawa samakakRa sawva hEM.

(defrule entity1
(declare (salience 4900))
(id-root ?id entity)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-under_saMbanXI  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entity.clp 	entity1   "  ?id "  sawva )" crlf))
)

;-------------------------------------------------------default rules------------------------------------------------------------------------
(defrule entity2
(declare (salience 4000))
(id-root ?id entity)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaswu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entity.clp 	entity2   "  ?id "  vaswu )" crlf))
)


(defrule entity3
(declare (salience 3000))
(id-root ?id entity)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wawwva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entity.clp 	entity3   "  ?id "  wawwva )" crlf))
)




