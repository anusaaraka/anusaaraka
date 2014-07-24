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
;@@@ Added by Prachi Rathore[6-3-14]
;They carefully tallied up the cost of the repairs. [m-w]
;उन्होंने सावधानी से दुरुस्ती की कीमत का हिसाब लगाया . 
(defrule tally0
(declare (salience 5000))
(id-root ?id tally)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 cost|price|value)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  hisAba_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tally.clp 	tally0 "  ?id "  " ?id1 "  hisAba_lagA )" crlf))
)

;@@@ Added by Prachi Rathore[6-3-14]
; They tallied up the results of the vote.[m-w]
;उन्होंने मत के परिणाम गिनती किए . 
(defrule tally3
(declare (salience 4500))
(id-root ?id tally)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1  ginawI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " tally.clp 	tally3 "  ?id "  " ?id1 "  ginawI_kara )" crlf))
)


;@@@ Added by Prachi Rathore[6-3-14]
; He tallied his expenses every day.
;उसने उसके प्रत्येक दिन के व्यय का हिसाब रखा . 
(defrule tally4
(declare (salience 5000))
(id-root ?id tally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 expense)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hisAba_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tally.clp 	tally4   "  ?id "  hisAba_raKa )" crlf))
)

;@@@ Added by Prachi Rathore[6-3-14]
; Will you keep a tally of the number of customers going in and out?[cambridge]
;क्या आप  अंदर और बाहर जाते हुए ग्राहकों की संख्या की गिनती रखेंगे? 
(defrule tally6
(declare (salience 5000))
(id-root ?id tally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ginawI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tally.clp 	tally6   "  ?id " ginawI )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[6-3-14]
;Keep a tally of how much you spend while you're away.[oald]
(defrule tally1
(declare (salience 400))
(id-root ?id tally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hisAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tally.clp 	tally1   "  ?id " hisAba )" crlf))
)

;@@@ Added by Prachi Rathore[6-3-14]
;Your plans don't tally with mine.[cambridge]
;आपकी योजनाएँ मेरी योजनाओ के साथ मेल नहीं खाती हैं . 
(defrule tally2
(declare (salience 400))
(id-root ?id tally)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mela_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tally.clp 	tally2   "  ?id " mela_KA )" crlf))
)

;@@@ Added by Prachi Rathore[6-3-14]
 
(defrule tally5
(declare (salience 400))
(id-root ?id tally)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hisAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tally.clp 	tally5   "  ?id " hisAba )" crlf))
)
