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
;He dodged behind the wall.             ;shiksharthi
;वह दीवार के पीछे छिप गया.
(defrule dodge0
(declare (salience 5000))
(id-root ?id dodge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-behind_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cipa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dodge.clp 	dodge0   "  ?id "  Cipa_jA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 11-01-2014
;The minister dodged questions about his relationship with the actress.             ;cald
;मंत्री ने अभिनेत्री के साथ अपने रिश्ते के बारे में सवालों को टाल दिया.
(defrule dodge1
(declare (salience 5000))
(id-root ?id dodge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-root ?id1 question)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id tAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dodge.clp 	dodge1   "  ?id "  tAla_xe )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 11-01-2014
;He ran across the road, dodging the traffic.        ;oald
;उसने यातायात से हटते हुए सड़क को पार किया.
(defrule dodge2
(declare (salience 5000))
(id-root ?id dodge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kqxanwa_karma  ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baca))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dodge.clp 	dodge2   "  ?id "  baca )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  dodge.clp      dodge2   "  ?id " se )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 11-01-2014
;He dodged to avoid the hurtling bicycle.    ;cald
;वह साइकिल से टकराने से बचने के लिए हट गया.
(defrule dodge3
(declare (salience 5000))
(id-root ?id dodge)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hata_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dodge.clp 	dodge3   "  ?id "  hata_jA )" crlf))
)

;-------------------------------default rules---------------------------------

;@@@ Added by Pramila(Banasthali University) on 11-01-2014
;He dodged his military service.      ;oald
;उसने अपनी सैन्य सेवा को चकमा दिया.
(defrule dodge4
(declare (salience 4000))
(id-root ?id dodge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakamA_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dodge.clp 	dodge4   "  ?id "  cakamA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  dodge.clp      dodge4   "  ?id " ko )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 11-01-2014
;He gave me the dodge.     ;shiksharthi
;उसने मुझे चकमा दिया.
(defrule dodge5
(declare (salience 4000))
(id-root ?id dodge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakamA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dodge.clp 	dodge5   "  ?id "  cakamA )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 11-01-2014
(defrule dodge6
(declare (salience 0))
(id-root ?id dodge)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cakamA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dodge.clp 	dodge6   "  ?id "  cakamA_xe )" crlf))
)
