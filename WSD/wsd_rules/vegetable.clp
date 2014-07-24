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
 ;Severe brain damage turned him into a vegetable.[oald]
;
(defrule vegetable0
(declare (salience 5000))
(id-root ?id vegetable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-into_saMbanXI  ?id2 ?id)
(kriyA-object  ?id2 ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 jada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " vegetable.clp 	vegetable0  "  ?id "  " ?id1 "  jada )" crlf))
)

;@@@ Added by Prachi Rathore[15-2-14]
;Since losing my job I've been a vegetable.[oald]
;जब से  मेरी नौकरी खोयी है मैं जड हो चुका हूँ . 
(defrule vegetable2
(declare (salience 5000))
(id-root ?id vegetable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vegetable.clp 	vegetable2   "  ?id "  jada )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[15-2-14]
;fruit and vegetables[cambridge]
;फल और सब्जियाँ .
(defrule vegetable1
(declare (salience 250))
(id-root ?id vegetable)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vegetable.clp 	vegetable1   "  ?id "  sabjI )" crlf))
)

;@@@ Added by Prachi Rathore[15-2-14]
;fruit and vegetables[cambridge]
;फल और सब्जियाँ .
(defrule vegetable3
(declare (salience 200))
(id-root ?id vegetable)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vegetable.clp 	vegetable3   "  ?id "  sabjI )" crlf))
)
