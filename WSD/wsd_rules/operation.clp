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



;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Less profitable business operations will have difficulty in finding financial support. [Cambridge]
;कम लाभदायक उद्योग कार्य प्रणाली को आर्थिक सहारे को पाने में कठिनाई है . 
(defrule operation0
(declare (salience 5000))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?id1)(viSeRya-viSeRaNa  ?id ?id1)(kriyA-object  ?id1 ?id))
(id-root ?id1 business|trade|company|issue|matter|commercial|organization|production|professional|firm|event|sale|finance|enterprise|corporation|multinational|charge|incharge|review)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya_praNAlI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operation.clp 	operation0  "  ?id "  kArya_praNAlI )" crlf))
)



;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;We will know in a couple of days if the operation to restore her sight was successful. [Cambridge]
;हम दिन दो एक में जानेंगे कि यदि उसकी दृष्टि वापस लौटाने के लिये शल्य चिकित्सा सफल थी . 
(defrule operation1
(declare (salience 4900))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id ?)
(kriyA-subject  ? ?id)
(saMjFA-to_kqxanwa  ?id ?)
(viSeRya-det_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Salya_cikiwsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operation.clp 	operation1  "  ?id "  Salya_cikiwsA )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;The operation to fly in supplies will begin as soon as possible. [Cambridge]
;सप्लाई को पहुँचाने के लिये अभियान जितनी जल्दी हो सके आरम्भ होगा . 
(defrule operation2
(declare (salience 4800))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ? ?id)
(saMjFA-to_kqxanwa  ?id ?)
(viSeRya-det_viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBiyAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operation.clp 	operation2  "  ?id "  aBiyAna )" crlf))
)




;@@@Added by Sonam Gupta MTech IT Banasthali 2013
; This is just a holding operation until we get the new management structure sorted out. [Cambridge]
;यह सिर्फ एक अस्थायी कार्यवाही है जब तक हम नयी प्रबन्ध संरचना प्राप्त करते हैं .
(defrule operation3
(declare (salience 4700))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(and(viSeRya-viSeRaNa  ?id ?)(viSeRya-det_viSeRaNa  ?id ?)(subject-subject_samAnAXikaraNa  ? ?id))(and(viSeRya-viSeRaNa  ? ?id))(and(viSeRya-viSeRaNa  ?id ?)(viSeRya-det_viSeRaNa  ?id ?)(kriyA-object  ? ?id)(viSeRya-against_saMbanXI  ?id ?))(and(kriyA-subject  ? ?id)(kriyA-karma  ? ?id)(viSeRya-viSeRaNa  ?id ?)(viSeRya-det_viSeRaNa  ?id ?)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryavAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operation.clp 	operation3  "  ?id "  kAryavAhI )" crlf))
)



;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;Regular servicing guarantees the smooth operation of the engine. [OALD]
;नियमित सेवा इंजन के आसान परिचालन को निश्चित करती है . 
(defrule operation4
(declare (salience 4600))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(and(viSeRya-viSeRaNa  ?id ?)(viSeRya-det_viSeRaNa  ?id ?)(kriyA-object  ? ?id)(viSeRya-of_saMbanXI  ?id ?))(and(subject-subject_samAnAXikaraNa  ?id ?)(kriyA-subject  ? ?id)(viSeRya-of_saMbanXI  ?id ?)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paricAlana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operation.clp 	operation4  "  ?id "  paricAlana )" crlf))
)



;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;  The family runs a small farming operation.[M-W]
;परिवार एक छोटा खेती का काम करता है.
(defrule operation5
(declare (salience 4500))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
(viSeRya-det_viSeRaNa  ?id ?)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)
(kriyA-object  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_kAma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operation.clp 	operation5  "  ?id "  kA_kAma )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;The operation has a fifty-fifty chance of success. [Gyannidhi]
;शल्य चिकित्सा की सफलता में आधा-आधा अवसर है . 
(defrule operation6
(declare (salience 4400))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Salya_cikiwsA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operation.clp 	operation6  "  ?id "  Salya_cikiwsA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 24-1-2014
;The computer can perform millions of operations per second. [MW]
;संघणक प्रति सेकेण्ड लाखों कार्य कर सकता है  . 
(defrule operation7
(declare (salience 4600))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operation.clp 	operation7  "  ?id "  kArya )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 24-1-2014
;Ten arrests were made in an undercover operation.  [MW]
;एक गुप्त कार्यवाही के अन्तर्गत दस गिरफ्तारी हुईं . 
(defrule operation8
(declare (salience 4600))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 undercover|hidden|secret)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryavAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operation.clp 	operation8  "  ?id "  kAryavAhI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 24-1-2014
;The quiet operation of the printer.  [MW]
;मुद्रक का शान्त क्रिया कलाप . 
(defrule operation9
(declare (salience 4600))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 quiet|still|simple|low|silent|calm|inaudible|mute)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kriyA_kalApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operation.clp 	operation9  "  ?id "  kriyA_kalApa )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 24-1-2014
;The dam will go into operation next month. [MW]
;बाँध अगले महीने से चालू हो जाएगा . 
(defrule operation10
(declare (salience 4600))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-into_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cAlU_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  operation.clp 	operation10  "  ?id "  cAlU_ho )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_operation8
(declare (salience 4600))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 undercover|hidden|secret)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryavAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " operation.clp   sub_samA_operation8   "   ?id " kAryavAhI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_operation8
(declare (salience 4600))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 undercover|hidden|secret)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAryavAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " operation.clp   obj_samA_operation8   "   ?id " kAryavAhI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_operation9
(declare (salience 4600))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 quiet|still|simple|low|silent|calm|inaudible|mute)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kriyA_kalApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " operation.clp   sub_samA_operation9   "   ?id " kriyA_kalApa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_operation9
(declare (salience 4600))
(id-root ?id operation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 quiet|still|simple|low|silent|calm|inaudible|mute)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kriyA_kalApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " operation.clp   obj_samA_operation9   "   ?id " kriyA_kalApa )" crlf))
)
