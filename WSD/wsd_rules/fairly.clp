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

;It became clear that a fairly radical departure from the established principles of classical mechanics and electromagnetism would be needed to understand the structure of atoms and the relation of atomic structure to atomic spectra. 
;यह स्पष्ट हो गया कि परमाणु - संरचना और इसका परमाण्वीय स्पेक्ट्रम से सम्बन्ध समझने के लिए क्लासिकी यान्त्रिकी और वैद्युतचुम्बकत्व के स्थापित सिद्धान्तों से काफी हद तक आमूल विचलन की 
;आवश्यकता होगी. 


(defrule fairly0
(declare (salience 4900))
(id-root ?id fairly)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id1 ?id)
(viSeRya-viSeRaNa  ?id2 ?id1)
(viSeRya-from_saMbanXI  ?id2 ?id3)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI_haxa_waka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fairly.clp 	fairly0   "  ?id " kAPI_haxa_waka )" crlf))
)



;He has always treated me very fairly.	;OALD
;उसने हमेशा मेरे साथ बहुत उचित व्यवहार किया.
(defrule fairly1
(declare (salience 5000))
(id-root ?id fairly)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kqxanwa_karma  ?id1 ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fairly.clp 	fairly1   "  ?id "  uciwa )" crlf))
)




;-----------------------------------------------default rules------------------------------------------------------------------------------

;I go jogging fairly regularly.	;OALD
;मैं  जॉगिंग के लिए काफी नियमित रूप से जाता हूँ.
;I know him fairly well, but I wouldn't say we were really close friends.	;OALD
;मैं उसे काफी अच्छे से जानता हूँ  परन्तु मैं नहीं कहूँगा कि हम वास्तव में घनिष्ठ मित्र थे.
;This a fairly easy book.	;OALD
;यह एक काफी आसान पुस्तक है.
;It was a fairly typical reaction.	;OALD
;यह काफी प्रारूपिक प्रतिक्रिया थी.
;I'm fairly certain I can do the job.	;OALD
;मैं काफी निश्चित हूँ कि मैं नौकरी कर सकता हूँ.
;The report was fairly incomprehensible.	;OALD
;रिपोर्ट काफी समझ से बाहर थी.
;I think you'll find it fairly difficult (= you do not want to say that it is very difficult).		;OALD
;मैं मानता हूँ  तुम्हें यह काफी कठिन लगेगी
;Her attitude could fairly be described as hostile.	;OALD
;उसका रवैया काफी प्रतिकूल कहा जा सकता है.

(defrule fairly2
(declare (salience 4000))
(id-root ?id fairly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAPI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fairly.clp 	fairly4   "  ?id " kAPI )" crlf))
)


(defrule fairly3
(declare (salience 3000))
(id-root ?id fairly)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uciwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fairly.clp 	fairly5   "  ?id "  uciwa)" crlf))
)
