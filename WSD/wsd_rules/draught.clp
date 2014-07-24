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
;@@@ Added by Pramila(BU) on 16-01-2014
;Horses are used for draught.   ;shiksharthi
;घोड़े कर्षण के लिए प्रयोग किए जाते है.
(defrule draught0
(declare (salience 4800))
(id-root ?id draught)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-for_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karRaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draught.clp 	draught0   "  ?id "  karRaNa )" crlf))
)


;@@@ Added by Pramila(BU) on 16-01-2014
;There is a draught from that window.     ;shiksharthi
;उस खिड़की में से हवा आ रही है. 
;I was sitting in a draught.       ;oald
;मैं हवा में बैठा हुआ था.
;She shivered in the icy draught.   ;oald  
;वह बर्फीली हवा में कपकपाई.
(defrule draught1
(declare (salience 4800))
(id-root ?id draught)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-from_saMbanXI  ?id ?id1)(kriyA-in_saMbanXI  ?id1 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id havA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draught.clp 	draught1   "  ?id "  havA )" crlf))
)

;@@@ Added by Pramila(BU) on 16-01-2014
;They are playing draughts.            ;shiksharthi
;वे ड्राफ़्ट खेल रहे है.
(defrule draught2
(declare (salience 4800))
(id-root ?id draught)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 play)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id drAPZta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  draught.clp 	draught2   "  ?id "  drAPZta )" crlf))
)

;@@@ Added by Pramila(BU) on 16-01-2014
;A cold draught of air blew in from the open window.             ;oald
;खुली खिड़की से हवा का एक ठंडा झोंका आया.
(defrule draught3
(declare (salience 4800))
(id-root ?id draught)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 air)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JoMkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draught.clp 	draught3   "  ?id "  JoMkA )" crlf))
)

;@@@ Added by Pramila(BU) on 16-01-2014
;Is the lager on draught or is it bottled?         ;cald
;क्या बीयर पीपे में है या बोतलबंद है ?
(defrule draught4
(declare (salience 4800))
(id-root ?id draught)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse =(- ?id 1) preposition)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pIpA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draught.clp 	draught4   "  ?id "  pIpA )" crlf))
)

;@@@ Added by Pramila(BU) on 16-01-2014
;Alok drank the whole glass of water in a single draught.    ;shiksharthi
;आलोक गिलास का पूरा पानी एक घूँट में पी गया.
(defrule draught5
(declare (salience 5000))
(id-root ?id draught)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(viSeRya-viSeRaNa  ?id ?id2)
(id-root ?id2 single|one)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draught.clp 	draught5   "  ?id "  GUzta )" crlf))
)


;--------------------default rules-------------------
;@@@ Added by Pramila(BU) on 16-01-2014
;Alok drank the whole glass of water in a single draught.    ;shiksharthi
;आलोक गिलास का पूरा पानी एक घूँट में पी गया.
;He took a deep draught of his beer.      ;cald
;उसने बीयर की लम्बी घूँट ली.
(defrule draught6
(declare (salience 4000))
(id-root ?id draught)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draught.clp 	draught6   "  ?id "  GUzta )" crlf))
)

;@@@ Added by Pramila(BU) on 16-01-2014
(defrule draught7
(declare (salience 0))
(id-root ?id draught)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  draught.clp 	draught7   "  ?id "  GUzta )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_draught5
(declare (salience 5000))
(id-root ?id draught)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(subject-subject_samAnAXikaraNa ?id ?id2)
(id-root ?id2 single|one)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " draught.clp   sub_samA_draught5   "   ?id " GUzta )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_draught5
(declare (salience 5000))
(id-root ?id draught)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(object-object_samAnAXikaraNa ?id ?id2)
(id-root ?id2 single|one)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUzta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " draught.clp   obj_samA_draught5   "   ?id " GUzta )" crlf))
)
