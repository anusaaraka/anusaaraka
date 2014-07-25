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
;;@@@   ---Added by Prachi Rathore
;The[ cuttings] were planted in earthen beds or polythene bags filled with[ virgin] soil.[gyannidhi]
;उसका तना वास्‍तव में अंकुर नहीं था बल्‍कि वह एक ऐसी पत्ती थी जो अभी ‍तक खिल नहीं पाई थी। 
(defrule virgin0
(declare (salience 5000))
(id-root ?id virgin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 soil)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_juwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  virgin.clp 	virgin0   "  ?id "  binA_juwI )" crlf)
))

;;@@@   ---Added by Prachi Rathore
;Virgin forest. [oald]
;विशुद्ध जङ्गल . 
(defrule virgin1
(declare (salience 5000))
(id-root ?id virgin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 forest|snow|land|territory)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  virgin.clp 	virgin1   "  ?id "  viSuxXa )" crlf)
))


;;@@@   ---Added by Prachi Rathore
;A political virgin.[oald]
;एक राजनैतिक नौसिखिया . 
(defrule virgin2
(declare (salience 5000))
(id-root ?id virgin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 political|internet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOsiKiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  virgin.clp 	virgin2   "  ?id "  nOsiKiyA )" crlf)
))


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;;@@@   ---Added by Prachi Rathore
;A virgin bride.[oald]
;एक कुँआरी नववधू . 
(defrule virgin3
(declare (salience 4000))
(id-root ?id virgin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuzArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  virgin.clp 	virgin3   "  ?id "  kuzArI )" crlf))
)

(defrule virgin4
(declare (salience 4000))
(id-root ?id virgin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuzArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  virgin.clp 	virgin4   "  ?id "  kuzArI )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_virgin0
(declare (salience 5000))
(id-root ?id virgin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 soil)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_juwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " virgin.clp   sub_samA_virgin0   "   ?id " binA_juwI )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_virgin0
(declare (salience 5000))
(id-root ?id virgin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 soil)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id binA_juwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " virgin.clp   obj_samA_virgin0   "   ?id " binA_juwI )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_virgin1
(declare (salience 5000))
(id-root ?id virgin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 forest|snow|land|territory)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " virgin.clp   sub_samA_virgin1   "   ?id " viSuxXa )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_virgin1
(declare (salience 5000))
(id-root ?id virgin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 forest|snow|land|territory)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSuxXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " virgin.clp   obj_samA_virgin1   "   ?id " viSuxXa )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_virgin2
(declare (salience 5000))
(id-root ?id virgin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 political|internet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOsiKiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " virgin.clp   sub_samA_virgin2   "   ?id " nOsiKiyA )" crlf)
))

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_virgin2
(declare (salience 5000))
(id-root ?id virgin)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 political|internet)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nOsiKiyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " virgin.clp   obj_samA_virgin2   "   ?id " nOsiKiyA )" crlf)
))
