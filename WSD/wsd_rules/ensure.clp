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
;@@@ Added by Pramila(BU) on 31-01-2014
;Ensure your house against any risk.      ;shiksharthi
;अपना घर जोखिम से सुरक्षित कर लीजिए.
(defrule ensure0
(declare (salience 4950))
(id-root ?id ensure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-against_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id surakRiwa_kara_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ensure.clp 	ensure0   "  ?id "  surakRiwa_kara_le )" crlf))
)


;@@@ Added by Pramila(BU) on 31-01-2014
;The teacher ensured that the boy will pass.      ;shiksharthi
;अध्यापक ने निश्चय करा दिया कि लड़का पास हो जाएगा.
(defrule ensure1
(declare (salience 4950))
(id-root ?id ensure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niScaya_karA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ensure.clp 	ensure1   "  ?id "  niScaya_karA_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 31-01-2014
;Victory ensured them a place in the final.      ;oald
;जीत ने फाइनल में उनका स्थान पक्का कर दिया.
(defrule ensure2
(declare (salience 4950))
(id-root ?id ensure)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-subject  ?id ?id1)
;(id-root ?id1 victory)
(kriyA-object_1  ?id ?id1)
(kriyA-object_2 ?id ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakkA_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ensure.clp 	ensure2   "  ?id "  pakkA_kara_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 31-01-2014             [was conflicting with ensure1 that's why it is separate rule]
;Please ensure that all lights are switched off.     ;oald
;कृपया सुनिश्चित कर लीजिए कि सभी बत्तियाँ बंद है.
;The teacher ensured that the boy will pass.      ;shiksharthi          [conflicting sentence]
;अध्यापक ने निश्चय करा दिया कि लड़का पास हो जाएगा.
(defrule ensure3
(declare (salience 4900))
(id-root ?id ensure)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkyakarma  ?id ?id2)
(not(kriyA-subject  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suniSciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ensure.clp 	ensure3   "  ?id "  suniSciwa_kara )" crlf))
)

;-----------------------default rules--------------------------------

;@@@ Added by Pramila(BU) on 31-01-2014
;The airline is taking steps to ensure safety on its aircraft.     ;cald
;एयरलाइन अपने विमान पर सुरक्षा सुनिश्चित करने के लिए कदम उठा रही है.
(defrule ensure4
(declare (salience 4000))
(id-root ?id ensure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suniSciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ensure.clp 	ensure4   "  ?id "  suniSciwa_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 31-01-2014
(defrule ensure5
(declare (salience 0))
(id-root ?id ensure)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id suniSciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ensure.clp 	ensure5   "  ?id "  suniSciwa_kara )" crlf))
)
