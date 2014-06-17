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
;#  Foundation, Inc., 14-375 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################


;@@@ Added by Prachi Rathore[14-3-14]
 ; I scrabbled for a handhold and hoisted myself up.[cambridge]
;मैने एक हत्था ढूँढा और फिर ऊपर चढा
(defrule hoist4
(declare (salience 4500))
(id-root ?id hoist)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Upara_caDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hoist.clp 	hoist4 "  ?id "  " ?id1  "  Upara_caDA)" crlf))
)


;@@@ Added by Prachi Rathore[14-3-14]
 ;To hoist a flag. 
;झण्डा फहराना . 
(defrule hoist5
(declare (salience 4500))
(id-root ?id hoist)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object ?id ?id1)
(id-cat_coarse ?id verb)
(id-root ?id1 flag)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoist.clp 	hoist5   "  ?id " PaharA )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[14-3-14]

(defrule hoist1
(declare (salience 400))
(id-root ?id hoist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwolaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoist.clp 	hoist1   "  ?id " uwwolaka )" crlf))
)

;@@@ Added by Prachi Rathore[14-3-14]
;The cargo was hoisted aboard by crane.
;जहाजी माल क्रेन से जहाज पर ऊपर उठाया गया था . 
(defrule hoist2
(declare (salience 400))
(id-root ?id hoist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoist.clp 	hoist2   "  ?id " Upara_uTA )" crlf))
)

;@@@ Added by Prachi Rathore[14-3-14]
 
(defrule hoist3
(declare (salience 400))
(id-root ?id hoist)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upara_uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hoist.clp 	hoist3   "  ?id " Upara_uTA )" crlf))
)
