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
;@@@ Added by Prachi Rathore[15-2-14]
;I'm exhausted - I think I'll just go home and veg out in front of the TV tonight.[oald]
;मैं थक  गया हूँ-  मैं सोचता हूँ कि मैं बस घर चला जाऊँ और आज की रात  दूरदर्शन के सामने  आराम करूँ . 
(defrule veg0
(declare (salience 5000))
(id-root ?id veg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 ArAma_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " veg.clp 	veg0  "  ?id "  " ?id1 "  ArAma_kara )" crlf))
)



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[15-2-14]
;A fruit and veg stall. [oald]
;फल और सब्जी  का स्टाल . 
(defrule veg1
(declare (salience 300))
(id-root ?id veg)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  veg.clp 	veg1   "  ?id "  sabjI )" crlf))
)


;@@@ Added by Prachi Rathore[15-2-14]
;A fruit and veg stall. [oald]
;फल और सब्जी  का स्टाल . 
(defrule veg2
(declare (salience 200))
(id-root ?id veg)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sabjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  veg.clp 	veg2   "  ?id "  sabjI )" crlf))
)
