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



;@@@ Added by Pramila(BU) on 29-03-2014
;It is an offence to ride a bicycle at night without light.  ;shiksharthi
;रात में बिना प्रकाश के साइकिल पर सवारी करना अपराध है.
;Explain the cause of offence.   ;shiksharthi
;अपराध का कारण बताइए.
(defrule offence1
(declare (salience 4900))
(id-root ?id offence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(saMjFA-to_kqxanwa  ?id ?id1)(viSeRya-of_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aparAXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offence.clp 	offence1   "  ?id " aparAXa  )" crlf))
)


;@@@ Added by Pramila(BU) on 29-03-2014
;He gave offence to his friend.  ;shiksharthi
;उसने अपने मित्र को नाराज कर दिया.
(defrule offence2
(declare (salience 5000))
(id-root ?id offence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(kriyA-to_saMbanXI  ?id1 ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nArAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offence.clp 	offence2   "  ?id " nArAja  )" crlf))
)


;----------------default rules-----------------------------
;@@@ Added by Pramila(BU) on 29-03-2014
;I meant no offence.  ;shiksharthi
;मेरा तिरस्कार करने का इरादा नहीं था.
(defrule offence3
(declare (salience 100))
(id-root ?id offence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiraskAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offence.clp 	offence3   "  ?id " wiraskAra  )" crlf))
)


;@@@ Added by Pramila(BU) on 29-03-2014
(defrule offence4
(declare (salience 0))
(id-root ?id offence)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiraskAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  offence.clp 	offence4   "  ?id " wiraskAra  )" crlf))
)


