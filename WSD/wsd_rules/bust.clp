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
;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)30-jan-2014
;A marble bust of Asutosh was presented by the principal.
;यूनिवर्सिटी लॉ कॉलिज के प्राचार्य द्वारा आशुतोष की संगमरमर की अर्धृप्रतिमा भेंट की गई।
(defrule bust3
(declare (salience 5000))
(id-root ?id bust)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kI_arXqprawimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bust.clp 	bust3   "  ?id "  kI_arXqprawimA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)30-jan-2014
;He's been busted for drugs.[oald]
;उसे ड्रग्स के लिये पकड़ा गया है
(defrule bust4
(declare (salience 5000))
(id-root ?id bust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pakadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  any.clp 	bust4   "  ?id "  pakadZA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)30-jan-2014
;They bust up after five years of marriage.[oald]
;वह शादी के पाँच साल बाद अलग हो गये 
(defrule bust5
(declare (salience 5000))
(id-root ?id bust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(not(kriyA-object ?id ?))
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 alaga_ho_jA)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bust.clp	bust5  "  ?id "  " ?id1 "  alaga_ho_jA  )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)30-jan-2014
;It was his drinking that bust up his marriage.[oald]
;यह उसके पीने की आदत थी जिसने उसकी शादी को बरबाद कर दिया/तोड़ दिया
(defrule bust6
(declare (salience 5000))
(id-root ?id bust)
?mng <-(meaning_to_be_decided ?id)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 up)
(kriyA-object  ?id ?obj)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 barbAxa_kara_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " bust.clp	bust6  "  ?id "  " ?id1 "  barbAxa_kara_xe  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " bust.clp	bust6   "  ?id " ko )" crlf)
)
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)30-jan-2014
;As a show it was a bust.[oald]
;प्रदर्शन के रूप में वह खराब था . 
(defrule bust7
(declare (salience 5000))
(id-root ?id bust)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bust.clp 	bust7   "  ?id "  KarAba  )" crlf)
)
)


;********************DEFAULT RULES*****************************************


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)30-jan-2014
(defrule bust0
(id-root ?id bust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id CAwI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bust.clp 	bust0   "  ?id "  CAwI )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)30-jan-2014
(defrule bust1
(id-root ?id bust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wodZa_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bust.clp 	bust1   "  ?id "  wodZa_xe )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)30-jan-2014
;We're bust!
;हम दिवालिया हो गये
;We lost our money when the travel company went bust.
;हमने हमारा पैसा खो दिया जब ट्रेवल कम्पनी दिवालिया हो गयी
(defrule bust2
(id-root ?id bust)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xivAliyA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  bust.clp 	bust2   "  ?id "  xivAliyA_ho )" crlf))
)
