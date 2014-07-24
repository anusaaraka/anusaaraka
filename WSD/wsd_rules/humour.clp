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


;@@@ Added by Prachi Rathore[14-3-14]
; She was in a good humor all day. [m-w]
;वह  पूरा दिन अच्छे मिजाज में थी . 
(defrule humour4
(declare (salience 5050))
(id-root ?id humour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mijAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  humour.clp 	humour4    "  ?id "  mijAja )" crlf)
)
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[14-3-14]
;a story full of gentle humour
;कोमल हास्य से भरी कहानी
(defrule humour1
(declare (salience 400))
(id-root ?id humour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAsya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  humour.clp 	humour1   "  ?id "   hAsya)" crlf))
)

;@@@ Added by Prachi Rathore[14-3-14]
; I applied for the job just to humour my parents. [cambridge]
;मैंने  बस मेरे माँ बाप का मन रखने के लिये नौकरी के लिये आवेदन किया .
(defrule humour2
(declare (salience 400))
(id-root ?id humour)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mana_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  humour.clp 	humour2   "  ?id "   mana_raKa)" crlf))
)

;@@@ Added by Prachi Rathore[14-3-14]
;
(defrule humour3
(declare (salience 200))
(id-root ?id humour)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAsya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  humour.clp 	humour3   "  ?id "   hAsya)" crlf))
)
