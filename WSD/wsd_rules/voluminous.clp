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
;@@@ Added by Prachi Rathore[3-2-14]
;Her voluminous silk dress billowed out behind her.[oald]
;उसका भारी भरकम रेशम का लिबास उसके पीछे लहरा रहा था. 
(defrule voluminous0
(declare (salience 5100))
(id-root ?id voluminous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 dress|cloth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BArI_Barakama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  voluminous.clp 	voluminous0   "  ?id "  BArI_Barakama )" crlf))
)

;@@@ Added by Prachi Rathore[3-2-14]
;The members of the Commission took down evidence, toured different parts of India, visited most of the educational centres, many of the colleges and schools, and presented a voluminous report to the Government of India in March 1919.[gayannidhi]
;.आयोग के सदस्यों ने गवाहियां लीं, भारत के विभिन्न भागों का दौरा किया, लगभग सभी शिक्षा केन्द्रों में गये और मार्च 1919 भारत सरकार को विस्तृद रिपोर्ट पेश की।
(defrule voluminous1
(declare (salience 5000))
(id-root ?id voluminous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viswqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  voluminous.clp 	voluminous1   "  ?id "  viswqwa )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[3-2-14]
;
(defrule voluminous2
(declare (salience 4000))
(id-root ?id voluminous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id teDA_meDA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  voluminous.clp 	voluminous2   "  ?id "  teDA_meDA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_voluminous0
(declare (salience 5100))
(id-root ?id voluminous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 dress|cloth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BArI_Barakama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " voluminous.clp   sub_samA_voluminous0   "   ?id " BArI_Barakama )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_voluminous0
(declare (salience 5100))
(id-root ?id voluminous)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 dress|cloth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BArI_Barakama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " voluminous.clp   obj_samA_voluminous0   "   ?id " BArI_Barakama )" crlf))
)
