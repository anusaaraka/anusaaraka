;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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

;@@@ added by Pramila(BU)on 11-12-2013
;Do exactly as I tell you.            ;oald
;बिल्कुल वैसे ही करो जैसे मैं तुम्हें बताता हूँ.
(defrule exactly0
(declare (salience 5000))
(id-root ?id exactly)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id)
(kriyA-samakAlika_kriyA  ?id1 ?kri)
(kriyA-vAkya_viBakwi  ?kri ?id2)
(id-word ?id2 as)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilkula_vEse_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exactly.clp 	exactly0   "  ?id " bilkula_vEse_hI  )" crlf))
)

;@@@ added by Pramila(BU)on 11-12-2013
;It happened almost exactly a year ago.                ;oald
;यह लगभग एक साल पहले के जैसा ही हुआ.
(defrule exactly1
(declare (salience 5000))
(id-root ?id exactly)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(kriyA-kriyA_viSeRaNa  ?id1 ?id2)
(id-word ?id2 ago|before)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jEsA_hI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exactly.clp 	exactly1   "  ?id "  jEsA_hI )" crlf))
)

;@@@ added by Pramila(BU)on 11-12-2013
;It's exactly nine o'clock.          ;oald
;ठीक नौ बजे हैं.
(defrule exactly2
(declare (salience 5000))
(id-root ?id exactly)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id2 ?id)
(viSeRya-saMKyA_viSeRaNa  ?id2 ?id1)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id TIka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exactly.clp 	exactly2   "  ?id "  TIka )" crlf))
)

;@@@ added by Pramila(BU)on 11-12-2013
;That's exactly what seasoned travellers do.        ;problem sentence(gyannidhi)
;वह बिल्कुल वही है जो यात्री लोग करते हैं.
(defrule exactly3
(declare (salience 5000))
(id-root ?id exactly)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaka  ?id1 ?id)
(id-word ?id1 what)
(not(id-right_punctuation  ?last	PUNCT-QuestionMark))
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bilkula_vahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exactly.clp 	exactly3   "  ?id "  bilkula_vahI )" crlf))
)


;@@@ added by Pramila(BU)on 11-12-2013
;His words had exactly the opposite effect.           ;oald
;उसके शब्दों का यथार्थतः विपरीत प्रभाव था.
;Your answer is exactly right.           ;oald
;तुम्हारा उत्तर यथार्थतः सही है.
(defrule exactly4
(declare (salience 5000))
(id-root ?id exactly)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaka  ?id2 ?id)(and(viSeRya-viSeRaka  ?id1 ?id)(viSeRya-viSeRaNa  ?id1 ?id2)))
(id-word ?id2 right|wrong|opposite|same)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yaWArWawaH))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exactly.clp 	exactly4   "  ?id "  yaWArWawaH )" crlf))
)

;@@@ added by Pramila(BU)on 11-12-2013
;Exactly.           ; oald
;बिल्कुल
(defrule exactly5
(declare (salience 5000))
(id-root 1 exactly)
?mng <-(meaning_to_be_decided 1)
(id-word 1  exactly)
(id-last_word 1 exactly)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 bilkula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exactly.clp 	exactly5   "  1 "  bilkula )" crlf))
)

;@@@ added by Pramila(BU)on 11-12-2013
;Exactly what are you trying to tell me?     ;oald
;आप मुझे वास्तव में  क्या बताने की कोशिश कर रहे हैं?
(defrule exactly6
(declare (salience 4000))
(id-root ?id exactly)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswava_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exactly.clp 	exactly6   "  ?id "  vAswava_meM )" crlf))
)

;@@@ added by Pramila(BU)on 11-12-2013
(defrule exactly7
(declare (salience 0))
(id-root ?id exactly)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vAswava_meM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exactly.clp 	exactly7   "  ?id "  vAswava_meM )" crlf))
)


