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
;@@@ Added by jagriti(8.2.2014)
;He was angry on the surface. [rajpal]
;वह बाहर से क्रोधित था . 
(defrule surface0
(declare (salience 5000))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI ?id2 ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAhara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surface.clp      surface0   "  ?id "  bAhara )" crlf)
))

;@@@ Added by jagriti(8.2.2014)
;After many years she surfaced again in London.[iit-bombay wordnet]
;बहुत सारे वर्षों के बाद वह लन्दन में फिर से दिखाई दिया . 
(defrule surface1
(declare (salience 4900))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surface.clp      surface1   "  ?id "  xiKAI_xe )" crlf)
))

;@@@ Added by jagriti(8.2.2014)
;He surfaced the wall with the plaster.[rajpal]
;उसने दीवार पर प्लास्टर की तह जमाई . 
(defrule surface2
(declare (salience 4800))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(kriyA-with_saMbanXI  ?id ?id2)
(id-root ?id2 plaster)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waha_jamA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surface.clp      surface2   "  ?id "  waha_jamA )" crlf)
))

;@@@ Added by jagriti(8.2.2014)
;Ask him to surface the table and chair both.[rajpal]
;उसको मेज और कुर्सी दोनो चमकाने के लिये कहिए . 
(defrule surface3
(declare (salience 4700))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id camakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surface.clp      surface2   "  ?id "  camakA )" crlf)
))

;@@@ Added by jagriti(8.2.2014)
;Surface tension.[rajpal]
;पृष्ठीय तनाव.
(defrule surface4
(declare (salience 4600))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 tension)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pqRTIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surface.clp      surface4   "  ?id "  pqRTIya )" crlf)
))

;@@@ Added by jagriti(8.2.2014)
;Surface impressions.[rajpal]
;ऊपरी प्रभाव.
(defrule surface5
(declare (salience 4500))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 impression)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surface.clp      surface5   "  ?id "  UparI )" crlf)
))

;....default rule...
;@@@ Added by jagriti(8.2.2014)
;The table has a smooth surface.[rajpal]
;मेज की सतह चिकनी है . 
(defrule surface6
(declare (salience 100))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surface.clp      surface6   "  ?id "  sawaha )" crlf)
))

;@@@ Added by jagriti(8.2.2014)
(defrule surface7
(declare (salience 100))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawaha_para_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surface.clp      surface7   "  ?id "  sawaha_para_A )" crlf)
))

;@@@ Added by jagriti(8.2.2014)
(defrule surface8
(declare (salience 100))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sawahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surface.clp      surface7   "  ?id "  sawahI )" crlf)
))



;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_surface4
(declare (salience 4600))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 tension)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pqRTIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " surface.clp   sub_samA_surface4   "   ?id " pqRTIya )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_surface4
(declare (salience 4600))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 tension)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pqRTIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " surface.clp   obj_samA_surface4   "   ?id " pqRTIya )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_surface5
(declare (salience 4500))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 impression)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " surface.clp   sub_samA_surface5   "   ?id " UparI )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_surface5
(declare (salience 4500))
(id-root ?id surface)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 impression)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UparI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " surface.clp   obj_samA_surface5   "   ?id " UparI )" crlf)
))
