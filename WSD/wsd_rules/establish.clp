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
;@@@ Added by Pramila(BU) 
;These observations thus established that all these particles, although produced under different conditions, were identical in nature.
;Millikan's experiment established that electric charge is quantised.
;The theory was established by Newton.
(defrule establish0
(declare (salience 5000))
(id-root ?id establish)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 observation|experiment|theory|law|principle)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prasWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  establish.clp 	establish0   "  ?id "  prasWApiwa_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 05-02-2014
;The king established his authority over the kingdom.         ;shiksharthi
;राजा ने राज्य पर अपना अधिकार जमा लिया 
(defrule establish1
(declare (salience 5000))
(id-root ?id establish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-over_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jamA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  establish.clp 	establish1   "  ?id "  jamA_le )" crlf))
)

;@@@ Added by Pramila(BU) on 05-02-2014
;By then she was established as a star.        ;oald
;तब तक वह एक स्टार की तरह बना दी गई थी.
(defrule establish2
(declare (salience 5000))
(id-root ?id establish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-karma  ?id ?sub)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  establish.clp 	establish2   "  ?id "  banA_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 05-02-2014
;They have established that his injuries were caused by a fall.       ;oald
;उन्होंने प्रमाणित कर दिया है कि उसको चोटें गिरने से आई है. 
(defrule establish3
(declare (salience 4900))
(id-root ?id establish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramANiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  establish.clp 	establish3   "  ?id "  pramANiwa_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 05-02-2014
;Police are still trying to establish the cause of the accident.       ;oald
;पुलिस अभी भी दुर्घटना का कारण पता लगाने की कोशिश कर रही है.
(defrule establish4
(declare (salience 5000))
(id-root ?id establish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 cause)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  establish.clp 	establish4   "  ?id "  pawA_lagA )" crlf))
)

;@@@ Added by Pramila(BU) on 05-02-2014
;We need to establish where she was at the time of the shooting.        ;oald
;हमें पता लगाने की जरूरत है कि वह शूटिंग के समय कहाँ थी.
(defrule establish5
(declare (salience 5000))
(id-root ?id establish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word =(+ ?id 1) where|what|how|why)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  establish.clp 	establish5   "  ?id "  pawA_lagA )" crlf))
)
;---------------------------------------------------------default rules----------------------------------------------------------------------

;@@@ Added by Pramila(BU)
;The new treaty establishes a free trade zone.   ;oald
;नई संधि एक मुफ्त व्यापार क्षेत्र स्थापित करती है. 
(defrule establish6
(declare (salience 3500))
(id-root ?id establish)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  establish.clp 	establish6   "  ?id "  sWApiwa_kara )" crlf))
)



(defrule establish7
(declare (salience 3000))
(id-root ?id establish)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramANiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  establish.clp 	establish7   "  ?id "  pramANiwa_kara )" crlf))
)









