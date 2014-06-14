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


;@@@ Added by Pramila(BU) on 03-02-2014
; In September 1917 it was announced by the Government of India that the Governor General in Council has decided to appoint a Commission 
;to enquire into the conditions and prospects of the University of Calcutta and to consider the question of a constructive policy in 
;relation to the questions which it presents.        ;gyannidhi
;सितम्बर, 1917 में भारत सरकार द्वारा यह घोषणा की गई कि, परिषद् में अपने ओहदे के नाते गवर्नर जनरल के कलकत्ता विश्वविद्यालय की दशा और भविष्य की जांच करने के लिए और उसके द्वारा 
;प्रस्तुत समस्याओं के संदर्भ में रचनात्मक जिति के विषय में विचार करने के लिए एक आयोग नियुक्त करने का फैसला किया है।
(defrule enquire0
(declare (salience 4950))
(id-root ?id enquire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI  ?id ?id1)
(id-word =(+ ?id 1) into)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) kI_jAzca_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " enquire.clp	enquire0  "  ?id "  " (+ ?id 1) "  kI_jAzca_kara  )" crlf))
)


;@@@ Added by Pramila(BU) on 03-02-2014
;I called the station to enquire about train times.   ;oald
;मैंने ट्रेन के समय के बारे में पूछताछ करने के लिए स्टेशन पर फोन लगाया. 
(defrule enquire1
(declare (salience 4950))
(id-root ?id enquire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-about_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa_wACa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enquire.clp 	enquire1   "  ?id "  pUCa_wACa_kara )" crlf)
)
)
;-----------------------default rules---------------------------------
;@@@ Added by Pramila(BU) on 03-02-2014
;He enquired her name.  ;oald
;उसने उसका नाम पूछा.
;She enquired as to your whereabouts.  ;oald
;उसने तुम्हारे ठौर-ठिकाने के बारे में पूछा.
(defrule enquire2
(declare (salience 4000))
(id-root ?id enquire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enquire.clp 	enquire2   "  ?id "  pUCa )" crlf)
)
)

;@@@ Added by Pramila(BU) on 03-02-2014
;He enquired her name.  ;oald
;उसने उसका नाम पूछा.
(defrule enquire3
(declare (salience 0))
(id-root ?id enquire)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUCa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enquire.clp 	enquire3   "  ?id "  pUCa )" crlf)
)
)
