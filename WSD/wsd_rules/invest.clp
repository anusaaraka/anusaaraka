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
;@@@ Added by Prachi Rathore[5-3-14]
;My friend was invested with new cloths.[shiksharthi kosh]
;मेरा मित्र नये कपडों से सज्जित किया गया था . 
(defrule invest0
(declare (salience 5000))
(id-root ?id invest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(kriyA-with_saMbanXI  ?id ?id2)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(id-root ?id2 cloth)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sajjiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invest.clp 	invest0   "  ?id " sajjiwa_kara)" crlf))
)


;@@@ Added by Prachi Rathore[5-3-14]
 ;The group invested her as chairperson. [m-w]
 ;समूह ने  उसे अध्यक्ष नियुक्त किया . 
(defrule invest2
(declare (salience 5000))
(id-root ?id invest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-as_saMbanXI  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niyukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invest.clp 	invest2   "  ?id " niyukwa_kara)" crlf))
)

;@@@ Added by Prachi Rathore[5-3-14]
;He invested his life savings in his daughter's business.[oald]
;उसने उसके जीवन की बचत उसकी बेटी के उद्योग में  लगा दीं . 
;She had invested all her adult life in the relationship.[oald]
(defrule invest3
(declare (salience 5000))
(id-root ?id invest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 saving|life)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invest.clp 	invest3   "  ?id " lagA_xe)" crlf))
)

;@@@ Added by Prachi Rathore[5-3-14]
; Our government has invested the minister for trade with all the necessary powers to resolve the dispute.
;हमारी सरकार ने विवाद हल करने के लिये सभी आवश्यक अधिकार व्यापार  मन्त्री को प्रदान किये है . 
(defrule invest4
(declare (salience 4500))
(id-root ?id invest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?id2)
(id-root ?id1 with)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 praxAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* "  invest.clp 	invest4  "  ?id "  " ?id1 " praxAna_kara)" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[5-3-14]
;Now is a good time to invest in the property market.[oald]
;अब सम्पत्ति बाजार में निवेश करने के लिये अच्छा समय है . 
(defrule invest1
(declare (salience 400))
(id-root ?id invest)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niveSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invest.clp 	invest1   "  ?id "  niveSa_kara )" crlf))
)

;@@@ Added by Prachi Rathore[5-3-14]
;Now is a good time to invest in the property market.[oald]
;अब सम्पत्ति बाजार में निवेश करने के लिये अच्छा समय है . 
(defrule invest5
(declare (salience 200))
(id-root ?id invest)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niveSa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  invest.clp 	invest5   "  ?id "  niveSa_kara )" crlf))
)
