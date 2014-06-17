;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore[20-3-14]
;Boxer. He jabbed the ball into the net in the final minute of the game.
;उसने खेल के अन्तिम मिनट में जाल के अंदर गोला धकेला . 
(defrule jab0
(declare (salience 5000))
(id-root ?id jab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 ball)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xakela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jab.clp 	jab0   "  ?id " Xakela )" crlf))
)

;@@@ Added by Prachi Rathore[20-3-14]
;The doctor jabbed the needle into the dog's leg. 
;डाक्टर ने कुत्ते के टाङ्ग के अंदर सुई लगाई . 
(defrule jab5
(declare (salience 5000))
(id-root ?id jab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 needle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jab.clp 	jab5   "  ?id " lagA )" crlf))
)

;@@@ Added by Prachi Rathore[20-3-14]
;The boxer jabbed at his opponent.
;मुक्केबाज ने उसके प्रतिद्वंदी को घुसा मारा . 
(defrule jab6
(declare (salience 5000))
(id-root ?id jab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 boxer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GusA_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jab.clp 	jab6   "  ?id " GusA_mAra )" crlf))
)



;@@@ Added by Prachi Rathore[20-3-14]
; A flu jab. 
;फ्लू का इंजेकशन . 
(defrule jab1
(declare (salience 5000))
(id-root ?id jab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 flew)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMjekSana))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jab.clp 	jab1   "  ?id "  iMjekSana )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "   jab.clp 	jab1    "  ?id "  kA )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[20-3-14]
; She jabbed her finger in his ribs.[oald]
;उसने उसकी पसली की हड्डी में उसकी उङ्गली कोंची . 
(defrule jab2
(declare (salience 400))
(id-root ?id jab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jab.clp 	jab2   "  ?id "  koMca )" crlf))
)

;@@@ Added by Prachi Rathore[20-3-14]
;She gave him a jab in the stomach with her elbow.[oald]
;उसने   उसकी कुहनी से उसको पेट में घूँसा मारा . 
(defrule jab4
(declare (salience 400))
(id-root ?id jab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GUzsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jab.clp 	jab4   "  ?id "  GUzsA)" crlf))
)

;@@@ Added by Prachi Rathore[20-3-14]

(defrule jab3
(declare (salience 200))
(id-root ?id jab)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id koMca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jab.clp 	jab3   "  ?id "  koMca )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_jab1
(declare (salience 5000))
(id-root ?id jab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 flew)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMjekSana))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " jab.clp   sub_samA_jab1   "   ?id " iMjekSana )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi " ?*wsd_dir* " jab.clp   sub_samA_jab1   "   ?id " kA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_jab1
(declare (salience 5000))
(id-root ?id jab)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 flew)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMjekSana))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " jab.clp   obj_samA_jab1   "   ?id " iMjekSana )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi " ?*wsd_dir* " jab.clp   obj_samA_jab1   "   ?id " kA )" crlf))
)
