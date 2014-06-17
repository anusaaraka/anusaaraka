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


;@@@ Added by Pramila(Banasthali University) on 11-01-2014
;The train crash dominated the news.              ;oald
;ट्रेन दुर्घटना  समाचार में मुख्य खबर होती है.
;The dispute is likely to dominate the news.        ;cald
;विवाद समाचार में मुख्य खबर होने की संभावना है.
(defrule dominate1
(declare (salience 5000))
(id-root ?id dominate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-word ?id1 news)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muKya_Kabara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dominate.clp 	dominate1   "  ?id "  muKya_Kabara_ho )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 11-01-2014
;Some temples dominate the hills in Hardwar.    ;shiksharthi
;हरिद्वार में कुछ मंदिर पहाड़ियो से ऊँचे उठे होते हैं.
;The cathedral dominates the city.      ;oald
;गिरजाघर शहर से ऊँचा उठा होता है.
(defrule dominate2
(declare (salience 4900))
(id-root ?id dominate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id se_UzcA_uTA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dominate.clp 	dominate2   "  ?id " se_upara_uTA_ho  )" crlf))
)



;@@@ Added by Pramila(Banasthali University) on 11-01-2014
;Arsenal dominated the first half of the match.  ;oald
;आर्सेनल मैच की पहले आधे मैच में छा गया.
(defrule dominate3
(declare (salience 5000))
(id-root ?id dominate)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id2)
(viSeRya-of_saMbanXI  ?id2 ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dominate.clp 	dominate3   "  ?id "  CA_jA )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 24-02-2014
;Since the electromagnetic force is so much stronger than the gravitational force it dominates all phenomena at atomic and 
;molecular scales. ;ncert
;चूङ्कि विद्युत चुम्बकीय बल गुरुत्वाकर्षण बल की अपेक्षा कहीं अधिक प्रबल होता है यह आण्विक तथा परमाण्वीय पैमाने की सभी परिघटनाओं पर छाया रहता है..
(defrule dominate4
(declare (salience 5000))
(id-root ?id dominate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAyA_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dominate.clp 	dominate4   "  ?id "  CAyA_raha)" crlf))
)



;------------------default rules---------------------------------------
;@@@ Added by Pramila(Banasthali University) on 11-01-2014
;She always says a lot in meetings, but she doesn't dominate.        ;oald
;वह मीटिंग में हमेशा बहुत कुछ कहती है परन्तु वह तानाशाही नहीं करती.
;तानाशाही_कर/धौंस_जमाना
(defrule dominate5
(declare (salience 4000))
(id-root ?id dominate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAnASAhI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dominate.clp 	dominate5   "  ?id "  wAnASAhI_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 11-01-2014
(defrule dominate6
(declare (salience 0))
(id-root ?id dominate)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xabAva_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dominate.clp 	dominate6   "  ?id "  xabAva_dAla)" crlf))
)
