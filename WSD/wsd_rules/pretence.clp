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



;@@@ Added by Sonam Gupta MTech IT Banasthali 17-2-2014
;He absented himself under the pretence of illness. [rajpal]
;वह बीमारी का बहाना कर के अनुपस्थित रहा था  .
(defrule pretence1
(declare (salience 5000))
(id-root ?id pretence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-under_saMbanXI  ? ?id)
(id-root ?id1 under)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pretence.clp 	pretence1  "  ?id "  bahAnA )" crlf))
)




;@@@ Added by Sonam Gupta MTech IT Banasthali 17-2-2014
;The police charged him with obtaining money under false pretences. [M-W]
;पोलिस ने उसे कपट के तहत धन लेने के कारण गिरफ्तार किया  .
(defrule pretence2
(declare (salience 5500))
(id-root ?id pretence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 false)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kapata))
(assert (kriyA_id-object_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pretence.clp  pretence2  "  ?id "  " ?id1 "  kapata  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 17-2-2014
;He is not so rich, it is only a pretence. [rajpal]
;वह इतना धनी नहीं है, यह मात्र दिखावा है .
(defrule pretence3
(id-root ?id pretence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pretence.clp 	pretence3   "  ?id "  xiKAvA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 17-2-2014
(defrule pretence4
(id-root ?id pretence)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pretence.clp 	pretence4   "  ?id "  xiKAvA )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_pretence2
(declare (salience 5500))
(id-root ?id pretence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 false)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kapata))
(assert (kriyA_id-object_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " pretence.clp   sub_samA_pretence2   "   ?id " " ?id1 " kapata )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_pretence2
(declare (salience 5500))
(id-root ?id pretence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 false)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kapata))
(assert (kriyA_id-object_viBakwi ?id ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng " ?*wsd_dir* " pretence.clp   obj_samA_pretence2   "   ?id " " ?id1 " kapata )" crlf))
)
