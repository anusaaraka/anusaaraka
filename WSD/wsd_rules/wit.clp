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

;@@@ Added by Pramila(BU) on 19-03-2014
;His talk was full of wit.  ;shiksharthi
;उसकी वार्ता वाग्विदग्धतापूर्ण थी. 
(defrule wit0
(declare (salience 4900))
(id-root ?id wit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-word =(- ?id 1) of)
(id-word =(- ?id 2) full)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) (- ?id 2) vAgvixagXawApUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wit.clp 	wit0  "  ?id "  "  (- ?id 1) (- ?id 2)  "  vAgvixagXawApUrNa )" crlf))
)

;@@@ Added by Pramila(BU) on 19-03-2014
;He is a well-known wit in the village.  ;shiksharthi
;वह गाँव में प्रसिद्ध हाजिर-जवाब व्यक्ति है. 
(defrule wit1
(declare (salience 4900))
(id-root ?id wit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hAjira-javAba_vyakwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wit.clp 	wit1   "  ?id "  hAjira-javAba_vyakwi )" crlf)
))

;------------default rules-----------------------------------
;@@@ Added by Pramila(BU) on 19-03-2014
;He has not the wit to appreciate it. ;shiksharthi
;उसमें इसका आदर करने की बुद्धि नहीं है.
(defrule wit2
(declare (salience 100))
(id-root ?id wit)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buxXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wit.clp 	wit2   "  ?id "  buxXi )" crlf)
))

;@@@ Added by Pramila(BU) on 19-03-2014
(defrule wit3
(declare (salience 0))
(id-root ?id wit)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buxXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  wit.clp 	wit3   "  ?id "  buxXi )" crlf)
))
