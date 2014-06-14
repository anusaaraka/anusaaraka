;########################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################
;@@@ Added by jagriti(15.2.2014)
;We scrambled flowers over the bride.[rajpal]
;हमने नववधू पर फूल बिखेरे .  
(defrule scramble0
(declare (salience 5000))
(id-root ?id scramble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-over_saMbanXI ?id ?)
(kriyA-object ?id ?id1)
(id-root ?id1 flower)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id biKera))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scramble.clp 	scramble0   "  ?id "  biKera )" crlf))
)
;@@@ Added by jagriti(15.2.2014)
;The boys scrambled up the hill.[rajpal]
;लडके हाथ-पैर के सहारे पहाडी पर चढे . 
(defrule scramble1
(declare (salience 4900))
(id-root ?id scramble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 hAWa-pEra_ke_sahAre_se_caDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " scramble.clp	scramble1  "  ?id "  " ?id1 "  hAWa-pEra_ke_sahAre_se_caDZa )" crlf))
)
;@@@ Added by jagriti(15.2.2014)
;To scramble over the rocks.[rajpal]
;चट्टानों पर हाथ-पैर के सहारे से चढना. 
(defrule scramble2
(declare (salience 4800))
(id-root ?id scramble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-over_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAWa-pEra_ke_sahAre_se_caDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scramble.clp 	scramble2   "  ?id "  hAWa-pEra_ke_sahAre_se_caDZa )" crlf))
)
;@@@ Added by jagriti(15.2.2014)
;They scrambled eggs in butter.[rajpal]
;उन्होंने मक्खन में अण्डे को तेजी से फेंटा . 
(defrule scramble3
(declare (salience 4700))
(id-root ?id scramble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 egg)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejZI_se_PeMta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scramble.clp 	scramble3   "  ?id "  wejZI_se_PeMta )" crlf))
)
;@@@ Added by jagriti(15.2.2014)
;It is a steep scramble,I shall not try to go up there.[rajpal]
;यह एक खड़ी चढाई है, मैं ऊपर जाने का प्रयास नहीं करूँगा . 
(defrule scramble4
(declare (salience 4600))
(id-root ?id scramble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
(id-root ?id1 steep)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDAZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scramble.clp 	scramble4   "  ?id "  caDAZI )" crlf))
)
;....default rule...
;@@@ Added by jagriti(15.2.2014)
;Students were seen scrambling for seats.[rajpal]
;विद्यार्थी सीटों के लिये छीना-झपटी करते हुए देखे गये . 
(defrule scramble_verb
(declare (salience 100))
(id-root ?id scramble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CInA-JapatI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scramble.clp 	scramble_verb   "  ?id "  CInA-JapatI_kara )" crlf))
)
;@@@ Added by jagriti(15.2.2014)
;I saw a scramble at the booking center and returned home.[rajpal]
;मैनें बुकिंग केंद्र में धक्क-मुक्का देखा और घर वापस लौट आया .
(defrule scramble_noun
(declare (salience 100))
(id-root ?id scramble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xakka-mukkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scramble.clp 	scramble_noun   "  ?id "  Xakka-mukkA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_scramble4
(declare (salience 4600))
(id-root ?id scramble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 steep)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDAZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " scramble.clp   sub_samA_scramble4   "   ?id " caDAZI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_scramble4
(declare (salience 4600))
(id-root ?id scramble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 steep)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDAZI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " scramble.clp   obj_samA_scramble4   "   ?id " caDAZI )" crlf))
)
