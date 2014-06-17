;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 18/03/2014
;For the car of a particular make the braking distance was found to be 10 m 20 m 34 m and 50 m corresponding to velocities of 11 15 20 and 25 ms which are nearly consistent with the above formula.[ncert]
;कार के किसी विशिष्ट मॉडल के लिए विभिन्न वेगों 11, 15, 20 तथा 25 m/s के सङ्गत अवरोधन दूरियाँ क्रमशः 10 m, 20 m, 34 m तथा 50 m पाई गई हैं जो उपरोक्त समीकरण से प्राप्त मानों के लगभग सङ्गत हैं 
(defrule brake2
(declare (salience 3000))
(id-root ?id brake)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-word ?id1 distance)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaroXana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brake.clp 	brake2   "  ?id "  avaroXana )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;High interest rates are a brake on the economy.[oald]
;उच्च ब्याज दर  अर्थव्यवस्था पर एक रुकावट है.
(defrule brake3
(declare (salience 3000))
(id-root ?id brake)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-on_saMbanXI  ?id ?id1)
;(id-word ?id1 economy);uncomment if any conflict is found
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rukAvata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brake.clp 	brake3   "  ?id "  rukAvata )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;He braked the car and pulled in to the side of the road.[oald]
;उसने गाड़ी को रोका और सड़क के किनारे ले गया
(defrule brake4
(declare (salience 3000))
(id-root ?id brake)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brake.clp 	brake4   "  ?id " roka  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  brake.clp 	brake4   "  ?id " ko )" crlf)
)
)

;*******************DEFAULT RULES**************************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;To put on the brakes.[oald]
;ब्रेक लगाना
(defrule brake0
(declare (salience 0))
(id-root ?id brake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id breka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brake.clp 	brake0   "  ?id "  breka )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;You don't need to brake at every bend.[oald]
;आपको हर मोड़ पर ब्रेक लगाने की जरूरत नहीं है.
(defrule brake1
(declare (salience 0))
(id-root ?id brake)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id breka_lagA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  brake.clp 	brake1   "  ?id " breka_lagA  )" crlf))
)

;********************************************************* EXAMPLES **************************************************************************



;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_brake2
(declare (salience 3000))
(id-root ?id brake)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 distance)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaroXana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " brake.clp   sub_samA_brake2   "   ?id " avaroXana )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_brake2
(declare (salience 3000))
(id-root ?id brake)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-word ?id1 distance)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaroXana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " brake.clp   obj_samA_brake2   "   ?id " avaroXana )" crlf))
)
