;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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
;@@@ Added by Pramila(BU) on 22-01-2014
;If they contradict it, they are discarded as entirely false.  ;coca corpus
;यदि वे इसका विरोध करते हैं तो वे पूर्णतया विश्वासघाती की तरह निकाल दिए जाएँगे.
(defrule discard0
(declare (salience 4800))
(id-root ?id discard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discard.clp 	discard0   "  ?id "  nikAla_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 22-01-2014
;She could now discard all thought of promotion.  ;oald
;वह अब पदोन्नति के सभी विचारों को छोड़ सकती है.
(defrule discard1
(declare (salience 4800))
(id-root ?id discard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-aXikaraNavAcI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discard.clp 	discard1   "  ?id "  CodZa )" crlf))
)

;@@@ Added by Pramila(BU) on 22-01-2014
;It is obvious that a course of training of this description, if it is rightly pursued, and if unintelligent memory work is discarded, 
;is bound to develop the intelligence and to qualify the student for admission to a course of University studies.       ;gyannidhi
;स्पष्ट है कि ठीक ढंग से लागू किये जाने और रटने की मूर्खतापूर्ण आदत को त्याग देने से इस प्रकार के प्रशिक्षण पाठ्यक्रम से हर हालत में बुद्धि का विकास होगा और विद्यार्थी विश्वविद्यालय शिक्षा में प्रवेश के 
;योग्य बनाया जा सकेगा।
(defrule discard2
(declare (salience 4800))
(id-root ?id discard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(conjunction-components  ?id2 $? ?id $?)
(kriyA-karma  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wyAga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discard.clp 	discard2   "  ?id "  wyAga_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 22-01-2014
;Discarded food containers and bottles littered the streets.       ;cald
;फेंक दिए गए खाद्य कंटेनर और बोतलों ने सड़कों को गंदा कर दिया.
(defrule discard3
(declare (salience 4800))
(id-word ?id discarded)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discard.clp 	discard3   "  ?id "  PeMka_xe )" crlf))
)

;@@@ Added by Pramila(BU) on 22-01-2014
;He had discarded his jacket because of the heat.     ;oald
;उसने गर्मी के कारण अपनी जैकिट उतार दी.
(defrule discard4
(declare (salience 4500))
(id-root ?id discard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discard.clp 	discard4   "  ?id "  uwAra_xe )" crlf))
)

;---------------------------------------------default rules-------------------------------------------------------------
;@@@ Added by Pramila(BU) on 22-01-2014
;Remove and discard tea bags.       ;coca
;चाय के थैलों को हटा दीजिए और फेंक दीजिए.
(defrule discard5
(declare (salience 4000))
(id-root ?id discard)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discard.clp 	discard5   "  ?id "  PeMka_xe)" crlf))
)

;@@@ Added by Pramila(BU) on 22-01-2014
(defrule discard6
(declare (salience 0))
(id-root ?id discard)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  discard.clp 	discard6   "  ?id "  PeMka_xe)" crlf))
)


