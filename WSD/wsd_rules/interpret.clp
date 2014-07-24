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
;@@@ Added by Prachi Rathore[16-3-14]
;Please interpret this, I can not understand this language.[shiksharthi-kosh]
;कृपया इसका भाषांतरण कर दीजिये, मैं यह भाषा नहीं समझ सकता हूँ . 
(defrule interpret0
(declare (salience 5000))
(id-root ?id interpret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-vAkyakarma  ?id1 ?id)
(kriyA-object  ?id1 ?id2)
(id-root ?id2 language)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BARAMwaraNa_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interpret.clp 	interpret0   "  ?id "  BARAMwaraNa_kara_xe )" crlf))
)


;@@@ Added by Prachi Rathore[16-3-14]
;To interpret the probable meaning. [shiksharthi-kosh]
;सम्भावित अर्थ समझना . 
(defrule interpret1
(declare (salience 5000))
(id-root ?id interpret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 meaning|silence)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samaJanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interpret.clp 	interpret1   "  ?id "  samaJanA )" crlf))
)

;@@@ Added by Prachi Rathore[16-3-14]
;The data can be interpreted in many different ways.[oald]
;डेटा बहुत सारे विभिन्न तरीकों में व्यक्त किए जा सकते हैं . 
(defrule interpret4
(declare (salience 5000))
(id-root ?id interpret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interpret.clp 	interpret4   "  ?id "  vyakwa_kara )" crlf))
)

;@@@ Added by Prachi Rathore[16-3-14]
;He interpreted the role with a lot of humour.[oald]
;उसने बहुत सारे के भावों के साथ  भूमिका निभाई . 
(defrule interpret5
(declare (salience 5000))
(id-root ?id interpret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id2)
(id-root ?id2 role)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niBA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interpret.clp 	interpret5   "  ?id " niBA )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[16-3-14]
;The students were asked to interpret the poem. [oald]
;विद्यार्थियों से कविता की व्याख्या करने के लिये कहा गया था . 
(defrule interpret2
(declare (salience 400))
(id-root ?id interpret)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyAKyA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interpret.clp 	interpret2   "  ?id "  vyAKyA_kara )" crlf))
)

;@@@ Added by Prachi Rathore[16-3-14]

(defrule interpret3
(declare (salience 200))
(id-root ?id interpret)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyAKyA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interpret.clp 	interpret3   "  ?id "  vyAKyA_kara )" crlf))
)
