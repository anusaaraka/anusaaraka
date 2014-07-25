;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02 at gmail dot com)
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
;The key to success is preparation. [oald]
; तैयारी सफलता की कुंजी है . 

(defrule key0
(declare (salience 5000))
(id-root ?id key)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-to_saMbanXI  ?id ?id1)
(id-root ?id1 question|success|solve)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuMjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  key.clp 	key0   "  ?id "  kuMjI )" crlf))
)

;Check your answers in the key at the back of the book.[OALD]
;पुस्तक के पीछे कुंजी में आपके उत्तर जाँचें . 
(defrule key1
(declare (salience 5000))
(id-root ?id key)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(kriyA-object  ?id1 ?id2)
(id-root ?id2 answer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuMjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  key.clp 	key1   "  ?id " kuMjI )" crlf))
)

;The song changes key halfway through. [cambridge]
; गाना  बीच मे सुर बदलता है . 

(defrule key2
(declare (salience 5000))
(id-root ?id key)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 song|minor)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  key.clp 	key2   "  ?id "  sura )" crlf))
)

;@@@ Added by Prachi Rathore (06-12-13)
;A sonata in the key of E flat major.  [oald]
; वाद्य सङ्गीत रचना E flat major सुर में.
(defrule key5
(declare (salience 5000))
(id-root ?id key)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 song|sonata|piece)
(viSeRya-in_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sura))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  key.clp 	key5   "  ?id "  sura )" crlf))
)

;xxxxxxxxxxxxxxxxDefault Rulexxxxxxxxxxxxxxx
;A bunch of keys. [OALD]
;चाबियों का गुच्छा . 
(defrule key3
(declare (salience 4700))
(id-root ?id key)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAbI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  key.clp 	key3   "  ?id "  cAbI )" crlf))
)

(defrule key4
(declare (salience 4700))
(id-root ?id key)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramuKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  key.clp 	key4   "  ?id "  pramuKa )" crlf))
)
