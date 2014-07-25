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

;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;His face had been beaten to a pulp. [oald]
;उसका चेहरा भुर्ते जैसे पीटा गया था  .
(defrule pulp1
(declare (salience 5000))
(id-root ?id pulp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-to_saMbanXI  ?verb ?id)
(kriyA-subject  ?verb ?id1)
(id-root ?id1 face|body)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Burwe_jEse))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulp.clp 	pulp1   "  ?id "  Burwe_jEse )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;Pulpy magazines. [M-W]
;सस्ती मैगज़ीन .
(defrule pulp2
(declare (salience 5000))
(id-root ?id pulp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 magazine)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saswI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulp.clp 	pulp2   "  ?id "  saswI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;Unsold copies of the novel had to be pulped. [oald]
;उपन्यास की बिना बिकी प्रतियों की लुगदी बनानी पड़ेगी  .
(defrule pulp3
(declare (salience 4000))
(id-root ?id pulp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lugaxI_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulp.clp 	pulp3   "  ?id "  lugaxI_banA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
;Cook the fruit slowly until soft and pulpy. [oald]
;फलों को धीमे पकाओ जब तक वो मुलायम और गूदेदार ना हो जाए .
(defrule pulp4
(declare (salience 4000))
(id-root ?id pulp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gUxexAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulp.clp 	pulp4   "  ?id "  gUxexAra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
(defrule pulp5
(declare (salience 4000))
(id-root ?id pulp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gUxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulp.clp 	pulp5   "  ?id "  gUxA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 24-3-2014
(defrule pulp6
(id-root ?id pulp)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gUxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pulp.clp 	pulp6   "  ?id "  gUxA )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_pulp2
(declare (salience 5000))
(id-root ?id pulp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 magazine)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saswI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pulp.clp   sub_samA_pulp2   "   ?id " saswI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_pulp2
(declare (salience 5000))
(id-root ?id pulp)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 magazine)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saswI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " pulp.clp   obj_samA_pulp2   "   ?id " saswI )" crlf))
)
