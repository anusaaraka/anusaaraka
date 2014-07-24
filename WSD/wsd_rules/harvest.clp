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
;She has harvested the rewards/fruits of her labors.[m-w]
;उसे उसके श्रम का पारितोषिक मिला/प्राप्त हुआ है . 
(defrule harvest1
(declare (salience 5500))
(id-root ?id harvest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 reward|fruit)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prApwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harvest.clp 	harvest1   "  ?id "  prApwa_ho )" crlf))
)

;@@@ Added by Prachi Rathore
;They prayed for a bountiful harvest.[m-w]
;उन्होंने एक प्रचुर पैदावार के लिये प्रार्थना की . 
(defrule harvest2
(declare (salience 5500))
(id-root ?id harvest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-for_saMbanXI  ? ?id)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExAvAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harvest.clp 	harvest2   "  ?id "  pExAvAra )" crlf))
)

;@@@ Added by Prachi Rathore
; The beginning of the harvest varies from year to year.[m-w]
;फसल काटने के समय का आरम्भ - वर्षानुवर्ष परिवर्तित होता है . 
(defrule harvest3
(declare (salience 5000))
(id-root ?id harvest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ? ?id)(kriyA-for_saMbanXI  ? ?id)(viSeRya-during_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pasala_kAtane_kA_samaya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harvest.clp 	harvest3   "  ?id "  Pasala_kAtane_kA_samaya )" crlf))
)

;@@@ Added by Prachi Rathore
;It is time to harvest the wheat.[m-w]
;गेहूँ की फसल काटने का  समय  है . 
(defrule harvest4
(declare (salience 5500))
(id-root ?id harvest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ?id1 ?id)(kriyA-for_saMbanXI  ?id1 ?id)(viSeRya-during_saMbanXI  ?id1 ?id)(viSeRya-to_saMbanXI  ?id1 ?id))
(id-root ?id1 time)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pasala_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harvest.clp 	harvest4   "  ?id "  Pasala_kAta )" crlf))
)

;@@@ Added by Prachi Rathore
;She had to plough the[ field], manure and water [the] land, sow seeds and ultimately [harvest] the crop.[gyannidhi]
;वह खेत जोतती है, खाद डालती है और  भूमि सींचती हैं, बीज रोपती है और अन्त में पैदावार काटती है . 
(defrule harvest5
(declare (salience 5000))
(id-root ?id harvest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 crop)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harvest.clp 	harvest5   "  ?id "  kAta )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore
;
(defrule harvest6
(declare (salience 4000))
(id-root ?id harvest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pasala_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harvest.clp 	harvest6   "  ?id "  Pasala_kAta )" crlf))
)

;@@@ Added by Prachi Rathore
;The good harvest.[oald]
;एक अच्छी ऊपज . 
(defrule harvest7
(declare (salience 4000))
(id-root ?id harvest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Upaja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  harvest.clp 	harvest7  "  ?id "  Upaja )" crlf))
)
