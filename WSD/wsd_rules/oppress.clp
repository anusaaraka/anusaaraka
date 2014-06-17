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

;@@@ Added by Pramila(BU) on 03-04-2014
;The law oppresses us.  ;shiksharthi
;कानून हमारा दमन करता है.
(defrule oppress0
(declare (salience 5000))
(id-root ?id oppress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 law|regulation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xamana_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " oppress.clp oppress0   "  ?id "  xamana_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  oppress.clp oppress0    "  ?id " kA )" crlf)
))

;@@@ Added by Pramila(BU) on 03-04-2014
;I feel oppressed with worry,cold.  ;shiksharthi
;मै चिंता, ठंड से पीडित हूँ.
(defrule oppress1
(declare (salience 5000))
(id-word ?id oppressed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-with_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pIdiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* " oppress.clp oppress1   "  ?id "  pIdiwa )" crlf)
))


;-------------------default rules--------------------
;@@@ Added by Pramila(BU) on 03-04-2014
;The king oppressed his subjects.  ;shiksharthi
;राजा अपनी प्रजा पर अत्याचार करता था.
(defrule oppress2
(declare (salience 100))
(id-root ?id oppress)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyAcAra_kara))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " oppress.clp oppress2   "  ?id "  awyAcAra_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  oppress.clp oppress2    "  ?id " para )" crlf)
))


;@@@ Added by Pramila(BU) on 03-04-2014
(defrule oppress3
(declare (salience 0))
(id-root ?id oppress)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyAcAra_kara))
(assert (kriyA_id-object_viBakwi ?id para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " oppress.clp oppress3   "  ?id "  awyAcAra_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  oppress.clp oppress3    "  ?id " para )" crlf)
))

