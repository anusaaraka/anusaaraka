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


;@@@ Added by Prachi Rathore[4-2-14]
;To achieve a target. [oald]
;लक्ष्य पूरा करना /	लक्ष्य प्राप्त करना . . 
(defrule target0
(declare (salience 5000))
(id-root ?id target)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakRya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  target.clp 	target0   "  ?id "  lakRya )" crlf))
)


;@@@ Added by Prachi Rathore[4-2-14]
;The company has been targeted by animal rights groups for its use of dogs in drugs trials. [oald]
;कम्पनी दवा परीक्षण में कुत्तों के  उपयोग के लिये पशुओं के अधिकारों की रक्षा करने वाले समूहों द्वारा निशाना बनाई गयी है . 
(defrule target3
(declare (salience 5000))
(id-root ?id target)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSAnA_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  target.clp 	target3   "  ?id "  niSAnA_banA )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[4-2-14]
;The children became the target for their father's aggressive outbursts.[oald]
;बच्चे उनके पिता के आक्रामक प्रक्षोभ का निशाना बने . 
(defrule target1
(declare (salience 4000))
(id-root ?id target)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  target.clp 	target1   "  ?id "  niSAnA )" crlf))
)

;@@@ Added by Prachi Rathore[4-2-14]

(defrule target2
(declare (salience 4000))
(id-root ?id target)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lakRya_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  target.clp 	target2   "  ?id "  lakRya_banA)" crlf))
)

;@@@ Added by Prachi Rathore[4-2-14]

(defrule target4
(declare (salience 300))
(id-root ?id target)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  target.clp 	target4   "  ?id "  niSAnA)" crlf))
)
