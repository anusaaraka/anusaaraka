;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;@@@ Addded by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)[07-03-14]
;Then we quickly measure the diameter of the thin film to get its area A.[ncert]
;इस प्रकार बनी तनु फिल्म का व्यास माप कर इसका क्षेत्रफल A ज्ञात किया जा सकता है..
(defrule area1
(declare (salience 4000))
(id-root ?id area)
?mng <-(meaning_to_be_decided ?id) 
(or
(and(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)(kriyA-object  ?kri ?id1))
(kriyA-object  ?kri ?id)
)
(id-root ?kri measure|get)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewraPala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  area.clp 	area1   "  ?id " kRewraPala  )" crlf)
)
)

;@@@ Addded by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)[07-03-14]
;The tumour had not spread to other areas of the body.[oald]
;ट्यूमर शरीर के अन्य भागों में नहीं फैला था.
(defrule area2
(declare (salience 4000))
(id-root ?id area)
?mng <-(meaning_to_be_decided ?id) 
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 body)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  area.clp 	area2   "  ?id " BAga  )" crlf)
)
)


;@@@ Addded by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)[07-03-14]
;the hotel reception area.[oald]
;होटल का स्वागत क्षेञ
(defrule area3
(declare (salience 4000))
(id-root ?id area)
?mng <-(meaning_to_be_decided ?id) 
(kriyA-to_saMbanXI  ? ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 screen)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  area.clp 	area3   "  ?id " sWAna  )" crlf)
)
)

;@@@ Addded by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)[07-03-14]
;the hotel reception area.[oald]
;होटल का स्वागत क्षेञ
(defrule area4
(declare (salience 4000))
(id-root ?id area)
?mng <-(meaning_to_be_decided ?id) 
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 triangle|square|trapezium|rectangle|circle|hexagon|parallelogram)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  area.clp 	area4   "  ?id " sWAna  )" crlf)
)
)


;********************DEFAULT RULES**************************

;@@@ Addded by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)[07-03-14]
;the hotel reception area.[oald]
;होटल का स्वागत क्षेञ
(defrule area0
(declare (salience 0))
(id-root ?id area)
?mng <-(meaning_to_be_decided ?id) 
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kRewra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  area.clp 	area0   "  ?id " kRewra  )" crlf)
)
)

;************************EXAMPLES*************************************

;Then we quickly measure the diameter of the thin film to get its area A.
;Mountainous areas.
;Desert areas.
;There is heavy traffic in the downtown area tonight.
;She knows the local area very well.
;John is the London area manager.
;Wreckage from the plane was scattered over a wide area.
;The farm and surrounding area were flooded.
;Move the cursor to a blank area of the computer screen.
;The tumour had not spread to other areas of the body.
;The areas of training and development.
;Finance is Mark's area.
;The big growth area of recent years has been in health clubs.
;The area of a triangle.
;The room is 12 square metres in area.
;Britain occupies a total area of 88798 square miles.
