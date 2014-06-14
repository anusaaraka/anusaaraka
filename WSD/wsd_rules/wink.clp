;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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




;@@@ Added by Pramila(BU) on 18-03-2014
;'Don't tell them', he said this with a wink.  ;shiksharthi
;उन्हें मत बताना, यह उसने आँख के इशारे से कहा.
(defrule wink1
(declare (salience 5000))
(id-root ?id wink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AzKa_kA_iSArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wink.clp 	wink1   "  ?id "  AzKa_kA_iSArA )" crlf)
))

;@@@ Added by Pramila(BU) on 18-03-2014
;The teacher winked at me to keep quiet.  ;shiksharthi
;अध्यापक ने शान्त रहने के लिए मेरी ओर इशारा किया.
(defrule wink2
(declare (salience 5000))
(id-root ?id wink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?id2)
(kriyA-kriyArWa_kriyA  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSArA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wink.clp 	wink2   "  ?id "  iSArA_kara )" crlf)
))


;@@@ Added by Pramila(BU) on 18-03-2014
;The officer winked at his weakness.  ;shiksharthi
;अधिकारी ने उसकी कमजोरी अनदेखी कर दी.
(defrule wink3
(declare (salience 4900))
(id-root ?id wink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-at_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anaxeKI_kara_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wink.clp 	wink3   "  ?id "  anaxeKI_kara_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  wink.clp 	wink3   "  ?id " ne )" crlf)))

;@@@ Added by Pramila(BU) on 18-03-2014
;You can see lights winking.   ;shiksharthi
;तुम बत्तियों को टिमटिमाते हुए देख सकते हो.
(defrule wink4
(declare (salience 5000))
(id-word ?id winking)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id timatimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wink.clp 	wink4   "  ?id "  timatimA )" crlf)
))

;----------------------default rules--------------------------------

;@@@ Added by Pramila(BU) on 18-03-2014
;The doctor asked me to wink my eyes.  ;shiksharthi
;डॉक्टर ने मुझे मेरी आँखे झपकाने के लिए कहा.
(defrule wink5
(declare (salience 100))
(id-root ?id wink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JapakAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wink.clp 	wink5   "  ?id "  JapakAnA )" crlf)
))


;@@@ Added by Pramila(BU) on 18-03-2014
;I didn't sleep a wink.  ;shiksharthi
;मैं एक झपकी भी नहीं सोया.
(defrule wink6
(declare (salience 100))
(id-root ?id wink)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JapakI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wink.clp 	wink6   "  ?id "  JapakI )" crlf)
))

