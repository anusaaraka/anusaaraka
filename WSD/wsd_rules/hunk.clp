
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
;##########################################################################

;@@@ Added by Prachi Rathore[26-2-14]
;He's a real hunk.[oald]
;वह एक हष्ट पुष्ट व्यक्ति है . 
(defrule hunk0
(declare (salience 5000))
(id-root ?id hunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id haRta_puRta_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hunk.clp 	hunk0   "  ?id "  haRta_puRta_vyakwi )" crlf))
)



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[26-2-14]
;a hunk of bread.[oald]
;ब्रेड का बडा टुकडा . 
(defrule hunk1
(declare (salience 400))
(id-root ?id hunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badA_tukadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hunk.clp 	hunk1   "  ?id " badA_tukadA )" crlf))
)


;@@@ Added by Prachi Rathore[26-2-14]
;a hunk of bread.[oald]
;ब्रेड का बडा टुकडा . 
(defrule hunk2
(declare (salience 200))
(id-root ?id hunk)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badA_tukadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hunk.clp 	hunk2   "  ?id " badA_tukadA )" crlf))
)

