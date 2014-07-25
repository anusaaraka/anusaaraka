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
;@@@ Added by jagriti(14.3.2014)
;The peon shrugged off all instructions and was dismissed from his service.[rajapal]
;चपरासी ने सभी निर्देशों की उपेक्षा की और उसे सेवा से निकाल दिया गया .
(defrule shrug0
(declare (salience 5000))
(id-root ?id shrug)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 off)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 upekRA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " shrug.clp	shrug0  "  ?id "  " ?id1 "  upekRA_kara  )" crlf))
)
;@@@ Added by jagriti(14.3.2014)
;You can wear a shrug to keep your shoulders warm.[oald]
;आप अपने कन्धे गर्म रखने के लिये श्रग पहन सकते हैं . 
(defrule shrug3
(declare (salience 4900))
(id-root ?id shrug)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 wear)
(kriyA-object ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Sraga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shrug.clp 	shrug3   "  ?id "  Sraga)" crlf))
)
;..Default Rule...
;@@@ Added by jagriti(14.3.2014)
;He shrugged  and said,"what can I do?"?[rajpal]
;उसने  कन्धे उचकाए और कहा, कि "मैं क्या कर सकता हूँ?" 
(defrule shrug1
(declare (salience 100))
(id-root ?id shrug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaMXe_ucakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shrug.clp 	shrug1   "  ?id "  kaMXe_ucakA )" crlf))
)
;@@@ Added by jagriti(14.3.2014)
;Andy gave a shrug and said, 'It doesn't matter'. [oald]
;एँडी ने स्कन्ध कम्पन दिया कि और कहा, कि 'यह महत्वपूर्ण नहीं होता है'.
(defrule shrug2
(declare (salience 100))
(id-root ?id shrug)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id skaMXa_kaMpana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  shrug.clp 	shrug2   "  ?id "  skaMXa_kaMpana)" crlf))
)

