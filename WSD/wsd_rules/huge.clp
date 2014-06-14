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
;@@@ Added by Prachi Rathore[5-3-14]
;I had a huge crush on her.
;मै उससे बहुत अधिक सम्मोहित था.
(defrule huge0
(declare (salience 5000))
(id-root ?id huge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa   ?id1 ?id)
(id-root ?id1 crush)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  huge.clp 	huge0   "  ?id "  bahuwa_aXika )" crlf))
)



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[5-3-14]
 ;Himalayas are huge mountains.[shiksharthi-kosh]
;हिमालय विशाल पर्वत हैं . 
(defrule huge1
(declare (salience 400))
(id-root ?id huge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  huge.clp 	huge1   "  ?id "  viSAla )" crlf))
)


;@@@ Added by Prachi Rathore[5-3-14]
 ;Himalayas are huge mountains.[shiksharthi-kosh]
;हिमालय विशाल पर्वत हैं . 
(defrule huge3
(declare (salience 200))
(id-root ?id huge)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  huge.clp 	huge3   "  ?id "  viSAla )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_huge0
(declare (salience 5000))
(id-root ?id huge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 crush)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " huge.clp   sub_samA_huge0   "   ?id " bahuwa_aXika )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_huge0
(declare (salience 5000))
(id-root ?id huge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 crush)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_aXika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " huge.clp   obj_samA_huge0   "   ?id " bahuwa_aXika )" crlf))
)
