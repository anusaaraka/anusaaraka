;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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

;@@@ Added by Pramila(BU) on 15-02-2014
;She was outspoken in her criticism of the plan.  ;oald
;वह योजना की अपनी आलोचना में स्पष्टवादी थी. 
;Outspoken people are not always liked.   ;shiksharthi
;स्पष्टवादी लोग हमेशा पसंद नहीं किए जाते.
(defrule outspoken1
(declare (salience 4900))
(id-root ?id outspoken)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(subject-subject_samAnAXikaraNa  ?id1 ?id)(viSeRya-viSeRaNa  ?id ?id1))
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRtvAxI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outspoken.clp 	outspoken1   "  ?id "  spaRtvAxI )" crlf)
))

;-------------default rules---------------------------------
;@@@ Added by Pramila(BU) on 15-02-2014
;He made an outspoken remark  ;shiksharthi
;उसने स्पष्ट टिप्पणी की.
(defrule outspoken2
(declare (salience 100))
(id-root ?id outspoken)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outspoken.clp 	outspoken2   "  ?id "  spaRta )" crlf)
))


;@@@ Added by Pramila(BU) on 15-02-2014
(defrule outspoken3
(declare (salience 0))
(id-root ?id outspoken)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outspoken.clp 	outspoken3   "  ?id "  spaRta )" crlf)
))


