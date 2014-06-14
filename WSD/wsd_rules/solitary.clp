;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;############################################################
;@@@ Added by jagriti(24.1.2014)
;You can not give a solitary example. 
;आप एक भी उदाहरण नहीं दे सकते.
(defrule solitary0
(declare (salience 5000))
(id-root ?id solitary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id2 ?id)
(kriyA-object ?id1 ?id2)
(kriyA-kriyA_niReXaka ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id eka_BI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solitary.clp 	solitary0   "  ?id "  eka_BI )" crlf))
)

;@@@ Added by jagriti(24.1.2014)
;Tigers are solitary animals.
;बाघ एकान्तवासी जानवर हैं.
(defrule solitary1
(declare (salience 4900))
(id-root ?id solitary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(subject-subject_samAnAXikaraNa ? ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekAnwavAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solitary.clp 	solitary1   "  ?id "  ekAnwavAsI )" crlf))
)

;@@@ Added by jagriti(24.1.2014)
;A solitary place. 
;एक एकान्त जगह.
(defrule solitary2
(declare (salience 4800))
(id-root ?id solitary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 place|valley|farm|island)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solitary.clp 	solitary2   "  ?id "  ekAnwa )" crlf))
)

;@@@ Added by jagriti(24.1.2014)
; He led a solitary life.
;उन्होंने अकेले जीवन का नेतृत्व किया. 
(defrule solitary3
(declare (salience 100))
(id-root ?id solitary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id akelA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solitary.clp 	solitary3   "  ?id "  akelA )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_solitary2
(declare (salience 4800))
(id-root ?id solitary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 place|valley|farm|island)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " solitary.clp   sub_samA_solitary2   "   ?id " ekAnwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_solitary2
(declare (salience 4800))
(id-root ?id solitary)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 place|valley|farm|island)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ekAnwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " solitary.clp   obj_samA_solitary2   "   ?id " ekAnwa )" crlf))
)
