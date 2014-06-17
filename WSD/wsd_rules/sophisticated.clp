;########################################################################

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
;
;########################################################################

;Sophisticated telescopes have revealed jet-like structures emerging from the core towards the outer blobs.[gyanidhi-corpus]
;आधुनिक दूरबीनों से जेट जैसी रचनाएं देखी गयी हैं, जो क्रोड़ से निकलकर बाहर गोलों की तरफ जाती हैं।
(defrule sophisticated0
(declare (salience 5000))
(id-root ?id sophisticated)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(viSeRya-viSeRaNa  ?id1 ?id)(subject-subject_samAnAXikaraNa  ?id1 ?id))
(id-root ?id1 telescope|technique|system)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id AXunika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* " sophisticated.clp  	sophisticated0   "  ?id "   AXunika )" crlf))
)
;Mark is a smart and sophisticated young man.[oald]
;मार्क एक स्मार्ट और विवेकी युवक है.
(defrule sophisticated1
(declare (salience 4900))
(id-root ?id sophisticated)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id vivekI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* " sophisticated.clp  	sophisticated1   "  ?id "   vivekI )" crlf))
)

