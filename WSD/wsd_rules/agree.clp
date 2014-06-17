;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;I agree with her analysis of the situation.
;मैं स्थिति के उसके विश्लेषण के साथ सहमत हूँ . 
;He agreed with them about the need for change.
;वह परिवर्तन की जरूरत के बारे में उनके साथ सहमत हूँ. 
(defrule agree2
(declare (salience 5000))
(id-root ?id agree)
?mng <-(meaning_to_be_decided ?id)
(or
(kriyA-with_saMbanXI ?id ?id1)
(kriyA-on_saMbanXI  ?id ?id1)
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahamawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree2   "  ?id "  sahamawa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;When he said that, I had to agree. 
;जब उसने यह कहा , तो मुझे सहमत होना पड़ा . 
(defrule agree3
(declare (salience 4000))
(id-root ?id agree)
?mng <-(meaning_to_be_decided ?id)
(to-infinitive ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahamawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree3   "  ?id "  sahamawa_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;The figures do not agree.
;अंक मेल नहीं खाते हैं .
;Your account of the accident does not agree with hers.
;आपका दुर्घटना का  विवरण उस स्त्री के विवरण के साथ मेल नहीं खाता है .  
(defrule agree4
(declare (salience 5000))
(id-root ?id agree)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-root ?id1 figure|account)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mela_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree4   "  ?id "  mela_KA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-jan-2014
;They left at ten, as agreed.
;वे दस बजे, चले गये जैसा कि तय हुआ था
(defrule agree5
(declare (salience 5000))
(id-root ?id agree)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkya_viBakwi  ?id =(- ?id 1))
(id-word =(- ?id 1) as)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree5   "  ?id "  waya_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-jan-2014
;It was agreed that we should hold another meeting.[oald]
;यह सहमती जतायी गयी थी कि हमें एक और बैठक करनी चाहिए . 
(defrule agree6
(declare (salience 5000))
(id-word ?id agreed)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-vAkya_viBakwi  ?id1 ?id2)
(kriyA-vAkyakarma  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahamawI_jawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree6   "  ?id "  sahamawI_jawA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-jan-2014
;I asked for a pay rise and she agreed.[oald]
;मैंने वेतन वृद्धि के लिये कहा और वह मान गयी . 
;She agreed to let me go early.[oald]
;वह मेरे जल्दी जाने के लिये मान गयी
(defrule agree7
(declare (salience 5000))
(id-root ?id agree)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id agreed)
(or
(conjunction-components  ?con $? ?id $?)
(kriyA-kriyArWa_kriyA  ?id ?id1)
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree7   "  ?id "  mAna_jA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-jan-2014
;Do you think he'll agree to their proposal?[oald]
;क्या आप सोचते हैं कि वह उनके प्रस्ताव को मानेगा/स्वीकार करेगा  
(defrule agree8
(declare (salience 5000))
(id-root ?id agree)
?mng <-(meaning_to_be_decided ?id)
(kriyA-to_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree8   "  ?id "  mAna )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-jan-2014
;They met at the agreed time.[oald]
;वह तय किये गये समय पर मिले
(defrule agree9
(declare (salience 5000))
(id-word ?id agreed)
?mng <-(meaning_to_be_decided ?id)
(kriyA-at_saMbanXI  ?kri ?id1)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree9   "  ?id "  waya_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-jan-2014
;Can we agree a price?[oald]
;क्या हम एक मूल्य तय कर सकते है
(defrule agree10
(declare (salience 5000))
(id-root ?id agree)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id1 ?)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id waya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree10   "  ?id "  waya_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-jan-2014
;Next year's budget has been agreed.[oald]
;अगले वर्ष का बजट स्वीकार कर लिया गया है . 
(defrule agree11
(declare (salience 5000))
(id-root ?id agree)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(id-word ?sub budget)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svIkAra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree11	"  ?id "  svIkAra_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 08-jan-2014
;Can we agree on a date?[oald]
;क्या हम एक तारीख तय कर सकते हैं
(defrule agree12
(declare (salience 5000))
(id-root ?id agree)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
(id-word ?id1 date)
(id-word =(+ ?id 1) on)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) waya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " agree.clp	agree12  "  ?id "  " (+ ?id 1) "  waya_kara  )" crlf))
)


;******************DEFAULT RULE*********************************

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)
;So he reluctantly agreed.
;इसलिए वह अनिच्छा से सहमत हुआ. 
(defrule agree0
(declare (salience 1000))
(id-root ?id agree)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahamawa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree0   "  ?id "  sahamawa_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)08-jan-2014
;I agree that he should be invited. [oald]
;मैं सहमत हूँ कि वह आमन्त्रित किया जाना चाहिए . 
(defrule agree1
(declare (salience 0))
(id-root ?id agree)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahamawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  agree.clp 	agree1   "  ?id "  sahamawa )" crlf))
)

