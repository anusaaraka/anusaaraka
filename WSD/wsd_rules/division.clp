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

;@@@ Added by Pramila(BU) on 07-03-2014
;There are deep divisions in the party over the war.  ;oald
;युद्ध खत्म होने के बाद पार्टी में गहरे मतभेद हैं. 
;Division within the party will limit its chances at the election.  ;cald
;पार्टी में मतभेद चुनाव में इसकी संभावनाओं को सीमित कर देगा.
(defrule division0
(declare (salience 4900))
(id-root ?id division)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-within_saMbanXI  ?id ?id1)(viSeRya-in_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mawaBexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  division.clp 	division0   "  ?id "  mawaBexa )" crlf)
))

;@@@ Added by Pramila(BU) on 07-03-2014
;The division of the population into age groups.   ;oald
;आयु समूहों में आबादी का विभाजन.
(defrule division1
(declare (salience 4900))
(id-root ?id division)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBAjana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  division.clp 	division1   "  ?id "  viBAjana )" crlf)
))

;@@@ Added by Pramila(BU) on 07-03-2014
;A hedge forms the division between their land and ours.   ;oald
;एक बाड़ उनकी और हमारी भूमि  के बीच सीमा बनाती है.
(defrule division2
(declare (salience 4900))
(id-root ?id division)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-between_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sImA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  division.clp 	division2   "  ?id "  sImA )" crlf)
))

;@@@ Added by Pramila(BU) on 07-03-2014
;You can easily verify that this is true for division also.   ;ncert
;आप यह आसानी से जाँच सकते हैं कि यह तथ्य भागफल पर भी लागू होता है.
(defrule division3
(declare (salience 4900))
(id-root ?id division)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-for_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAgaPala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  division.clp 	division3   "  ?id "  BAgaPala )" crlf)
))

;-------------------default ruels---------------

;@@@ Added by Pramila(BU) on 07-03-2014
;The company's sales division   ;oald
;कंपनी की बिक्री विभाग
(defrule division4
(declare (salience 100))
(id-root ?id division)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  division.clp 	division4   "  ?id "  viBAga )" crlf)
))

;@@@ Added by Pramila(BU) on 07-03-2014
(defrule division5
(declare (salience 100))
(id-root ?id division)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  division.clp 	division5   "  ?id "  viBAga )" crlf)
))
