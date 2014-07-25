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



;@@@ Added by Pramila(BU) on 24-02-2014
;They may have to widen the road to cope with the increase in traffic.  ;oald
;उन्हें यातायात में वृद्धि से निपटने के लिए सड़क को चौड़ा करना पड़ सकता है.
;[VT]
(defrule widen1
(declare (salience 4900))
(id-root ?id widen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-object  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOdZA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  widen.clp 	widen1   "  ?id "  cOdZA_kara )" crlf)
))

;@@@ Added by Pramila(BU) on 24-02-2014
;Research had received a great stimulus at his hands and teachers and students in the postgraduate departments were engaged in widening
; the bounds of knowledge.   ;gyannidhi
;शोध को उनके हाथों बहुत प्रोत्साहन मिला और स्नातकोत्तर विभागों में अध्यापक और छात्र ज्ञान की सीमाओं के विस्तार करने में लगे हुए थे।।
(defrule widen2
(declare (salience 5000))
(id-root ?id widen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root ?id2 knowledge|course)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  widen.clp 	widen2   "  ?id "  viswAra_kara )" crlf)
))

;@@@ Added by Pramila(BU) on 24-02-2014
;The legislation will be widened to include all firearms.   ;oald
;कानून सभी आग्नेयास्त्रों को शामिल करने के लिए बढ़ाए जाएँगे.
(defrule widen3
(declare (salience 5000))
(id-root ?id widen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(id-root ?id1 include)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  widen.clp 	widen3   "  ?id "  baDZA )" crlf)
))

;@@@ Added by Pramila(BU) on 24-02-2014
;Why not widen the discussion to include the Muslim and Jewish points of view?   ;cald
;मुस्लिम और यहूदी विचारों को शामिल करने के लिए चर्चा को बढ़ाते क्यों नहीं?
(defrule widen4
(declare (salience 5000))
(id-root ?id widen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(saMjFA-to_kqxanwa  ?id2 ?id1)
(id-root ?id1 include)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  widen.clp 	widen4   "  ?id "  baDZA )" crlf)
))

;------------------------default rules---------------------
;@@@ Added by Pramila(BU) on 24-02-2014
;Her eyes widened in surprise.  ;oald
;उसकी आँखे आश्चर्य से चौड़ी हो गई.
;Here the stream widens into a river.  ;oald
;यहाँ धारा नदी में चौड़ी हो जाती है.
(defrule widen5
(declare (salience 100))
(id-root ?id widen)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cOdZA_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  widen.clp 	widen5   "  ?id "  cOdZA_ho_jA )" crlf)
))

