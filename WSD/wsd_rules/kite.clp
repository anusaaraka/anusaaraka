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
;A kite pounced on a small bird. [shiksharthi-kosh]
;चील एक छोटी चिडिया पर झपटी . 
(defrule kite1
(declare (salience 5000))
(id-root ?id kite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 pounce)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kite.clp 	kite1   "  ?id "  cIla )" crlf))
)

;@@@ Added by Prachi Rathore[25-3-14]
;He is a kite, do not believe him. [shiksharthi-kosh]
;वह एक  ठग है,उस पर विश्वास मत करो. 
(defrule kite5
(declare (salience 5000))
(id-root ?id kite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Taga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kite.clp 	kite5   "  ?id "  Taga )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[25-3-14]
;The boy was flying a kite in the sun.The boy was flying a kite in the sun.
;लडका धूप में पतंग उडा रहा था . 
(defrule kite2
(declare (salience 400))
(id-root ?id kite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAlasAjI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kite.clp 	kite2   "  ?id "  jAlasAjI_kara )" crlf))
)

;@@@ Added by Prachi Rathore[25-3-14]
;Check kiting. [oald]
(defrule kite3
(declare (salience 400))
(id-root ?id kite)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawaMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kite.clp 	kite3   "  ?id "  pawaMga )" crlf))
)

;@@@ Added by Prachi Rathore[25-3-14]

(defrule kite4
(declare (salience 200))
(id-root ?id kite)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawaMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kite.clp 	kite4   "  ?id "  pawaMga )" crlf))
)
