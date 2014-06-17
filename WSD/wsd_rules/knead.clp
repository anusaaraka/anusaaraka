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
;@@@ Added by Prachi Rathore[25-3-14]
;You should not knead your arm when you get injury. [shiksharthi-kosh]
;जब तुम्हें चोट लगे तब तुम्हें अपनी बाँह की मालिश नहीं करना चाहिये
(defrule knead1
(declare (salience 5000))
(id-root ?id knead)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 arm)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAliSa_kara))
(assert (kriyA_id-object_viBakwi ?id kI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knead.clp 	knead1   "  ?id "  mAliSa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  knead.clp 	knead1    "  ?id "  kI )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx

;@@@ Added by Prachi Rathore[25-3-14]
;Knead the dough until smooth.[cambridge]
; कोमल होने तक साना हुआ आटा गूँधिए . 
(defrule knead3
(declare (salience 400))
(id-root ?id knead)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gUzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knead.clp 	knead3   "  ?id "  gUzXa )" crlf))
)

;@@@ Added by Prachi Rathore[25-3-14]

(defrule knead4
(declare (salience 200))
(id-root ?id knead)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gUzXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  knead.clp 	knead4   "  ?id "  gUzXa )" crlf))
)
