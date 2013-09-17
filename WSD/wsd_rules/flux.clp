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


;The economy of this country is in a constant state of flux due to political instability.
;इस देश की अर्थव्यवस्था  राजनीतिक अस्थिरता की वजह से निरंतर परिवर्तन की स्थिति में है.
;Our plans are in a state of flux at the moment.
;हमारी योजना इस समय निरंतर परिवर्तन की स्थिति में हैं.
(defrule flux0
(declare (salience 5000))
(id-root ?id flux)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-root ?id1 state)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niraMwara_parivarwana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flux.clp 	flux0   "  ?id "  niraMwara_parivarwana )" crlf))
)


;The substances fluxed at a very high temperature.
;पदार्थ एक बहुत उच्च तापमान पर पिघल जाता है.
(defrule flux1
(declare (salience 5000))
(id-root ?id flux)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piGala_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flux.clp 	flux1   "  ?id "  piGala_jA )" crlf))
)
;--------------------------------------------Default rules----------------------------------------------------

;Magnetic flux is a scalar quantity. 
;चुंबकीय प्रवाह एक अदिश राशि है.
(defrule flux2
(declare (salience 4500))
(id-root ?id flux)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravAha ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flux.clp 	flux2   "  ?id "  pravAha )" crlf))
)

;The sun fluxed the ice.
;सूरज  ने बर्फ को पिघला दिया.
(defrule flux3
(declare (salience 4500))
(id-root ?id flux)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piGalA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flux.clp 	flux3   "  ?id "  piGalA_xe )" crlf))
)


(defrule flux4
(declare (salience 3000))
(id-root ?id flux)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Plaksa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  flux.clp 	flux4   "  ?id "  Plaksa )" crlf))
)
