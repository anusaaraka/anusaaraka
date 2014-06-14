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


;@@@ Added by Pramila(BU) on 13-03-2014
;She writes about her experiences as a black girl in a predominantly white city.   ;oald
;वह एक मुख्य रूप से गोरे लोगो वाले शहर में एक काले रंग की लड़की के रूप में अपने अनुभवों के बारे में लिखती हैं.
(defrule white0
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 city)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gore_logo_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  white.clp 	white0   "  ?id "  gore_logo_vAlA )" crlf))
)

;@@@ Added by Pramila(BU) on 13-03-2014
;She went white as a sheet when she heard the news.   ;oald
;वह एक कागज की तरह कांतिहीन हो गई जब उसने खबर सुनी.
(defrule white1
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?sub ?id)
(kriyA-subject  ?id1 ?sub)
(kriyA-samakAlika_kriyA  ?id1 ?kri)
(id-root ?kri hear|see)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAMwihIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  white.clp 	white1   "  ?id "  kAMwihIna )" crlf))
)

;@@@ Added by Pramila(BU) on 13-03-2014
;Two white coffees, please.  ;oald
;दो दूधवाली  कॉफी , प्लीज
(defrule white2
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 coffee|tea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUXavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  white.clp 	white2   "  ?id "  xUXavAlA )" crlf))
)

;@@@ Added by Pramila(BU) on 13-03-2014
;Do you take your coffee black or white?   ;oald
;क्या तुम दूधवाली कॉफी लेते हो या बिना दूधवाली
(defrule white3
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(conjunction-components  ?id2 ?id1 ?id)
(viSeRya-viSeRaNa  ?id3 ?id2)
(id-root ?id3 coffee|tea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUXavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  white.clp 	white3   "  ?id "  xUXavAlA )" crlf))
)

;@@@ Added by Pramila(BU) on 13-03-2014
;She was dressed all in white.   ;oald
;वह पूरी सफेद पोशाक पहने हुए थी.
(defrule white4
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
(id-root ?id1 dress)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPexa_poSAka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  white.clp 	white4   "  ?id " saPexa_poSAka )" crlf))
)


;@@@ Added by Pramila(BU) on 13-03-2014
;Use the whites of two eggs.   ;oald
;अंडो का सफेदा प्रयोग करो.
(defrule white5
(declare (salience 5000))
(id-word ?id whites)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 egg)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saPexA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  white.clp 	white5   "  ?id " saPexA )" crlf))
)

;@@@ Added by Pramila(BU) on 13-03-2014
;The whites of her eyes were bloodshot.   ;oald
;उसकी आँखों का सफेद भाग लाल था.
(defrule white6
(declare (salience 4900))
(id-word ?id whites)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saPexa_BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  white.clp 	white6   "  ?id " saPexa_BAga )" crlf))
)

;@@@ Added by Pramila(BU) on 13-03-2014
;He is white,not black.   ;shiksharthi
;वह गोरा है, काला नहीं
(defrule white7
(declare (salience 4900))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gorA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  white.clp 	white7   "  ?id " gorA )" crlf))
)

;@@@ Added by Shirisha Manju 30-4-14   Suggested by Chaitanya Sir
;The black men as well as white women should be educated.
(defrule white11
(declare (salience 4900))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gorA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  white.clp    white11   "  ?id " gorA )" crlf))
)

;@@@ Added by Pramila(BU) on 13-03-2014
;Many whites live in Africa.   ;shiksharthi
;अफ्रीका में बहुत से गोरे रहते हैं.
(defrule white8
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 live)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gorA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  white.clp 	white8   "  ?id " gorA )" crlf))
)

;@@@ Added by Pramila(BU) on 13-03-2014
;I want some white for my almirah.   ;shiksharthi
;मैं मेरी अलमारी के लिए कुछ सफेदा चाहता हूँ.
(defrule white9
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?kri ?id)
(kriyA-for_saMbanXI  ?kri ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPexA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  white.clp 	white9   "  ?id " saPexA )" crlf))
)

;-------------default rules-----------------------------
;@@@ Added by Pramila(BU) on 13-03-2014
;His hair was as white as snow.   ;oald
;उसके बाल बर्फ के जैसे सफेद थे.
;You mix white with some good colour.  ;oald
;तुम सफेद को किसी अच्छे रंग के साथ मिलाते हो.
(defrule white10
(declare (salience 100))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective|noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPexa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  white.clp 	white10   "  ?id "  saPexa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_white0
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 city)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gore_logo_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " white.clp   sub_samA_white0   "   ?id " gore_logo_vAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_white0
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 city)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gore_logo_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " white.clp   obj_samA_white0   "   ?id " gore_logo_vAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_white2
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 coffee|tea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUXavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " white.clp   sub_samA_white2   "   ?id " xUXavAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_white2
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 coffee|tea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUXavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " white.clp   obj_samA_white2   "   ?id " xUXavAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_white3
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(conjunction-components  ?id2 ?id1 ?id)
(subject-subject_samAnAXikaraNa ?id3 ?id2)
(id-root ?id3 coffee|tea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUXavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " white.clp   sub_samA_white3   "   ?id " xUXavAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_white3
(declare (salience 5000))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(conjunction-components  ?id2 ?id1 ?id)
(object-object_samAnAXikaraNa ?id3 ?id2)
(id-root ?id3 coffee|tea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUXavAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " white.clp   obj_samA_white3   "   ?id " xUXavAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_white11
(declare (salience 4900))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gorA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " white.clp   sub_samA_white11   "   ?id " gorA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_white11
(declare (salience 4900))
(id-root ?id white)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gorA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " white.clp   obj_samA_white11   "   ?id " gorA )" crlf))
)
