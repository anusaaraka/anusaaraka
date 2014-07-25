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

;@@@ Added by Pramila(BU) on 28-03-2014
;You are under an obligation to pay taxes.   ;shiksharthi
;तुम कर चुकाने के लिए बाध्य हो.
(defrule obligation0
(declare (salience 4900))
(id-word ?id obligation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-under_saMbanXI  ?id1 ?id)
(id-word =(- ?id 1) an)
(id-word =(- ?id 2) under)
(saMjFA-to_kqxanwa  ?id ?id2)
(id-cat_coarse ?id2 verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) (- ?id 2) bAXya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " obligation.clp 	obligation0  "  ?id "  "  (- ?id 1) (- ?id 2)  "  bAXya )" crlf))
)

;@@@ Added by Pramila(BU) on 28-03-2014
;There is no obligation for you to buy this radio.  ;shiksharthi
;तुम यह रेडियो खरीदने के लिए बाध्य नहीं हो.
(defrule obligation1
(declare (salience 4500))
(id-word ?id obligation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(saMjFA-to_kqxanwa  ?id ?id1)
;(viSeRya-for_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAXya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obligation.clp 	obligation1   "  ?id "  bAXya )" crlf))
)

;@@@ Added by Pramila(BU) on 28-03-2014
;I shall always be under an obligation to you.  ;shiksharthi
;मै हमेशा तुम्हारा आभारी रहूँगा.
(defrule obligation2
(declare (salience 4900))
(id-word ?id obligation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-under_saMbanXI  ?id1 ?id)
(kriyA-to_saMbanXI  ?id1 ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
(id-word =(- ?id 1) an)
(id-word =(- ?id 2) under)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) (- ?id 2) ABArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " obligation.clp 	obligation2  "  ?id "  "  (- ?id 1) (- ?id 2)  "  ABArI )" crlf))
)

;@@@ Added by Pramila(BU) on 28-03-2014
;He does not care about his obligation to his children.  ;shiksharthi
;वह बच्चों के प्रति अपने कर्त्तव्य की चिंता नहीं करता है.
(defrule obligation3
(declare (salience 4500))
(id-word ?id obligation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-about_saMbanXI  ?id1 ?id)
(kriyA-to_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id karwwavya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obligation.clp 	obligation3   "  ?id "  karwwavya)" crlf))
)


;----------------default rules----------------------------
;@@@ Added by Pramila(BU) on 28-03-2014
;They reminded him of his contractual obligations.  ;oald
;उन्होंने उसके संविदात्मक वचनों को याद दिलाया
(defrule obligation4
(declare (salience 100))
(id-word ?id obligation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vacana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obligation.clp 	obligation4   "  ?id "  vacana )" crlf))
)

;@@@ Added by Pramila(BU) on 28-03-2014
(defrule obligation5
(declare (salience 0))
(id-word ?id obligation)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vacana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obligation.clp 	obligation5   "  ?id "  vacana )" crlf))
)

