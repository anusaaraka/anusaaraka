;########################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;########################################################################`

;@@@ Added by jagriri(3.12.2013)
;Do they serve meals in the bar?(veena mam)     [veena mam]
;क्या वे बार में भी खाने- पीने की व्यवस्था करते हैं ? (परोसते है.) 
;Breakfast is served in the restaurant between 7 and 9.
;रेस्टोरेंट में सात से नौ बजे तक नाश्ता परोसा जाता है .( की व्यवस्था है )
;We arrived at the hotel and were served with champagne and canapés.
;होटल पहुंचने पर हमें शैम्पेन और कैंपेन परोसी गयीं.(दी गयी )
; Serve the tarts hot with custard or whipped cream.
;गर्म टार्ट्स पर कस्टर्ड या फेटी हुई क्रीम लगा कर परोसों.
(defrule serve1
(declare (salience 4900))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-with_saMbanXI ?id ?id1)(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id1))
(id-root ?id1 meal|breakfast|champagne|canapés|recipe|custard|tart|cream)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parosa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  serve.clp      serve1   "  ?id "  parosa )" crlf)
))

;@@@ Added by Nandini(27-08-13)
;She was elected to serve as secretary of the local party.
(defrule serve2
(declare (salience 4800))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-for_saMbanXI  ?id ?)(kriyA-as_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yogadana_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  serve.clp 	serve2   "  ?id "  yogadana_xe )" crlf))
)
;@@@ Added by jagriti(3-12-2013)
;Less than two weeks ago Gough finally served a writ on Slater, claiming damages for alleged loss of royalties.
;करीब दो हफ्ते पहले गौघ ने आख़िरकार न्यायालय में स्लाटर के विरोध में रोयल्टी के नुकसान का दाबा करते हुए एक याचिका दायर की . 
(defrule serve3
(declare (salience 4700))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 writ)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xAyara_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  serve.clp      serve3   "  ?id " xAyara_kara )" crlf)
))

;@@@ Added by jagriti(3-12-2013)
;The prisoner has served his sentence and will be released tomorrow.[oald]
;कैदी ने अपनी सजा काटी है और कल छोड़ दिया जाएगा.
(defrule serve4
(declare (salience 4600))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 sentence)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  serve.clp      serve4   "  ?id " kAta )" crlf)
))
;@@@ Added by Nandini(29-08-13)
;He served the family faithfully for many years.
;I served him three times, and after that he helped himself.
;The servant serves his master faithfully. 
;he,servant,master,I,his Added in inanimate list. By Nandini (29-08-13)
(defrule serve5
(declare (salience 4500))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(or (id-root ?id1 family|community)(viSeRya-RaRTI_viSeRaNa  ?id1 ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahayawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  serve.clp 	serve5   "  ?id "  sahayawA_kara )" crlf))
)
;@@@ Added by jagriti(3-12-13)
;He served four years in prison for robbery.[veena mam]
;चोरी के इल्जाम में उसने चार वर्ष जेल में सजा काटी .(भुगती )

(defrule serve6
(declare (salience 4400))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sajA_kAta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  serve.clp      serve6   "  ?id " sajA_kAta )" crlf)
))

;@@@ Added by Nandini(27-08-13)
;He served a one-year apprenticeship.
(defrule serve7
(declare (salience 4300))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 apprenticeship)
(viSeRya-det_viSeRaNa  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  serve.clp 	serve7   "  ?id "  kArya_kara )" crlf))
)
;@@@ Added by Nandini(27-08-13)
;Most of their economic policies serve the interests of big business.
;These experiments serve no useful purpose.
;His linguistic ability served him well in his chosen profession. 
(defrule serve8
(declare (salience 4200))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 experiment|ability|policy)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  serve.clp 	serve8   "  ?id "  kAma_A )" crlf))
)

;@@@ Added by jagriti(3-12-13)
;He served in the army in India for twenty years.[veena mam]
;उसने भारत में सेना के अंदर बीस वर्ष तक काम किया .
;She has served on the committee for the last fifteen years.
;वह पिछले १५ सालों से कमेटी में काम कर रही है..( उसने काम किया है )
;He served under Harold Wilson as Transport Minister.
 ;उसने हेरोल्ड विल्सन के नीचे (अंतर्गत)  ट्रांसपोर्ट मिनिस्टर के रूप में काम किया है .

(defrule serve9
(declare (salience 4100))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-in_saMbanXI ?id ?)(kriyA-on_saMbanXI ?id ?)(kriyA-under_saMbanXI ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAma_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  serve.clp      serve9   "  ?id "  kAma_kara )" crlf)
))

;@@@ Added by Nandini(27-08-13)
;The town is well served with buses and major road links.
(defrule serve10
(declare (salience 4000))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 bus|train|road|link) 
(kriyA-with_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 upalabXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " serve.clp	serve10  "  ?id "  " ?id1 "  upalabXa_kara  )" crlf))
)

;@@@ Added by Nandini(27-08-13)
;The teams served up some fantastic entertainment.
;She served up the usual excuse.
;Airlince served 
(defrule serve11
(declare (salience 3900))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga ?id ?id1)
(id-word ?id1 up|out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " serve.clp	serve11  "  ?id "  " ?id1 "  xe  )" crlf))
)

;@@@ Added by jagriti(3-12-13)
;He has three more years in prison before he's served out his sentence.
(defrule serve12
(declare (salience 3800))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(kriyA-out_saMbanXI  ?id ?id1)
(id-root ?id1 sentence) 
(id-root =(+ ?id 1) out)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(+ ?id 1) pUrA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " serve.clp	serve12  "  ?id "  " =(+ ?id 1) "  pUrA_kara  )" crlf))
)


;..............Default rule...................
;@@@ Added by jagriti (7.1.2014)
;He served the family faithfully for many years.[oald]
;उन्होंने क कई वर्षों तक ईमानदारी से अपने परिवार की सेवा की है. 
(defrule serve13
(declare (salience 1))
(id-root ?id serve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sevA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  serve.clp      serve13   "  ?id "  sevA_kara )" crlf)
))

