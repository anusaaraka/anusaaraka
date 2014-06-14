;##############################################################################
;#  Copyright (C) 2002-2005 Shweta Vikram (shwetavikram.2009@rediffmail.com)
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
;@@@ Added by SHWETA VIKRAM(16/08/2013)
;On the other hand, the plastic rod attracts the glass rod (Fig. 1.1 (c)) and repel the silk or wool with which the glass rod is rubbed.(Physics)
;दूसरी ओर, प्लास्टिक छड़ गिलास छड़ (Fig. 1.1 c और प्रतिकर्षित रेशम या ऊन आकर्षित करता है जिससे गिलास छड़ रगड़ा है . (Anusaaraka)
(defrule repel0
(declare (salience 4900))
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ? ?id) ;removed kriya object relation by Anita-3.4.2014
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawikarRiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repel.clp 	repel0   "  ?id "  prawikarRiwa )" crlf))
)

;@@@ Added by SHWETA VIKRAM(16/08/2013)
;I was repelled by the smell.
;मैं गन्ध के कारण हटा दिया गया था ।--Translation added by Anita-25.3.2014
;मैं गन्ध के द्वारा हटाया गया था . (Anusaaraka) 
(defrule repel1
(declare (salience 4800))
(id-root ?id repel)
?mng <-(meaning_to_be_decided ?id)
(kriyA-by_saMbanXI  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repel.clp 	repel1   "  ?id "  hatA)" crlf))
)


;@@@ Added by SHWETA VIKRAM(21/09/2013)
;He repelled the idea of his boss as it was of no use.(hinkhoj)
;उसने उसके बॉस का विचार त्याग दिया जैसा कि वह उपयोग का नहीं था . (Anusaaraka)
(defrule repel2
(declare (salience 4700))
(id-root ?id repel)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 idea)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wyAga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repel.clp 	repel2   "  ?id "  wyAga_xe )" crlf))
)

;@@@ Added by Anita-25.3.2014
;The fabric has been treated to repel water. [oxford learner's dictionary]
;कपड़े को पानी रोकने  के लिए संसाधित किया गया है ।
(defrule repel5
(declare (salience 4600))
(id-root ?id repel)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ? ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repel.clp 	repel5   "  ?id "  roka )" crlf))
)

;@@@ Added by Anita-25.3.2014
;Like poles repel each other. [Old clp. sentence]
;ध्रुवों की तरह एक-दूसरे को प्रतिकर्षित करते हैं ।
(defrule repel6
(declare (salience 4500))
(id-root ?id repel)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 pole)
(kriyA-subject ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawikarRiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repel.clp 	repel6  "  ?id " prawikarRiwa_kara)" crlf))
)

;=======================DEFAULT===========================
;@@@ Added by SHWETA VIKRAM(21/09/2013)
(defrule repel3
(id-root ?id repel)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GqNAspaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repel.clp 	repel3   "  ?id "  GqNAspaxa)" crlf))
)


;@@@ Added by SHWETA VIKRAM(21/09/2013)
;Like poles repel each other.
;जैसे डंडे एक दूसरे को प्रतिकर्षित करते हैं. 
;Troops repelled an attempt to infiltrate the south of the island. [oxford learner's dictionary]-sentence added by Anita-;25.3.2014
;सैनिकों ने द्वीप के दक्षिण से घुसपैठ करने का प्रयत्न का प्रतिरोध किया ।
;The reptile's prickly skin repels nearly all of its predators.
;रेंगने वाले जन्तु की कांटेदार त्वचा लगभग अपने सभी शिकारियों का प्रतिरोध करती है ।
(defrule repel4
(id-root ?id repel)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiroX_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  repel.clp 	repel4   "  ?id "  prawiroX_kara)" crlf))
)


;The reptile's prickly skin repels nearly all of its predators. 
;Hence they repel each other.
;On the other hand, the plastic rod attracts the glass rod (Fig. 1.1 (c)) and repel the silk or wool with which the glass rod is rubbed.
;I was repelled by the smell. 
;Like poles repel each other.
;The reptile's prickly skin repels nearly all of its predators. 
;He repelled the idea of his boss as it was of no use.
;She repelled his advances.
;Good and evil repel each other.
;It is a water- repellent fabric.
;I find his selfishness repellent.
