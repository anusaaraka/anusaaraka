;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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


;@@@ Added by Pramila(BU) on 29-03-2014
;He is out of occupation these days.    ;shiksharthi
;वह इन दिनों बेरोजगार है.
(defrule occupation1
(declare (salience 5000))
(id-root ?id occupation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-word =(- ?id 1) of)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_word_mng ?id ?id1 (- ?id 1) berojagAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_word_mng   " ?*wsd_dir* " occupation.clp 	occupation1  "  ?id "  " ?id1 (- ?id 1)  "  berojagAra )" crlf))
)


;@@@ Added by Pramila(BU) on 29-03-2014
;Whose occupation on this land is recognised?   ;shiksharthi
;इस जमीन पर किसका कब्जा मान्य है ?
(defrule occupation2
(declare (salience 5000))
(id-root ?id occupation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kabjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupation.clp 	occupation2   "  ?id " kabjA  )" crlf))
)

;-------------default rules--------------------------
;@@@ Added by Pramila(BU) on 29-03-2014
; He is cobbler by occupation.    ;shiksharthi
; वह रोजगार से मोची है.
(defrule occupation3
(declare (salience 100))
(id-root ?id occupation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupation.clp 	occupation3   "  ?id " vyavasAya  )" crlf))
)

;@@@ Added by Pramila(BU) on 29-03-2014
(defrule occupation4
(declare (salience 0))
(id-root ?id occupation)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occupation.clp 	occupation4   "  ?id " vyavasAya  )" crlf))
)
