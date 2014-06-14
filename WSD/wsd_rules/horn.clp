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
;@@@ Added by Prachi Rathore
;The driver in the car behind me blew his horn.
; added hoot in the list by prachi 6-2-14
(defrule horn0
(declare (salience 5000))
(id-root ?id horn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-object  ?id1 ?id)(kriyA-subject  ?id1 ?id))
(id-root ?id1 honk|blow|blare|hoot)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BoMpU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  horn.clp 	horn0   "  ?id "  BoMpU)" crlf))
)

;@@@ Added by Prachi Rathore
;Whenever I start to talk, he always horns in. [m-w]
;जब कभी मैं बातचीत करना शुरु करता हूँ, वह हमेशा दखल देता है . 
(defrule horn1
(declare (salience 4900))
(id-root ?id horn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 in)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xaKala_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " horn.clp	horn1  "  ?id "  " ?id1 "  xaKala_xe  )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore
;utensils made of horn.[m-w]
(defrule horn2
(declare (salience 4000))
(id-root ?id horn)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIMga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  horn.clp 	horn2   "  ?id "  sIMga )" crlf))
)
