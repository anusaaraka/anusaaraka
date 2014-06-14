;##############################################################################
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
;########################################################################
;Added by jagriti(5.3.2014)
;Everyone praised his stunning mind.[rajpal]
;सब ने उसके विलक्षण बुद्धि की प्रशंसा की . 
(defrule stunning0
(declare (salience 5000))
(id-root ?id stunning)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
(id-root ?id1 mind|ability|intellect)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vilakRaNa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stunning.clp 	stunning0 "  ?id "  vilakRaNa)" crlf))
)

;...default rule...
;Added by jagriti(5.3.2014)
;A stunning news. [rajpal]
;एक होश उडा देने वाले समाचार . 
(defrule stunning1
(declare (salience 100))
(id-root ?id stunning)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hoSa_udZA_xene_vAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stunning.clp 	stunning1  "  ?id " hoSa_udZA_xene_vAlA )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_stunning0
(declare (salience 5000))
(id-root ?id stunning)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mind|ability|intellect)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vilakRaNa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " stunning.clp   sub_samA_stunning0   "   ?id " vilakRaNa)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_stunning0
(declare (salience 5000))
(id-root ?id stunning)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mind|ability|intellect)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vilakRaNa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " stunning.clp   obj_samA_stunning0   "   ?id " vilakRaNa)" crlf))
)
