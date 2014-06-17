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

;@@@ added by Pramila(BU) on 17-12-2013
;The new job was not without its excitements.        ;oald
;नई नौकरी उत्साहकवर्धक थी.
(defrule excitement0
(declare (salience 5000))
(id-root ?id excitement)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_niReXaka  ?id1 ?id2)
(kriyA-without_saMbanXI  ?id1 ?id)
(id-word =(- ?id 2) without)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 (- ?id 2)  uwsAhavarXaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " excitement.clp	excitement0  "  ?id "  " ?id2 " "(- ?id 2)"  uwsAhavarXaka  )" crlf))
)

;@@@ added by Pramila(BU) on 17-12-2013
;Obviously they worked at night, he said with excitement.
;इससे स्‍पष्ट है कि उन्‍होंने रात में काम किया है राजवीर ने उत्तेजित होकर कहा।
(defrule excitement1
(declare (salience 5000))
(id-root ?id excitement)
?mng <-(meaning_to_be_decided ?id)
(kriyA-with_saMbanXI  ?id1 ?id)
(kriyA-subject  ?id1 ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-word =(- ?id 1) with) 
(id-root ?id1 say|speak|tell)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) uwwejiwa_ho_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " excitement.clp	excitement1  "  ?id "  " (- ?id 1) "  uwwejiwa_ho_kara  )" crlf))
)

;@@@ added by Pramila(BU) on 17-12-2013
;There was a note of excitement in his voice.     ;oald
;उसकी आवाज में एक उत्तेजना थी.
(defrule excitement2
(declare (salience 4000))
(id-root ?id excitement)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  excitement.clp 	excitement2   "  ?id " uwwejanA  )" crlf))
)

;@@@ added by Pramila(BU) on 17-12-2013
(defrule excitement3
(declare (salience 0))
(id-root ?id excitement)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  excitement.clp 	excitement3   "  ?id " uwwejanA  )" crlf))
)


