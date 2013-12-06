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
;A host of possibilities.[OALD]
;सम्भावनाओं की अधिक सङ्ख्या . 
(defrule host0
(declare (salience 5000))
(id-root ?id host)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXika_saMKyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  host.clp 	host0   "  ?id "  aXika_saMKyA )" crlf))
)

; He/she is the host of the talk show.
;वह/वह TALK SHOW की मेजबान है . 
(defrule host4
(declare (salience 5100))
(id-root ?id host)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 show)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mejabAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  host.clp 	host4   "  ?id "  mejabAna )" crlf))
)

;Dennis Mitchell, host for 21 years of syndicated radio show. [COCA]
;देन्नीस मितचेल, 21 वर्षों से सिन्डिकेट रेडिओ प्रदर्शन के  मेजबान . 
(defrule host5
(declare (salience 5100))
(id-root ?id host)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id2)
(saMjFA-saMjFA_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mejabAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  host.clp 	host5   "  ?id "  mejabAna )" crlf))
)

;Japan is playing host to the next international conference.[CAMBRIDGE]
;जापान अगले अन्तर्राष्ट्रीय सम्मेलन की मेजबानी कर रहा है. 
(defrule host6
(declare (salience 5100))
(id-root ?id host)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
;(kriyA-subject  ?id1 ?id)
;(kriyA-to_saMbanXI  ?id1 ?id2)
(id-root =(- ?id 1) play)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) mejabAnI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name--affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  host.clp 	host6   "  ?id "  mejabAnI_kara )" crlf)
)
)

;-------------DEFAULT RULE------------------------------
;We thanked our hosts for the lovely evening.[CAMBRIDGE]
;हमने मनोहर सन्ध्या के लिये हमारे मेजबान को धन्यवाद दिया . 
(defrule host1
(declare (salience 2000))
(id-root ?id host)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mejabAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  host.clp 	host1   "  ?id "  mejabAna )" crlf))
)

;Argentina has submitted an application to host the World Cup.[CAMBRIDGE]
;अर्जेंटीना ने विश्व कप की मेजबानी के लिए एक आवेदन-पत्र जमा किया है.
(defrule host2
(declare (salience 2000))
(id-root ?id host)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mejabAnI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  host.clp 	host2   "  ?id "  mejabAnI_kara )" crlf))
)

;We thanked our hosts for the lovely evening.[CAMBRIDGE]
;हमने मनोहर सन्ध्या के लिये हमारे मेजबान को धन्यवाद दिया . 
(defrule host3
(declare (salience 1900))
(id-root ?id host)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mejabAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  host.clp 	host3   "  ?id "  mejabAna )" crlf))
)
