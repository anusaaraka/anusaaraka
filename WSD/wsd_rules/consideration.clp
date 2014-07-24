;##############################################################################
;#  Copyright (C) 2002-2005 Preeti Pradhan (pradhan.preet@gmail.com)
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

;@@@ Added by Preeti(10-12-13)
;Consideration of these symmetries helps one arrive at results much faster than otherwise by a straightforward calculation. [By Mail]
;eka sIXe sIXe gaNanA kI bajaya ina samamiwiyoM ko XyAna_meM_raKane se hame  pariNAmoM waka  bahuwa jalxa pahuzcane  meM sahAyawA milawI hE.
(defrule consideration1
(declare (salience 1050))
(id-root ?id consideration)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XyAna_meM_raKane_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consideration.clp 	consideration1   "  ?id "  XyAna_meM_raKane_se )" crlf))
)

;@@@ Added by Preeti(10-12-13)
;They always treated me with consideration. [Cambridge Learner’s Dictionary]
;ve muJase hameSA Axara ke sAWa  vyavahAra krawe hEM.
(defrule consideration2
(declare (salience 1100))
(id-root ?id consideration)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-with_saMbanXI  ?id1 ?id)(kriyA-object  ?id1 ?id) (kriyA-subject  ?id1 ?id))
(id-root ?id1 treat|show|forget)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Axara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consideration.clp 	consideration2   "  ?id "  Axara )" crlf))
)

;@@@ Added by Preeti(10-12-13)
;Safety is our main consideration. 
;surakRA hamArI pramuKa cinwA hE.
(defrule consideration3
(declare (salience 1150))
(id-root ?id consideration)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-word ?id1  main|important)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cinwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consideration.clp 	consideration3   "  ?id "  cinwA )" crlf))
)

;#############################Defaults rule#######################################
;@@@ Added by Preeti(10-12-13)
;After a few moments' consideration, he began to speak. [ Oxford Advanced Learner's Dictionary]
;kuCa kRaNoM ke soca vicAra ke bAxa, usane bolanA AramBa kiyA.
(defrule consideration0
(declare (salience 1000))
(id-root ?id consideration)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id soca_vicAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  consideration.clp 	consideration0   "  ?id "  soca_vicAra )" crlf))
)
;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_consideration3
(declare (salience 1150))
(id-root ?id consideration)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-word ?id1  main|important)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cinwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " consideration.clp   sub_samA_consideration3   "   ?id " cinwA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_consideration3
(declare (salience 1150))
(id-root ?id consideration)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-word ?id1  main|important)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cinwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " consideration.clp   obj_samA_consideration3   "   ?id " cinwA )" crlf))
)
