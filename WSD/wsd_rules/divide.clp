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
;@@@ Added by Pramila(BU) 
;It has the dimensions given by the dimensions of flux divided by the dimensions of current.   ;physics
;इसकी विमा प्रवाह की विमा को धारा की विमा के द्वारा भाग देने से दी गई है. 
;isakI vimA pravAha kI vimA ko XArA kI vimA ke xvArA BAga xene se xI gaI hE.


(defrule divide0
(declare (salience 5000))
(id-root ?id divide)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divide.clp 	divide0   "  ?id "  BAga_xe )" crlf))
)

;@@@ Added by Pramila(BU) 
;Divide it into two parts.
;इसे दो भागो में बाँट दीजिए.
;ise xo BAgo meM bAzta xIjie.

;I think we should divide (up) the costs equally among/between us.           ;cald
;मेरे विचार से हम सबको बराबर से खर्चे को बाँट देना चाहिए .
(defrule divide1
(declare (salience 5000))
(id-root ?id divide)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-into_saMbanXI  ?id ?id1)(kriyA-between_saMbanXI  ?id ?id1)(kriyA-among_saMbanXI  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzta_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divide.clp 	divide1   "  ?id "  bAzta_xe )" crlf))
)

;@@@ Added by Pramila(BU) 
;There's a narrow alley which divides our house from the one next door.                 ;cald
;एक बहुत ही सकरी गली हमारे घर को दूसरे घर से अलग करती है 
(defrule divide2
(declare (salience 5000))
(id-root ?id divide)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divide.clp 	divide2   "  ?id "  alaga_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 07-03-2014
; When two quantities are multiplied or divided the relative error in the result is the sum of the relative errors in the multipliers.  ;ncert
;अतः, नियम यह है: जब दो राशियों को गुणा या भाग किया जाता है तो प्राप्त परिणाम में आपेक्षिक त्रुटि, उन गुणकों अथवा भाजकों में आपेक्षिक त्रुटियों का योग होती हैं..
;Modified by Pramila(BU) on 13-03-2014  [added "add and subtract" in the list and meaning changed from 'BAga_xe' to 'BAga_kara' ]
;Scalars can be added subtracted multiplied and divided just as the ordinary numbers.   ;ncert
;अदिशों को हम ठीक वैसे ही जोड सकते हैं, घटा सकते हैं, गुणा या भाग कर सकते हैं जैसा कि हम सामान्य सङ्ख्याओं के साथ करते हैं . ..
(defrule divide3
(declare (salience 5000))
(id-root ?id divide)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(conjunction-components  ?id2 ?id1 ?id)
(id-root ?id1 multiply|subtract)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divide.clp 	divide3   "  ?id "  BAga_kara )" crlf))
)
;------------------------------------------------------default rules------------------------------------------------------------------------
;@@@ Added by Pramila(BU)
;At the end of the lecture, I'd like all the students to divide into small discussion groups.   ;cald
;भाषण के अंत में ,मैं सब छात्रों को आपस में चर्चा करने के लिए छोटे दल में बाँटना चाहूँगा . 
(defrule divide4
(declare (salience 4000))
(id-root ?id divide)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divide.clp 	divide4   "  ?id "  bAzta )" crlf))
)


;@@@ Added by Pramila(BU) 
(defrule divide5
(declare (salience 3000))
(id-root ?id divide)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  divide.clp 	divide5   "  ?id " bAzta  )" crlf))
)
