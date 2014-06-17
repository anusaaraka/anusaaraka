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

;$$$ Modified by Sonam Gupta MTech IT Banasthali 13-3-2014 (added value in ?id1)
;However if we had written 1 / 9.58 0.1044 and then taken the reciprocal to three significant figures we would have 
;retrieved the original value of 9.58. [ncert]
;पर यदि हमने 1/9.58 = 0.1044 लिखा होता तो उसके व्युत्क्रम को तीन सार्थक अङ्कों तक पूर्णाङ्कित करने पर हमें मूल मान 9.58 प्राप्त होगा.
;@@@ Added by Sonam Gupta MTech IT Banasthali 7-2-2014
;He's a highly original thinker. [CAMB]
;वह एक मूल चिन्तक है .
(defrule original1
(declare (salience 5000))
(id-root ?id original)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 thinker|theorist|philosopher|value)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  original.clp 	original1  "  ?id " 	mUla )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 7-2-2014
;If the painting were an original, it would be very valuable. [Camb]
;यदि कलाकृति मू-प्रति होती तो यह ज्यादा कीमती होती .
(defrule original2
(declare (salience 5000))
(id-root ?id original)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-det_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla-prawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  original.clp 	original2  "  ?id " 	mUla-prawi )" crlf))
)


;$$$ Modified by Sonam Gupta MTech IT Banasthali 13-3-2014 (removed silence)
;@@@Added by Sonam Gupta MTech IT Banasthali 4-2-2014
;In the Science department out of 82 published papers, based on original investigation, 
;60 were the original of the teachers, 14 were the result of joint efforts of professors and 
;Hundred Years of the University of Calcutta, p, 194-195. students, and 8 were the result of independent 
;research by students.[gyannidhi]
;विज्ञान विभाग में ऐसे 82 प्रकाशित शोद-पत्रों में से जो कि मौलिक खोज पर आधारित थे, 60 अध्यापकों के परिश्रम का फल थे, 
;14 प्रोफेसरों और छात्रों के संयुक्त प्रयासों का परिणाम थे और 8 छात्रों के स्वतंत्र शोध का नतीजा थे। 
(defrule original3
(id-root ?id original)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mOlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  original.clp 	original3  "  ?id " 	mOlika )" crlf))
)

;@@@Added by Sonam Gupta MTech IT Banasthali 13-3-2014
(defrule original4
(id-root ?id original)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mOlika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  original.clp 	original4  "  ?id " 	mOlika )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_original1
(declare (salience 5000))
(id-root ?id original)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 thinker|theorist|philosopher|value)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " original.clp   sub_samA_original1   "   ?id " mUla )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_original1
(declare (salience 5000))
(id-root ?id original)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 thinker|theorist|philosopher|value)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " original.clp   obj_samA_original1   "   ?id " mUla )" crlf))
)
