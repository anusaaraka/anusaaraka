
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

;I cannot explain his strange behavior.   ;freedictionary
;मैं उनके अजीब व्यवहार का कारण नहीं बता सकता .
;I cannot explain his failure.             ;freedictionary
;मैं उसकी विफलता का कारण नहीं बता सकता.

(defrule explain0
(declare (salience 4950))
(id-root ?id explain)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 not|never)
(kriyA-kriyA_niReXaka  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_kAraNa_bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  explain.clp 	explain0   "  ?id " kA_kAraNa_bawA  )" crlf))
)

;Can you explain why you didn't telephone me?    ;freedictionary
;क्या आप बता सकते हैं तुमने मुझे फोन क्यों नहीं किया ?
;Did she explain why she was late?
;क्या उसने बताया कि वह देर से क्यों आई थी?
;He explained how the machine worked.          ;cald
;उसने समझाया कि मशीन किस तरह काम करती है.
;Please could you explain wh y you're so late.              ;cald
;क्या तुम मुझे बताओगे कि तुम्हें देरी क्यों हुई .?
;She explained that she was going to stay with her sister.  ;cald
 ;उसने बताया कि वह अपनी बहन के पास रहने जा रही थी .
;Molly asked the teacher if she could explain herself a bit more clearly .          ;cald
;मौली ने अध्यापक से पूछा की क्या वह जो कहना चाहती है उसे और स्पष्ट रूप से बता सकती है .
(defrule explain1
(declare (salience 5000))
(id-root ?id explain)
?mng <-(meaning_to_be_decided ?id)
(or(id-word =(+ ?id 1) why|where|how)(and(kriyA-vAkyakarma  ?id ?id1)(kriyA-vAkya_viBakwi  ?id1 ?id2)(id-word ?id2 that))(kriyA-samakAlika_kriyA  ?id1 ?id))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  explain.clp 	explain1   "  ?id " bawA  )" crlf))
)


;What then explains the attractive force ?             ;physics
;fira AkarRaNa bala kA spaRtIkaraNa kYA hogA ?
(defrule explain2
(declare (salience 5000))
(id-root ?id explain)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-word ?id1 what)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_spaRtIkaraNa_kyA_hogA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  explain.clp 	explain2   "  ?id " kA_spaRtIkaraNa_kyA_hogA  )" crlf))
)



;-------------------------------------------default--------------------------------------------------


;He explained the laws of physics to his students.   ;freedictionary
;वह अपने छात्रों को भौतिक विज्ञान के नियमों को समझाया.
;Let me explain.    ;oald
;मैं समझाता हूँ.
;Can you explain the railway timetable to me?   ;freedictionary
;क्या तुम मुझे रेलवे समय सारिणी समझा सकते हो?

(defrule explain3
(declare (salience 4000))
(id-root ?id explain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  explain.clp 	explain3   "  ?id " samaJA  )" crlf))
)


(defrule explain4
(declare (salience 3000))
(id-root ?id explain)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  explain.clp 	explain4   "  ?id " samaJA  )" crlf))
)
