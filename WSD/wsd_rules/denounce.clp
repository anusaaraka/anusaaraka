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
;@@@ Added by Pramila(Banasthali University) on 06-01-2014
;He denounced them as traitors.       ;shiksharthi
;उसने उन पर द्रोही होने का दोष मढ़ा.
;They were denounced as spies.      ;oald
;उन पर जासूस होने का दोष मढ़ा गया.
(defrule denounce0
(declare (salience 5000))
(id-root ?id denounce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-as_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xoRa_maDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  denounce.clp 	denounce0   "  ?id "  xoRa_maDZa )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-01-2014
;The teacher denounced the boy who has stolen the book.       ;shiksharthi
;अध्यापक ने उस लड़के की भर्त्सना की जिसने किताब चुराई थी.
(defrule denounce1
(declare (salience 5000))
(id-root ?id denounce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(viSeRya-jo_samAnAXikaraNa  ?id1 ?id2)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BarwsanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  denounce.clp 	denounce1   "  ?id "  BarwsanA_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-01-2014
;The boy denounced him to the headmaster.     ;shiksharthi
;लड़के ने प्रधानाध्यापक से उसकी शिकायत की.
;Many people denounced their neighbours to the secret police.         ;oald
;कई लोगों ने गुप्त पुलिस को अपने पड़ोसियों की शिकायत की.
(defrule denounce2
(declare (salience 5000))
(id-root ?id denounce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikAyawa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  denounce.clp 	denounce2   "  ?id "  SikAyawa_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-01-2014
;To denounce a treaty.       ;shiksharthi
;संधि रद्द करना.
(defrule denounce3
(declare (salience 5000))
(id-root ?id denounce)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject  ?id ?id1)(kriyA-object  ?id ?id1))
(id-word ?id1 treaty)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raxxa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  denounce.clp 	denounce3   "  ?id "  raxxa_kara )" crlf))
)

;-------------------default rules-------------------------------------
;@@@ Added by Pramila(Banasthali University) on 06-01-2014
;The government's economic policy has been denounced on all sides.       ;cald
;सरकार की आर्थिक नीति के सभी पक्षों पर निंदा की गई.
(defrule denounce4
(declare (salience 4000))
(id-root ?id denounce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niMxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  denounce.clp 	denounce4   "  ?id "  niMxA_kara )" crlf))
)

;@@@ Added by Pramila(Banasthali University) on 06-01-2014
(defrule denounce5
(declare (salience 0))
(id-root ?id denounce)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niMxA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  denounce.clp 	denounce5   "  ?id "  niMxA_kara )" crlf))
)
