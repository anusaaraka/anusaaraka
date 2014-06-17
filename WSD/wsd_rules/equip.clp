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
;@@@ Added by Pramila(BU) on 02-04-2014
;It was the decision of the house that departmental representatives were attending the meeting just to complete the quorum and were not equipped with complete information.  ;news-dev corpus
;सदन का फैसला था कि विभागीय प्रतिनिधि सिर्फ कोरम पूरा करने के लिए बैठक में आते हैं उन्हें पूरी जानकारी नहीं दी जाती थी। 
(defrule equip0
(declare (salience 4800))
(id-root ?id equip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
(id-root ?id1 information)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " equip.clp 	equip0   "  ?id " xe )" crlf))
)

;@@@ Added by Pramila(BU) on 02-04-2014
;The course is designed to equip students for a career in nursing.   ;oald
;पाठ्यक्रम नर्सिंग में एक कैरियर के लिए छात्रों को तैयार करने के लिए डिज़ाइन किया गया है.
(defrule equip1
(declare (salience 4800))
(id-root ?id equip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?kri ?id)
(kriyA-for_saMbanXI  ?id ?id1)
(kriyA-object  ?id ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wEyAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " equip.clp 	equip1   "  ?id " wEyAra_kara )" crlf))
)

;--------------default rules--------------------
;@@@ Added by Pramila(BU) on 02-04-2014
;The centre is well equipped for canoeing and mountaineering.   ;oald
;केंद्र अच्छी तरह से कैनोइंग और पर्वतारोहण के लिए सुसज्जित किया गया है.
(defrule equip2
(declare (salience 100))
(id-root ?id equip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id susajjiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " equip.clp 	equip2   "  ?id " susajjiwa_kara )" crlf))
)


;@@@ Added by Pramila(BU) on 02-04-2014
(defrule equip3
(declare (salience 0))
(id-root ?id equip)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id susajjiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " equip.clp 	equip3   "  ?id " susajjiwa_kara )" crlf))
)

