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
;@@@ Added by Prachi Rathore
;They tickle my throat and make me cough..[gayannidhi]
;वह मेरे गले में अटक जाती है और मुजे खाँसी आने लगती है। 
(defrule tickle0
(declare (salience 5000))
(id-root ?id tickle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 throat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ataka_jA))
(assert (kriyA_id-object_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tickle.clp 	tickle0   "  ?id "  ataka_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi  " ?*wsd_dir* "  tickle.clp        tickle0   "  ?id " meM )" crlf))
)

;@@@ Added by Prachi Rathore
;My throat tickles.[oald]
;मेरे कण्ठ में खराश है . 
(defrule tickle3
(declare (salience 5000))
(id-root ?id tickle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 throat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarASa))
(assert (kriyA_id-subject_viBakwi ?id meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tickle.clp 	tickle3   "  ?id "  KarASa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi  " ?*wsd_dir* "  tickle.clp        tickle3   "  ?id " meM )" crlf))
)

;@@@ Added by Prachi Rathore
;To have a tickle in your throat [oald]
;आपके कण्ठ में खराश होना.
(defrule tickle4
(declare (salience 5000))
(id-root ?id tickle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?id1)
(id-root ?id1 throat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarASa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tickle.clp 	tickle4   "  ?id "  KarASa )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore
;Stop tickling![oald]
;गुदगुदाना रोकिए! 
(defrule tickle1
(declare (salience 4000))
(id-root ?id tickle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guxaguxI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tickle.clp 	tickle1   "  ?id "  guxaguxI_kara )" crlf))
)

;@@@ Added by Prachi Rathore
(defrule tickle2
(declare (salience 4000))
(id-root ?id tickle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guxaguxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tickle.clp 	tickle2   "  ?id " guxaguxI )" crlf))
)
