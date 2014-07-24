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

;@@@ Added by Pramila(BU) on 19-03-2014
;All the flowers have withered.  ;shiksharthi
;सारे फूल मुरझा चुके है.

(defrule wither1
(declare (salience 4900))
(id-root ?id wither)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 flower|leaf|plant|tree)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muraJA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wither.clp 	wither1   "  ?id "  muraJA )" crlf)
))

;@@@ Added by Pramila(BU) on 19-03-2014
;The sun has withered these plants.  ;shiksharthi
;धूप ने इन पौधो को कुम्हला दिया है.
(defrule wither2
(declare (salience 5000))
(id-root ?id wither)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 sun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kumhalA_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wither.clp 	wither2   "  ?id "  kumhalA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  wither.clp 	wither2   "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  wither.clp 	wither2   "  ?id " ko )" crlf)
))

;@@@ Added by Pramila(BU) on 19-03-2014
;The cold withered the leaves.  ;shiksharthi
;सर्दी ने पत्तियों को मुरझा दिया है
(defrule wither3
(declare (salience 4950))
(id-root ?id wither)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 flower|leaf|plant|tree)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muraJA_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wither.clp 	wither3   "  ?id "  muraJA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  wither.clp 	wither3   "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  wither.clp 	wither3   "  ?id " ko )" crlf)
))

;@@@ Added by Pramila(BU) on 19-03-2014
;After his failure he has withered.   ;shiksharthi
;उसकी असफलता के बाद वह शिथिल पड़ गया है.
(defrule wither4
(declare (salience 4900))
(id-root ?id wither)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id siWila_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wither.clp 	wither4   "  ?id "  siWila_padZa )" crlf)
))

;-----------default rules------------------------------
;@@@ Added by Pramila(BU) on 19-03-2014
;Her beauty is withering.   ;shiksharthi
;उसकी सुंदरता मलीन हो रही है.
(defrule wither5
(declare (salience 100))
(id-root ?id wither)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malIna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wither.clp 	wither5   "  ?id "  malIna_ho )" crlf)
))

;@@@ Added by Pramila(BU) on 19-03-2014
(defrule wither6
(declare (salience 0))
(id-root ?id wither)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id malIna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wither.clp 	wither6   "  ?id "  malIna_ho )" crlf)
))
