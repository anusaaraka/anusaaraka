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

;@@@ added by Pramila(BU) on 11-12-2013
;Her confidence has been slowly eroded by repeated failures.            ;oald
;उसका आत्मविश्वास लगातार विफलताओं से धीरे धीरे  कम हो गया है.
;Mortgage payments have been eroded by inflation.          ;oald
;ऋण भुगतान मुद्रास्फीति से कम हो गया है.
(defrule erode0
(declare (salience 5000))
(id-root ?id erode)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(kriyA-by_saMbanXI  ?id ?id2)
(id-root ?id1 confidence|payment)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kama_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  erode.clp 	erode0   "  ?id "  kama_ho_jA )" crlf))
)

;@@@ added by Pramila(BU) on 11-12-2013
;The rocks have eroded away over time.            ;oald
;चट्टानें समय के साथ कट चुकी हैं.
(defrule erode1
(declare (salience 5000))
(id-root ?id erode)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 away)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " erode.clp	erode1  "  ?id "  " ?id1 "  kata  )" crlf))
)

;@@@ added by Pramila(BU) on 11-12-2013
;When this happens, the mountain is eroded; the path is strewn with rubble and it's slippery and difficult to walk on.
;जब यह होता है,तो पर्वत नष्ट हो जाते हैं और जब वह खिसकती हैं, तो उस पर चलना मुश्‍किल हो जाता हैं।
(defrule erode2
(declare (salience 4000))
(id-root ?id erode)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naRta_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  erode.clp 	erode2   "  ?id "  naRta_kara_xe )" crlf))
)

;@@@ added by Pramila(BU) on 11-12-2013
(defrule erode3
(declare (salience 0))
(id-root ?id erode)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naRta_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  erode.clp 	erode3   "  ?id "  naRta_kara_xe )" crlf))
)
