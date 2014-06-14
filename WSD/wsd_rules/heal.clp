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
;@@@ Added by Prachi Rathore[19-2-14]
;The wound is healing up. [shiksharthi-kosh]
;घाव भर रहा है . 
(defrule heal0
(declare (salience 5000))
(id-root ?id heal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  heal.clp 	heal0  "  ?id "  " ?id1 " Bara)" crlf))
)


;@@@ Added by Prachi Rathore[19-2-14]
;This ointment will heal your wound. [shiksharthi-kosh]
;यह मरहम आपका घाव ठीक करेगा . 
(defrule heal1
(declare (salience 5000))
(id-root ?id heal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heal.clp 	heal1   "  ?id " TIka_kara )" crlf))
)

;@@@ Added by Prachi Rathore[19-2-14]
;To heal a quarrel.  [shiksharthi-kosh]
;झगडा मिटाना . 
;She was never able to heal the rift between herself and her father.[oald]
;वह कभी उसके और उसके पिता के बीच दरार मिटाने में समर्थ नहीं हुयी . 
;The breach between them never really healed.[oald]
;
(defrule heal3
(declare (salience 5000))
(id-root ?id heal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 quarrel|rift|breach)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mitA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heal.clp 	heal3   "  ?id " mitA )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[19-2-14]
; A broken heart takes a long time to heal.[cambridge]
 ;एक टूटा हुआ हृदय ठीक होने के लिये लंबा समय लेता है . 
(defrule heal2
(declare (salience 400))
(id-root ?id heal)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heal.clp 	heal2   "  ?id "  TIka_ho)" crlf))
)


;@@@ Added by Prachi Rathore[19-2-14]
 
(defrule heal4
(declare (salience 200))
(id-root ?id heal)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  heal.clp 	heal4   "  ?id "  TIka_ho )" crlf))
)
