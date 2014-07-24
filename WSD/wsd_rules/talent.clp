;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02@gmail.com)
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
;There is a wealth of young talent in British theatre.[oald]
(defrule talent0		
(declare (salience 4800))
(id-root ?id talent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1) 
(id-root ?id1 young|legal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiBAvAna_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  talent.clp 	talent0   "  ?id "  prawiBAvAna_vyakwi )" crlf))
)

;;;@@@   ---Added by Prachi Rathore
;He is a great talent.[oald]
;वह एक बढिया प्रतिभावान व्यक्ति है . 
(defrule talent2		
(declare (salience 4800))
(id-root ?id talent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiBAvAna_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  talent.clp 	talent2   "  ?id "  prawiBAvAna_vyakwi )" crlf))
)
;xxxxxxxxxxxxxxxxxxxxxxxxxxx DEFAULT RULE xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;to have great artistic talent.[oald]
;बढिया कलात्मक प्रतिभा . 
(defrule talent1		
(declare (salience 2100))
(id-root ?id talent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  talent.clp 	talent1   "  ?id "  prawiBA )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_talent0
(declare (salience 4800))
(id-root ?id talent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 young|legal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiBAvAna_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " talent.clp   sub_samA_talent0   "   ?id " prawiBAvAna_vyakwi )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_talent0
(declare (salience 4800))
(id-root ?id talent)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 young|legal)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiBAvAna_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " talent.clp   obj_samA_talent0   "   ?id " prawiBAvAna_vyakwi )" crlf))
)
