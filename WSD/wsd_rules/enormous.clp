;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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


;An enormous amount was spent on the construction of the dam.--------------hinkhoj
;बाँध के निर्माण में बहुत बडी धनराशि खर्च की गई.
;bAzXa ke nirmANa meM bahuwa badI XanarASi Karca kI gaI.

;You've been an enormous help.--------------cambridge
;तुम बहुत बडे सहायक रहे.
;wuma bahuwa bade sahAyaka rahe.

;At the macroscopic level, one deals with charges that are enormous compared to the magnitude of charge e. [NCERT]
;स्थूल स्तर पर हम ऐसे आवेशों से व्यवहार करते हैं जो इलेक्ट्रॉन e के आवेश की तुलना में परिमाण में बहुत बडे होते हैं .
;sWUla swara para hama Ese AveSoM se vyavahAra karawe hEM jo ilektroYna e ke AveSa kI wulanA meM parimANa meM bahuwa bade howe hEM .
(defrule enormous0
(declare (salience 5000))
(id-root ?id enormous)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa  ?id1 ?id)(viSeRya-compared_to_saMbanXI  ?id ?id1))
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_badA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enormous.clp 	enormous0   "  ?id " bahuwa_badA  )" crlf))
)

;He put an enormous amount of time into the study.[coca]
;वह अध्ययन में बहुत अधिक समय लगाती है.
;vaha aXyayana meM bahuwa aXika samaya lagAwI hE.
(defrule enormous1
(declare (salience 5000))
(id-root ?id enormous)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-word ?id2 time)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enormous.clp 	enormous1   "  ?id " bahuwa_aXika  )" crlf))
)

;Women have not been willing to make enormous time for these works.[coca]
;महिलाएँ इन कार्यों के लिए बहुत अधिक समय निकालने की इच्छुक नहीं है.
;mahilAez ina kAryoM ke lie bahuwa aXika samaya nikAlane kI icCuka nahIM hE.
(defrule enormous2
(declare (salience 5000))
(id-root ?id enormous)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 time)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enormous.clp 	enormous2   "  ?id " bahuwa_aXika  )" crlf))
)

;First, that it travels with enormous speed and second, that it travels in a straight line.
;pahalI, yaha awyaXika wIvra cAla se gamana karawA hE waWA, xUsarI, yaha sarala reKA meM gamana karawA hE.

(defrule enormous3
(declare (salience 5000))
(id-root ?id enormous)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-with_saMbanXI  ?id2 ?id1)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awyaXika_wIvra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enormous.clp 	enormous3   "  ?id " awyaXika_wIvra  )" crlf))
)

;----------------------------------- Default rules ------------------------------------------------------
(defrule enormous4
(declare (salience 4000))
(id-root ?id enormous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_badA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enormous.clp 	enormous4   "  ?id " bahuwa_badA  )" crlf))
)


(defrule enormous5
(declare (salience 3000))
(id-root ?id enormous)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enormous.clp 	enormous5   "  ?id " viSAla  )" crlf))
)

;@@@ Added by Sukhada (12-05-14)
(defrule sub_samA_enormous2
(declare (salience 5000))
(id-root ?id enormous)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 time)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sub_samA_enormous2" ?id " bahuwa_aXika )" crlf))
)

;@@@ Added by Sukhada (12-05-14)
(defrule obj_samA_enormous2
(declare (salience 5000))
(id-root ?id enormous)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 time)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " obj_samA_enormous2" ?id " bahuwa_aXika )" crlf))
)
