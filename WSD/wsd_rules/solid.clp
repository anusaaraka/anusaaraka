;#############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;######################################################################
;@@@ Added by jagriti(7.3.2014)
;He worked for five solid hours.[rajpal]
;उसने निरन्तर पाँच घण्टों तक काम किया . 
(defrule solid0
(declare (salience 5000))
(id-root ?id solid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1  ?str&:(and (neq (numberp ?str) TRUE)(gdbm_lookup_p "time.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niranwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solid.clp 	solid0   "  ?id "  niranwara )" crlf))
)
;@@@ Added by jagriti(7.3.2014)
;You will get solid support in the assembly.[rajpal]
;सदन में अापको पूरा-पूरा समर्थन मिलेगा . 
(defrule solid1
(declare (salience 4900))
(id-root ?id solid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 support)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA-pUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solid.clp 	solid1   "  ?id "  pUrA-pUrA )" crlf))
)
;...default rule..
;@@@ Added by jagriti(7.3.2014)
;It contains solid material.[rajpal]
;यह ठोस पदार्थ का बना है . 
(defrule solid2
(declare (salience 100))
(id-root ?id solid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Tosa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  solid.clp 	solid2   "  ?id "  Tosa )" crlf))
)



;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_solid0
(declare (salience 5000))
(id-root ?id solid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (neq (numberp ?str) TRUE)(gdbm_lookup_p "time.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niranwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " solid.clp   sub_samA_solid0   "   ?id " niranwara )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_solid0
(declare (salience 5000))
(id-root ?id solid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (neq (numberp ?str) TRUE)(gdbm_lookup_p "time.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niranwara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " solid.clp   obj_samA_solid0   "   ?id " niranwara )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_solid1
(declare (salience 4900))
(id-root ?id solid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 support)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA-pUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " solid.clp   sub_samA_solid1   "   ?id " pUrA-pUrA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_solid1
(declare (salience 4900))
(id-root ?id solid)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 support)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pUrA-pUrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " solid.clp   obj_samA_solid1   "   ?id " pUrA-pUrA )" crlf))
)
