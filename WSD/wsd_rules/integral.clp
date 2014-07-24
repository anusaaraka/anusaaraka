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
;Chlorine, for example, has two isotopes having masses 34.98 u and 36.98 u, which are nearly integral multiples of the mass of a hydrogen atom.
;उदाहरण के लिए, क्लोरीन के दो समस्थानिक हैं जिनके द्रव्यमान क्रमशः 34.98 u एवं 36.98 u हैं, जो कि हाइड्रोजन परमाणु द्रव्यमान के पूर्ण गुणज के सन्निकट हैं|
(defrule integral0
(declare (salience 5000))
(id-root ?id integral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root =(+ ?id 1) multiple)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) pUrNa_guNaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " integral.clp	integral1  "  ?id "  " (+ ?id 1) "  pUrNa_guNaja )" crlf)))

;------Default-rule-----------
(defrule integral1
(declare (salience 4900))
(id-root ?id integral)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBinna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  integral.clp 	integral1   "  ?id "  aBinna)" crlf))
)
