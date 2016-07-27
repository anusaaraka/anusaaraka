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

;@@@ Added by Pramila(BU) on 29-01-2014
;He encroached on the field of his neighbour.        ;shiksharthi
;उसने अपने पड़ोसी के खेत में अनाधिकार प्रवेश कर लिया.  
(defrule encroach0
(declare (salience 4950))
(id-root ?id encroach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-word ?id3 on)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id3 meM_anAXikAra_praveSa_kara_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " encroach.clp	encroach0  "  ?id "  " ?id1 "  meM_anAXikAra_praveSa_kara_le  )" crlf))
)


;@@@ Added by Pramila(BU) on 29-01-2014
;I won't encroach on your time any longer.    ;oald
;मैं आपका और अधिक समय नष्ट नहीं करूँगा
(defrule encroach1
(declare (salience 4950))
(id-root ?id encroach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 time)
(id-word ?id3 on)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id3 naRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " encroach.clp	encroach1  "  ?id "  " ?id1 "  naRta_kara  )" crlf))
)

;@@@ Added by Pramila(BU) on 29-01-2014
;What the government is proposing encroaches on the rights of individuals.  ;cald
;सरकार जो प्रस्ताव रख रही है,व्यक्तियों के अधिकारों को  छीनता है.
(defrule encroach2
(declare (salience 5000))
(id-root ?id encroach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?id1)
(id-root ?id1 right)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encroach.clp 	encroach2   "  ?id "  CIna )" crlf))
)

;@@@ Added by Pramila(BU) on 29-01-2014
;He never allows work to encroach upon his family life.    ;oald
;वह काम को अपने परिवार के जीवन में विघ्न डालने की कभी अनुमति नहीं देता है  .
(defrule encroach3
(declare (salience 5000))
(id-root ?id encroach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-upon_saMbanXI  ?id ?id2)
(id-word ?id3 upon)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id3 meM_viGna_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " encroach.clp	encroach3  "  ?id "  " ?id1 "  meM_viGna_dAla  )" crlf))
)

;---------------------default rules----------------------------------------
;@@@ Added by Pramila(BU) on 29-01-2014
;Towns are encroaching on the countryside.        ;shiksharthi
;शहर देहात की तरफ अतिक्रमण कर रहे हैं.
(defrule encroach4
(declare (salience 4000))
(id-root ?id encroach)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awikramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encroach.clp 	encroach4   "  ?id "  awikramaNa_kara )" crlf))
)


;@@@ Added by Pramila(BU) on 29-01-2014
(defrule encroach5
(declare (salience 0))
(id-root ?id encroach)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id awikramaNa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  encroach.clp 	encroach5   "  ?id "  awikramaNa_kara )" crlf))
)

