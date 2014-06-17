;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam27virgo@gmail.com)
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


;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;The knife went through his ribs and punctured his lung. [cambridge]
;चाकू उसकी पसलियों में से गया और उसके फेफड़ों में छेद किया .
(defrule puncture1
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 lung|eardrom|tire)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cexa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puncture.clp 	puncture1   "  ?id "  Cexa_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;She had a puncture wound in her arm, from a wasp sting. [cambridge]
;उसकी बा़ह में एक छेदनुमा घाव था, एक ततैया डंक से .
(defrule puncture2
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 wound)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CexanumA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puncture.clp 	puncture2   "  ?id "  CexanumA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;She was taken to the hospital with broken ribs and a punctured lung.[cambridge]
;उसे टूटी पसलियों और  छिद्रित फेफड़ों के साथ अस्पताल ले जाया गया.
(defrule puncture3
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 lung)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cixriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puncture.clp 	puncture3   "  ?id "  Cixriwa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;My positive mood was rather punctured by the news.[cambridge]
;मेरा अच्छा मन समाचार सुनकर खराब हो गया था  .
(defrule puncture4
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 mood|mind|brain)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puncture.clp 	puncture4   "  ?id "  KarAba )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;She had used a screwdriver to puncture two holes in the lid of a paint tin. [cambridge]
;उसने एक पेचकस का उपयोग किया था टिन में दो छेद करने के लिये .
(defrule puncture5
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(to-infinitive  ? ?id)
(id-root ?id1 hole)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 Cexa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " puncture.clp  puncture5  "  ?id "  " ?id1 "  Cexa_kara  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;Their criticism punctured his self-esteem. [M-W]
;उनकी आलोचना ने उसकी स्वाभिमान को आहत किया .
(defrule puncture6
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 selfasteem|respect|selfrespect)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ahawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puncture.clp 	puncture6   "  ?id "  Ahawa_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;A punctured eardrum. [M-W]
;एक फटा हुआ कान का पर्दा .
(defrule puncture7
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 eardrum|drum|membrane|tyre)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PatA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puncture.clp 	puncture7   "  ?id "  PatA_huA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;My bike has had two punctures in the last three weeks. [cambridge]
;मेरी साइकिल में पिछले तीन हफ्तों में दो पंचर हो चुके हैं .
(defrule puncture8
(declare (salience 3000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMcara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puncture.clp 	puncture8   "  ?id "  paMcara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014 .
;The silence was punctured by her cry.
;उसकी चीख ने सन्नाटा समाप्त किया .
(defrule puncture9
(declare (salience 3000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samApwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puncture.clp 	puncture9   "  ?id "  samApwa_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
(defrule puncture10
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMcara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  puncture.clp 	puncture10   "  ?id "  paMcara )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_puncture2
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 wound)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CexanumA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " puncture.clp   sub_samA_puncture2   "   ?id " CexanumA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_puncture2
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 wound)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CexanumA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " puncture.clp   obj_samA_puncture2   "   ?id " CexanumA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_puncture3
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 lung)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cixriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " puncture.clp   sub_samA_puncture3   "   ?id " Cixriwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_puncture3
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 lung)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Cixriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " puncture.clp   obj_samA_puncture3   "   ?id " Cixriwa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_puncture7
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 eardrum|drum|membrane|tyre)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PatA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " puncture.clp   sub_samA_puncture7   "   ?id " PatA_huA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_puncture7
(declare (salience 5000))
(id-root ?id puncture)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 eardrum|drum|membrane|tyre)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PatA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " puncture.clp   obj_samA_puncture7   "   ?id " PatA_huA )" crlf))
)
