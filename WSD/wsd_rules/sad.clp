;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Sing(singh.jagriti5@gmail.com)
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
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;########################################################################
;@@@ Added by jagriti(14.2.2014)
;The sad songs will cause him more sorrow.[rajpal]
;दुखद गाने उसके अधिक दुखी होने का कारण होंगे . 
(defrule sad0
(declare (salience 5000))
(id-root ?id sad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 event|end|news|story|song)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sad.clp 	sad0   "  ?id "  xuKaxa )" crlf))
)
;@@@ Added by jagriti(14.2.2014)
;The colour of his shirt is sad red.[rajpal]
;उसकी कमीज का रङ्ग फीका लाल रङ्ग है . 
(defrule sad1
(declare (salience 5000))
(id-root ?id sad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id2 ?id)
(subject-subject_samAnAXikaraNa  ?id1 ?id2)
(id-root ?id1 colour|shade)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PIkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sad.clp 	sad1   "  ?id "  PIkA )" crlf))
)

;....default rule....
;@@@ Added by jagriti(14.2.2014)
;He was sad because his son had fallen ill.[rajpal]
; वह दु: खी था क्योंकि उसका बेटा बीमार हो गया था.
(defrule sad2
(declare (salience 100))
(id-root ?id sad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sad.clp 	sad2   "  ?id "  xuKI )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sad0
(declare (salience 5000))
(id-root ?id sad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 event|end|news|story|song)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sad.clp   sub_samA_sad0   "   ?id " xuKaxa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sad0
(declare (salience 5000))
(id-root ?id sad)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 event|end|news|story|song)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuKaxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sad.clp   obj_samA_sad0   "   ?id " xuKaxa )" crlf))
)
