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

;She's always dragging sex into the conversation.        ;cald
;वह बातचीत के बीच हमेशा सैक्स कीं बात घसीटती रहती है 
(defrule drag0
(declare (salience 5000))
(id-root ?id drag)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GasIta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drag.clp 	drag0   "  ?id "  GasIta )" crlf))
)

;I really had to drag myself out of bed this morning.     ;cald
;आज सुबह अपने- आपको मुझे जबरदस्ती बिस्तर से उठाना पड़ा .
(defrule drag1
(declare (salience 5000))
(id-root ?id drag)
?mng <-(meaning_to_be_decided ?id)
(kriyA-of_saMbanXI  ?id ?id1)
(id-root ?id1 bed)
(kriyA-object  ?id ?id2)
(id-root ?id2 myself|herself|himself|yourselves|ourselves|themselves)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drag.clp 	drag0   "  ?id "  uTA )" crlf))
)

;Taking a deep drag of his cigarette he closed his eyes and sighed.            ;cald
;सिगरेट का लंबा कश लेते हुए उसने अपनी आँखे बंद करके गहरी सांस ली .
(defrule drag2
(declare (salience 5000))
(id-root ?id drag)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id ?id2)(and(kriyA-object  ?id1 ?id)(kriyA-on_saMbanXI  ?id1 ?id2)))
(id-root ?id2 cigarette)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drag.clp 	drag2   "  ?id "  kaSa )" crlf))
)

;A man in drag.                     ;cald
;पुरुष स्त्री कीं पोशाक में .
(defrule drag3
(declare (salience 5000))
(id-root ?id drag)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id swrI_kI_poSAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drag.clp 	drag3   "  ?id " swrI_kI_poSAka  )" crlf))
)


;A woman in drag.         ;cald
;स्त्री पुरुष कीं पोशाक में .
(defrule drag4
(declare (salience 5000))
(id-root ?id drag)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-in_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id purURa_kI_poSAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drag.clp 	drag4   "  ?id "  purURa_kI_poSAka )" crlf))
)

;I'm ready to go home now but I don't want to drag you away if you're enjoying yourself.
;मै अब घर जाने वाला हूँ लेकिन अगर तुम्हें मजा आ रहा है तो मै तुम्हें आने के लिए  नहीं कहूँगा. 
(defrule drag5
(declare (salience 5000))
(id-root ?id drag)
?mng <-(meaning_to_be_decided ?id)
(kriyA-samakAlika_kriyA  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drag.clp 	drag5   "  ?id "  le_jA )" crlf))
)

;I'll bring Tom, if I can drag him away from the football.            ;cald
;अगर मै फुटबॉल से टॉम को निकाल सका तो उसे ले आऊंगा .
(defrule drag6
(declare (salience 5000))
(id-root ?id drag)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drag.clp 	drag6   "  ?id "  nikAla )" crlf))
)
;-------------------default rules---------------------------------------------------------------------
;She dragged the canoe down to the water.        ;cald
;उसने डोंगी को पानी के अंदर खीचा.
;She had to drag her child away from the toy shop.           ;cald
;खिलौनों कीं दुकान से दूर उसे अपने बच्चे को खीचना पड़ा. 
(defrule drag7
(declare (salience 4000))
(id-root ?id drag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drag.clp 	drag7   "  ?id " KIMca  )" crlf))
)


;She didn't want a husband who would be a drag on her career.        ;cald
;उसे ऐसा पति नही चाहिए जो उसके पेशे में उसे आगे बढ़ने में रुकावट डाले .
(defrule drag8
(declare (salience 4000))
(id-root ?id drag)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rUkAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drag.clp 	drag8  "  ?id "  rUkAvata )" crlf))
)

(defrule drag9
(declare (salience 0))
(id-root ?id drag)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KIMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  drag.clp 	drag9   "  ?id " KIMca  )" crlf))
)

