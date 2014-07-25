;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore[15-2-14]
;All of a sudden, the car veered off the road.[cambridge]
;अचानक, गाडी सडक से रास्ता भटक गयी. 
(defrule veer0
(declare (salience 5000))
(id-root ?id veer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 rAswA_Bataka_jA))
(assert (kriyA_id-object_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " veer.clp 	veer0  "  ?id "  " ?id1 "  rAswA_Bataka_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  veer.clp 	veer0   "  ?id "  se )" crlf))
)


;@@@ Added by Prachi Rathore[15-2-14]
;The bus veered onto the wrong side of the road.[oald]
; बस सडक के गलत तरफ पर मुड गई .  
(defrule veer2
(declare (salience 5000))
(id-root ?id veer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-onto_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muda_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  veer.clp 	veer2   "  ?id "  muda_jA )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[15-2-14]
;Moments before crashing, the jet was seen veering sharply to the right.[cambridge]
; दुर्घटना से कुछ क्षण पहले, जेट विमान तेजी से दाँयी ओर मुडते हुए देखा गया था . 
(defrule veer1
(declare (salience 300))
(id-root ?id veer)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mudZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  veer.clp 	veer1   "  ?id "  mudZa )" crlf))
)

;@@@ Added by Prachi Rathore[15-2-14]
;Moments before crashing, the jet was seen veering sharply to the right.[cambridge]
; दुर्घटना से कुछ क्षण पहले, जेट विमान दाँया और तेजी से दिशा बदलते हुए देखा गया था . 
(defrule veer3
(declare (salience 200))
(id-root ?id veer)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiSA_baxala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  veer.clp 	veer3   "  ?id "  xiSA_baxala )" crlf))
)
