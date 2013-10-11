;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02@gmail.com)
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
;Added by Prachi Rathore(20-aug-2013)
;Further, the value of e/m was found to be independent of the nature of the material/metal used as the cathode (emitter), or the gas introduced in the discharge tube. 
;यह भी पाया गया कि e/m का मान कैथोड(उत्सर्जक)के पदार्थ अथवा धातु या विसर्जन-नलिका में भरी गैस की प्रकृति पर निर्भर नहीं करता|
(defrule independent0
(declare (salience 4900))
(id-root ?id independent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-of_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirBara_nahIM_karawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  independent.clp 	independent0   "  ?id "  nirBara_nahIM_karawA )" crlf))
)
;I am an independent woman.
;मैं एक स्वतंत्र महिला हूँ।
;They are independent to choose their work.
;वे अपने काम का चयन करने के लिए स्वतंत्र हैं।
(defrule independent1
(declare (salience 4900))
(id-root ?id independent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa ?id1 ?id)(subject-subject_samAnAXikaraNa ?id1 ?id)(saMjFA-to_kqxanwa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svawaMwra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  independent.clp 	independent1   "  ?id "  svawaMwra )" crlf))
)
;He runs his business independent from his family.
;वह उसका उद्योग उसके परिवार से अलग चलाता है।
(defrule independent2
(declare (salience 4900))
(id-root ?id independent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-from_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  independent.clp 	independent2   "  ?id "  alaga )" crlf))
)


;XXXXXXXXXXXXXXX DEFAULT XXXXXXXXXXXXXXXXX
(defrule independent3
(declare (salience 2000))
(id-root ?id independent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svAXIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  independent.clp 	independent3   "  ?id "  svAXIna )" crlf))
)

(defrule independent4
(declare (salience 2000))
(id-root ?id independent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirxalIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  independent.clp 	independent4   "  ?id "  nirxalIya )" crlf))
)

;;;;; Few Example Sentences
;The country recently became independent.
;She has an independent income.
;Another laboratory has provided independent confirmation of the test results.
;She is a very independent person.
;She has an independent mind.
;They lead an independent life.
