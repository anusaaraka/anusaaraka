;##############################################################################
;#  Copyright (C) 2002-2005 Shweta Vikram (prachirathore02@gmail.com)
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

;Her attacker has now been positively identified by police.[OALD]
;उसके हमलावर अब तक पुलीस द्वारा स्पष्ट रुप से पहचान लिये गये हैं   . 
;Experts could not positively identify the voices.[OXFORD DICTIONARY]
;विशेषज्ञ स्पष्ट रुप से आवाज की पहचान नहीं कर सकते.
(defrule positively0
(declare (salience 4900))
(id-root ?id positively)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-kriyA_viSeRaNa ?id1 ?id)(kriyA-kriyA_viSeRaNa ?id ?id1))
(id-cat_coarse ?id adverb)
(id-root ?id1 identify)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta_rupa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  positively.clp 	positively0   "  ?id "  spaRta_rupa_se)" crlf))
)

;The instructions were not just confusing, they were positively misleading.[OALD]
;निर्देश सिर्फ पेचीदे नहीं थे, वे निश्चित_रूप_से गलतफहमी पैदे करने वाले थे . 
;Tonight's performance is positively the last time the band will appear together.[OALD]
;आज की रात का प्रदर्शन निश्चित रूप सेआखिरी बार है जब बैंड एक साथ दिखाई देगा . 
(defrule positively1
(declare (salience 4800))
(id-root ?id positively)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaka  ? ?id)(kriyA-samakAlika_kriyA ? ?id)(kriyA-kriyA_viSeRaNa ?id ?))
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa_rUpa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  positively.clp 	positively1   "  ?id "  niSciwa_rUpa_se)" crlf))
)
;Thinking positively is one way of dealing with stress.[OALD]
;सकारात्मक रुप से सोचना तनाव से निपटने का एक तरिका है . 
(defrule positively2
(declare (salience 4900))
(id-root ?id positively)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id1 ?id)
(subject-subject_samAnAXikaraNa ?id2 ?id1)
(id-cat_coarse ?id adverb)
(id-root ?id2 think|thinking|civilization|policy|adviser)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakArAwmaka_rupa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  positively.clp 	positively2   "  ?id "  sakArAwmaka_rupa_se)" crlf))
)

;Thus the rod gets positively charged and the silk gets negatively charged.[PHYSICS]
;इस प्रकार छड धनावेशीत और रेशम ऋणावेशित  जाता है . 
(defrule positively3
(declare (salience 4800))
(id-root ?id positively)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(id-root =(+ ?id 1) charge)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) XanAveSIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " integral.clp	positively3  "  ?id "  " (+ ?id 1) "  XanAveSIwa )" crlf)))


;------------------------ Default rule -----------------
;Added by SHWETA VIKRAM(07/09/2013)
;Civilization, as we now understand, was positively stagnant . 
;mAnava jAwi kA vilopana Bale hI pqW vI ke lie pralayakArI na ho lekina kIta kA vilopana vAswavika rUpa se EsA hE .
(defrule positively5
(id-root ?id positively)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakArAwmaka_rupa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  positively.clp 	positively5   "  ?id "  sakArAwmaka_rupa_se)" crlf))
)

;I don't respond very positively to being bossed around.[CAMBRIDGE DICTIONARY]
;मैं चारों और से नियंत्रित होने पर बहुत सकारात्मक रूप से प्रतिक्रिया नहीं देता हूँ .
(defrule positively6
(declare (salience 4800))
(id-root ?id positively)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ? ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sakArAwmaka_rupa_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  positively.clp 	positively6  "  ?id "  sakArAwmaka_rupa_se)" crlf))
)

