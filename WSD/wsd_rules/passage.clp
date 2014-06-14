;##############################################################################
;#  Copyright (C) 2002-2005 Sonam Gupta (sonam27virgo@gmail.com)
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



;I continued to dictate the passage . [COCA]
;मैने अनुच्छेद लिखवाना जारी रखा.
(defrule passage1
(declare (salience 9000))
(id-root ?id passage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id2 verb|noun)
(or(id-root ?id2 read|study|write|answer|dictate|print|newspaper)(id-word ?id2 book))
(or(kriyA-object  ?id2 ?id)(viSeRya-from_saMbanXI  ?id ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anucCexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  passage.clp 	passage1  "  ?id "  anucCexa )" crlf))
)




;Large trees may obstruct the passage of light. [OALD]
;बडे पेड प्रकाश का मार्ग रोक सकते है.

(defrule passage2
(declare (salience 8000))
(id-root ?id passage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun|verb)
(id-cat_coarse ?id1 verb|noun|adverb)
(id-cat_coarse ?id2 determiner|adjective|noun)
(or(and(kriyA-object  ?id1 ?id)(viSeRya-det_viSeRaNa  ?id ?id2))(and(viSeRya-between_saMbanXI  ?id ?id1)(viSeRya-det_viSeRaNa  ?id ?id2)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  passage.clp 	passage2   "  ?id "  mArga )" crlf))
)

;The passage of air into and out of the lungs. 
;हवा का फेफडों के अन्दर और बाहर से गुजरना . 
(defrule passage3
(declare (salience 7000))
(id-root ?id passage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 determiner)
(id-cat_coarse ?id2 noun)
(id-cat_coarse ?id3 noun)
(and(viSeRya-det_viSeRaNa  ?id ?id1)(viSeRya-of_saMbanXI  ?id ?id2)(viSeRya-of_saMbanXI  ?id ?id3))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gujaranA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  passage.clp 	passage3   "  ?id "  gujaranA)" crlf))
)



;If the law were passed, EU nationals would no longer enjoy free passage through member states. [OALD]
;यदि नियम पारित किए गये थे, तो युरोपीय सङ्घ राष्ट्रजन सदस्यों राज्यों में से अब स्वतंत्र गमन का आनन्द नहीं उठाएँगे . 
(defrule passage4
(declare (salience 6000))
(id-root ?id passage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 adjective|noun)
(id-cat_coarse ?id2 verb|noun)
(or(and(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-of_saMbanXI  ?id ?id1))(and(viSeRya-viSeRaNa  ?id ?id1)(kriyA-object  ?id2 ?id)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gamana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  passage.clp 	passage4   "  ?id "  gamana )" crlf))
)


;Special ships clear passages through the ice. 
;विशेष जहाज बर्फ मे से मार्ग बनाते है.
(defrule passage5
(declare (salience 5000))
(id-root ?id passage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun|determiner)
(id-cat_coarse ?id2 noun)
(id-cat_coarse ?id3 adverb|noun)
(and(kriyA-through_saMbanXI  ?id ?id1)(kriyA-subject  ?id ?id2)(kriyA-kriyA_viSeRaNa  ?id ?id3))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mArga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  passage.clp 	passage5   "  ?id "  mArga )" crlf))
)

;A secret underground passage. [OALD]
;एक गुप्त भूमिगत गलियारा.
(defrule passage6
(declare (salience 4000))
(id-root ?id passage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 adjective|noun)
(or(viSeRya-viSeRaNa  ?id ?id1)(viSeRya-of_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galiyArA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  passage.clp 	passage6   "  ?id "  galiyArA )" crlf))
)

;He had booked his passage to Rio de Janeiro. [CAMBRIDGE ONLINE DICTIONARY]
;वह रियो दे जेनेरियो तक उसकी यात्रा बुक कर ली है.

;The passage from life to death. 
;जीवन से मृत्यु तक यात्रा. 
(defrule passage7
(declare (salience 3000))
(id-root ?id passage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 pronoun|determiner)
(id-cat_coarse ?id2 noun)
(id-cat_coarse ?id3 noun)
(or(viSeRya-RaRTI_viSeRaNa  ?id ?id1)(and(viSeRya-det_viSeRaNa ?id ?id1)(viSeRya-from_saMbanXI ?id ?id2)(viSeRya-to_saMbanXI ?id ?id3s)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yAwrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  passage.clp 	passage7   "  ?id "  yAwrA )" crlf))
)


;--------------------- Default rule ---------------
;I want to read a passage from the book.  [COCA]
;मै इस पुस्तक से एक अनुच्छेद पढना चाहता हू.
(defrule passage8
(id-root ?id passage)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anucCexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  passage.clp 	passage8  "  ?id "  anucCexa )" crlf))
)
