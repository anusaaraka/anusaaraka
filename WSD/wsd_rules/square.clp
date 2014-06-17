;##############################################################################
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
;@@@ Added by Jagrithi
;The players squared up to each other and started shouting. 
;खिलाड़ी एक दूसरे से लड़ने के लिए तैयार हो गए और चिल्लाना आरंभ कर दिया.[cambridge advanced learner]
(defrule square0
(declare (salience 5000))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 lafAI_ke_liye_wEyAra_ho)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " square.clp	square0  "  ?id "  " ?id1 " lafAI_ke_liye_wEyAra_ho  )" crlf))
)

;@@@ Added by Jagrithi
;If you pay for both tickets now,I will square up with you later.  
;यदि आप अब दोनों टिकट के लिए भुगतान करते हैं, तो मैं बाद में आपके साथ चुकता करूँगा .[cambridge advanced learner]
(defrule square1
(declare (salience 5000))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up)
(id-cat_coarse ?id verb)
(kriyA-samakAlika_kriyA ?id ?id1)
(id-root ?id1 pay)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 cukawA_kara)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " square.clp	square1  "  ?id "  " ?id1 "  cukawA_kara  )" crlf))
)

;@@@ Added by Jagrithi
;India squared off the series.[english to hindi wordnet]
;भारत ने श्रृंखला को बराबर किया.
(defrule square2
(declare (salience 4800))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 off)
(kriyA-object ?id ?id2)
(id-word ?id2 series)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 barAbarI_kara)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " square.clp	square2  "  ?id "  " ?id1 "  barAbarI_kara )" crlf))
)

;@@@ Added by Jagrithi
;The two candidates will square off on this issue in a debate tomorrow.
 ;दो उम्मीदवार कल बहस के इस मुद्दे पर स्पर्धा करेंगे.[oxford]
(defrule square3
(declare (salience 4700))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 off)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sparXA_kara)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " square.clp	square3  "  ?id "  " ?id1 " sparXA_kara )" crlf))
)

;@@@ Added by Jagrithi
;Total area is 15 square meter.
;कुल क्षेत्रफल 15 वर्ग मीटर है.[cambridge advanced learner]
(defrule square4
(declare (salience 4600))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-word ?id1 meter|centimeter|milimeter|miles|kilometer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  square.clp 	square4   "  ?id " varga)" crlf))
)

;@@@ Added by Jagrithi
;We squared the bill.[english to hindi wordnet]
;हमने बिल चुकता कर दिया.
(defrule square5
(declare (salience 4500))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(kriya-object ?id ?id1)
(id-word ?id1 bill)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cukawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  square.clp 	square5   "  ?id " cukawA_kara)" crlf))
)

;@@@ Added by Jagrithi
;You may leave but it would be better if you square it with the principal first.
;आप छोड सकते हैं परन्तु यह अधिक बेहतर होगा यदि आप प्रमुख  के साथ पहले इजाजत ले . 
;I think I'll be able to come, but I'll square it with my parents first.
;मैं सोचता हूँ कि मैं आने के लिए सक्षम हो जाऊँगा, लेकिन मैं पहली बार अपने माता पिता से इजाज़त लूँगा.                        [oxford advance learner]
(defrule square6
(declare (salience 4450))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
(id-root ?id1 principal|parent|brother|sister|uncle|grandfather)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ijAjawa_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  square.clp 	square6   "  ?id " ijAjawa_le)" crlf))
)

;@@@ Added by Jagrithi
;One idea squares with another.
(defrule square7
(declare (salience 4400))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anukUla_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  square.clp 	square7   "  ?id " anukUla_ho)" crlf))
)

;@@@ Added by Jagrithi
;Hit square in the jaw.
; जबड़े में सीधे चोट पहुंचाअो.[english to hindi wordnet]
(defrule square8
(declare (salience 4300))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-word ?id1 hit)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  square.clp 	square8   "  ?id " sIXe)" crlf))
)

;..........default rule..............
;@@@ Added by Jagrithi
;Square of 7 is 49 .
;7 का वर्ग 49 है.[cambridge advanced learner]
;;She moved her castle forward three squares. [cambridge advance ]
;उसने हाथी को तीन वर्ग  अागे बढाया.
(defrule square9
(declare (salience 0))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  square.clp 	square9   "  ?id " varga)" crlf))
)

;@@@ Added by Jagrithi
;Do not square the corners but round them .
;कोने  वर्गाकार मत बनाइए परन्तु उनको गोल बनाइए . [english to hindi wordnet]
(defrule square10
(declare (salience 0))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vargAkAra_banA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  square.clp 	square10   "  ?id " vargAkAra_banA)" crlf))
)

;@@@ Added by Jagrithi
;A square jaw .
;एक  वर्गाकार जबड़ा.[english to hindi wordnet]
(defrule square11
(declare (salience 0))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vargAkAra ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  square.clp 	square11   "  ?id " vargAkAra)" crlf))
)

;@@@ Added by Jagrithi
;Hit square in the jaw.
;जबड़े में सीधे चोट पहुंचाअो.[english to hindi wordnet]
(defrule square12
(declare (salience 0))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  square.clp 	square11   "  ?id " sIXe)" crlf))
)

;@@@ Added by Jagrithi
(defrule square13
(declare (salience 0))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  square.clp 	square12   "  ?id " varga)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_square4
(declare (salience 4600))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 meter|centimeter|milimeter|miles|kilometer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " square.clp   sub_samA_square4   "   ?id " varga)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_square4
(declare (salience 4600))
(id-root ?id square)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 meter|centimeter|milimeter|miles|kilometer)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " square.clp   obj_samA_square4   "   ?id " varga)" crlf))
)
