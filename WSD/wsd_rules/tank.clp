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
;@@@ Added by Prachi Rathore[1-4-14]
;We stopped to tank the car up.[oald]
;हम गाडी में इंधन भरवाने के लिये रुके . 
(defrule tank1
(declare (salience 5000))
(id-root ?id tank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 iMXana_BaravA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tank.clp	tank1  "  ?id "  " ?id1 "  iMXana_BaravA )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx


;@@@ Added by Prachi Rathore[1-4-14]
;Car exports in the year to April tanked 23 percent. [cambridge]
;वर्ष में अप्रेल तक गाडियों का निर्यात 23 प्रतिशत गिर गया . 
(defrule tank2
(declare (salience 400))
(id-root ?id tank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gira_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tank.clp 	tank2   "  ?id "  gira_jA )" crlf))
)

;@@@ Added by Prachi Rathore[1-4-14]
;A water tank.[oald]
;एक पानी की टंकी . 
(defrule tank3
(declare (salience 400))
(id-root ?id tank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id taMkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tank.clp 	tank3   "  ?id "  taMkI )" crlf))
)

;@@@ Added by Prachi Rathore[1-4-14]

(defrule tank4
(declare (salience 200))
(id-root ?id tank)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id taMkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tank.clp 	tank4   "  ?id "  taMkI )" crlf))
)
