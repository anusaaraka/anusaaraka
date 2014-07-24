;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02 at gmail dot com)
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
;@@@ Added by Prachi Rathore [22-1-14]
;When you look at a tree in the distance you cannot make out its individual leaves.
;जब आप दूर के किसी पेड़ को देखते हैं, तो आपको उसके अलग-अलग पत्ते दिखाई नहीं देते।
(defrule individual0	
(declare (salience 2500))
(id-root ?id individual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alaga_alaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  individual.clp 	individual0   "  ?id "  alaga_alaga )" crlf))
)

;@@@ Added by Prachi Rathore [22-1-14]
;Highly individual style of dress.[oald]
;लिबास की अत्यधिक विशेष शैली . 
(defrule individual3	
(declare (salience 3000))
(id-root ?id individual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 style|need)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  individual.clp 	individual3   "  ?id "  viSeRa )" crlf))
) 

;@@@ Added by Prachi Rathore[22-1-14]
;We deal with each case on an individual basis. [cambridge]
;हम व्यक्तिगत आधार पर हर एक मामले के साथ देते हैं . 
(defrule individual4	
(declare (salience 3000))
(id-root ?id individual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 basis)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwigawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  individual.clp 	individual4   "  ?id "  vyakwigawa )" crlf))
)

;@@@ Added by Prachi Rathore[22-1-14]
; If nothing else, the school will turn her into an individual.[cambridge]
;यदि कुछ भी नही अन्य, तो विद्यालय एक विशिष्ट व्यक्ति में उसको बदल देगा . 
(defrule individual5	
(declare (salience 2500))
(id-root ?id individual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-into_saMbanXI  ?id1 ?id)(kriyA-as_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRta_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  individual.clp 	individual5   "  ?id "  viSiRta_vyakwi )" crlf))
)

;;XXXXXXXXXXXXXXXXXXXXXXXXXXX DEFAULT RULE XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX;;
;@@@ Added by Prachi Rathore[22-1-14]
(defrule individual1	
(declare (salience 1500))
(id-root ?id individual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwigawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  individual.clp 	individual1   "  ?id "  vyakwigawa )" crlf))
)

;@@@ Added by Prachi Rathore[22-1-14]
;An odd-looking individual.[oald]
(defrule individual2	
(declare (salience 1500))
(id-root ?id individual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  individual.clp 	individual2   "  ?id "  vyakwi )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_individual3
(declare (salience 3000))
(id-root ?id individual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 style|need)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " individual.clp   sub_samA_individual3   "   ?id " viSeRa )" crlf))
) 

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_individual3
(declare (salience 3000))
(id-root ?id individual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 style|need)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " individual.clp   obj_samA_individual3   "   ?id " viSeRa )" crlf))
) 

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_individual4
(declare (salience 3000))
(id-root ?id individual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 basis)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwigawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " individual.clp   sub_samA_individual4   "   ?id " vyakwigawa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_individual4
(declare (salience 3000))
(id-root ?id individual)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 basis)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwigawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " individual.clp   obj_samA_individual4   "   ?id " vyakwigawa )" crlf))
)
