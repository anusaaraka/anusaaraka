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

;@@@ Added by Pramila(BU) on 20-03-2014
;Never believe him, he is wolf.   ;shiksharthi
;उस पर विश्वास मत करो, वह कामुक व्यक्ति है.
(defrule wolf0
(declare (salience 5000))
(id-root ?id wolf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAmuka_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wolf.clp 	wolf0   "  ?id "  kAmuka_vyakwi )" crlf)
))

;@@@ Added by Pramila(BU) on 20-03-2014
;He had the reputation of being a bit of a wolf.   ;oald
;उसे एक कामुक व्यक्ति होने की शोहरत प्राप्त है.
(defrule wolf1
(declare (salience 5000))
(id-root ?id wolf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
(viSeRya-of_saMbanXI  ?obj ?id1)
(kriyA-object  ?kri ?obj)
(kriyA-subject  ?kri ?sub)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAmuka_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wolf.clp 	wolf1   "  ?id "  kAmuka_vyakwi )" crlf)
))


;----------------------default rules-------------------
;@@@ Added by Pramila(BU) on 20-03-2014
;The wolf was gray.   ;shiksharthi
;भेड़िया भूरे रंग का था.
(defrule wolf2
(declare (salience 100))
(id-root ?id wolf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BedZiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wolf.clp 	wolf2   "  ?id "  BedZiyA )" crlf)
))

;@@@ Added by Pramila(BU) on 20-03-2014
;The boys wolfed the sandwiches and then started on the cakes.   ;cald
;लड़कों ने सैंडविच ठूंस लिए और फिर केक पर शुरू हो गए.
(defrule wolf3
(declare (salience 100))
(id-root ?id wolf)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TUMsa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wolf.clp 	wolf3   "  ?id "  TUMsa_le )" crlf)
))


;@@@ Added by Pramila(BU) on 20-03-2014
(defrule wolf4
(declare (salience 0))
(id-root ?id wolf)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BedZiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wolf.clp 	wolf4   "  ?id "  BedZiyA )" crlf)
))

