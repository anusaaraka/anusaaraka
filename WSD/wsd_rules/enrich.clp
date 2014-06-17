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

;@@@ Added by Pramila(Banasthali University) on 30-01-2014
;The new contract will enrich my father.       ;shiksharthi
;नए ठेके से मेरे पिता धनवान हो जाएँगे.
(defrule enrich0
(declare (salience 5000))
(id-root ?id enrich)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XanvAna_ho_jA))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enrich.clp 	enrich0   "  ?id "  XanvAna_ho_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  enrich.clp      enrich0   "  ?id " se )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 30-01-2014
;Fertilizer helps to enrich the soil.       ;cald
;उर्वरक मिट्टी को उपजाऊ बनाने में मदद करता है.
(defrule enrich1
(declare (salience 5000))
(id-root ?id enrich)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id upajAU_banA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enrich.clp 	enrich1   "  ?id "  upajAU_banA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enrich.clp      enrich1   "  ?id " ko )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 30-01-2014
;My life was greatly enriched by knowing her.       ;cald
;मेरा जीवन उसे जानने से बहुत सम्पन्न हो गया था.
(defrule enrich2
(declare (salience 5000))
(id-root ?id enrich)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-karma  ?id ?id1)
(id-root ?id1 life)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samqxXa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enrich.clp 	enrich2   "  ?id "  samqxXa_ho)" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 30-01-2014
;The study of science has enriched all our lives.   ;oald
;विज्ञान के अध्ययन ने हमारे सबके जीवन को सुगम बना दिया  है.
(defrule enrich3
(declare (salience 5000))
(id-root ?id enrich)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 life)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sugama_banA_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enrich.clp 	enrich3   "  ?id "  sugama_banA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  enrich.clp      enrich3   "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  enrich.clp      enrich3   "  ?id " ko )" crlf)
)
)
;-----------------------default rules-----------------------------
;@@@ Added by Pramila(Banasthali University) on 30-01-2014
;The book will enrich your vocabularty.       ;shiksharthi
;इस पुस्तक से तुम्हारा शब्द-भंडार समृद्ध होगा.
(defrule enrich4
(declare (salience 4000))
(id-root ?id enrich)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samqxXa_ho))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enrich.clp 	enrich4   "  ?id "  samqxXa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  enrich.clp      enrich4   "  ?id " se )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 30-01-2014
(defrule enrich5
(declare (salience 0))
(id-root ?id enrich)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samqxXa_ho))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enrich.clp 	enrich5   "  ?id "  samqxXa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  enrich.clp      enrich5   "  ?id " se )" crlf)
)
)
