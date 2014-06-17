;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02 at gmail dot com)
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


;Exploration of atomic minerals in India undertaken since the early fifties has indicated that India has limited reserves of uranium, but fairly abundant reserves of thorium.
;पचास के दशक के शुरुआती वर्षों में, भारत में परमाण्विक खनिजों को ढूँढने का जो कार्य हुआ, उससे यह सङ्केत मिल कि यहाँ यूरेनियम के भण्डार तो बहुत सीमित हैं, पर थोरियम के भण्डार पर्याप्त मात्रा में हैं.
(defrule indicate0
(declare (salience 5000))
(id-root ?id indicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id safkewa_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indicate.clp 	indicate0   "  ?id "  safkewa_mila )" crlf))
)

;This fact indicates that the nuclei of atoms contain, in addition to protons, neutral matter in multiples of a basic unit.[PHYSICS]
;यह तथ्य इङ्गित करता है कि परमाणुओं के नाभिकों में प्रोटॉनों के अतिरिक्त विद्यमान रहने वाला यह उदासीन द्रव्य भी एक मूल मात्रक के गुणजों के रूप में ही होता है.
(defrule indicate1
(declare (salience 5000))
(id-root ?id indicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-kriyA_viSeRaNa ?id ? )(kriyA-vAkyakarma ?id ?)(kriyA-before_saMbanXI ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ifgiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indicate.clp 	indicate1   "  ?id "  ifgiwa_kara )" crlf))
)

; She indicated to me (that) she didn't want me to say anything.[ VEENA MAM TRANSLATION]
; उसने मुझे इशारा किया कि वह नहीं चाहती कि मैं कुछ कहूँ.
(defrule indicate2
(declare (salience 5000))
(id-root ?id indicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iSArA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indicate.clp 	indicate2   "  ?id "  iSArA_kara )" crlf))
)

;Exploratory investigations have indicated large amounts of oil below the sea bed.
;प्रारम्भिक जाँच –पड़ताल से यह संकेत मिलता है कि समुद्र के तल में बड़ी तादाद में तेल हैं.
(defrule indicate5
(declare (salience 5000))
(id-root ?id indicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject ?id ?id1)
(id-root ?id1 exploration|investigation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id safkewa_mila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indicate.clp 	indicate5   "  ?id "  safkewa_mila )" crlf))
)

;@@@ Added by Prachi Rathore[27-1-14]
;In his convocation speech in 1912, Lord Hardinge referred to the 'able and effective guidance' of the University by Asutosh Mukherjee and testified that under his guidance the Calcutta University has made considerable progress in the directions indicated by the Act. [gyan-nidhi]
;1912 के अपने दिक्षांत भाषण में  बार्ड हार्डिंग ने आशुतोष मुकर्जी द्वारा विश्वविद्यालय के कुशल और प्रभावशाल मार्ग-दर्शन की च4चा की और घोषित किया ति उनके मार्ग-दर्शन में कलकत्ता विश्वविद्यालय ने अधिनिया द्वारा बताई गई दिशाओं में बहुत प्रगति की है।
(defrule indicate6
(declare (salience 5000))
(id-root ?id indicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(viSeRya-kqxanwa_viSeRaNa  ? ?id)
(kriyA-by_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indicate.clp 	indicate6   "  ?id "  bawA )" crlf))
)
;XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX Default XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX

(defrule indicate3
(declare (salience 4900))
(id-root ?id indicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xarSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indicate.clp 	indicate3   "  ?id "  xarSA)" crlf))
)

(defrule indicate4
(declare (salience 4900))
(id-root ?id indicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUcakAMka_xenA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  indicate.clp 	indicate4   "  ?id "  sUcakAMka_xenA)" crlf))
)


