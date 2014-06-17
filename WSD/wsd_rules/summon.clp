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
;################################################################

;@@@ Added by jagriti(16.1.2014)
;He was summoned to appear before the magistrates. [oald]
;उसको मैजिस्ट्रेट के सामने पेश होने के लिए सम्मन दिया गया था .
(defrule summon0
(declare (salience 5000))
(id-root ?id summon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA ?id ?id2)
(to-infinitive ?id1 ?id2)
(id-root ?id2 appear)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammana_xe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  summon.clp 	summon0 "  ?id " sammana_xe )" crlf))
)

;@@@ Added by jagriti(16.1.2014)
;She was trying to summon up the courage to leave him.[oald]
;वह उसको छोड कर जाने के लिये साहस इकट्ठा करने का प्रयास कर रही थी .
(defrule summon1
(declare (salience 4900))
(id-root ?id summon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ikatTA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " summon.clp summon1  "  ?id "  " ?id1 "  ikatTA_kara  )" crlf))
)

;...........Default Rule...
;@@@ Added by jagriti(16.1.2014)
;She summoned the waiter.[oald]
;उसने वेटर को बुलाया . 
(defrule summon2
(declare (salience 100))
(id-root ?id summon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bulA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  summon.clp 	summon2 "  ?id " bulA )" crlf))
)
