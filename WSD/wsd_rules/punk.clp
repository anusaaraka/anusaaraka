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

;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
;A punk band. [oald]
;एक सदिश राशि वह राशि है जिसमें परिमाण तथा दिशा दोनों होते हैं तथा वह योग सम्बन्धी त्रिभुज के नियम अथवा समानान्तर चतुर्भुज के योग सम्बन्धी नियम का पालन करती है .
(defrule punk1
(declare (salience 5000))
(id-root ?id punk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
(id-root ?id1 band|music|musician)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punk.clp 	punk1   "  ?id "  paMka )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
(defrule punk2
(id-root ?id punk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ugra_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punk.clp 	punk2   "  ?id "  ugra_vyakwi )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 14-3-2014
(defrule punk3
(id-root ?id punk)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ugra_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punk.clp 	punk3   "  ?id "  ugra_vyakwi )" crlf))
)


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_punk1
(declare (salience 5000))
(id-root ?id punk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id ?id1)
(id-root ?id1 band|music|musician)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " punk.clp   sub_samA_punk1   "   ?id " paMka )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_punk1
(declare (salience 5000))
(id-root ?id punk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(object-object_samAnAXikaraNa ?id ?id1)
(id-root ?id1 band|music|musician)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " punk.clp   obj_samA_punk1   "   ?id " paMka )" crlf))
)
