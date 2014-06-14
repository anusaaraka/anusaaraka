;#############################################################################
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
;######################################################################
;@@@ Added by jagriti(18.3.2014)
;You may get a good scoop from his business.[rajpal]
;आप उसके उद्योग से एक अच्छा मुनाफा प्राप्त कर सकते हैं . 
(defrule scoop1
(declare (salience 5000))
(id-root ?id scoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-from_saMbanXI ?id1 ?id2)(kriyA-in_saMbanXI ?id1 ?id2))
(kriyA-object ?id1 ?id)
(id-root ?id2 business)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id munAPA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scoop.clp 	scoop1   "  ?id "  munAPA )" crlf))
)
;@@@ Added by jagriti(18.3.2014)
;I got the inside scoop on his new girlfriend.[oald]
;मैंने उसकी नयी सहेली के बारे में अन्दरुनी सनसनीखेज खबर प्राप्त की .  
(defrule scoop2
(declare (salience 4900))
(id-root ?id scoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-on_saMbanXI ?id1 ?id2)
(kriyA-object ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanasanIKejZa_Kabara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scoop.clp 	scoop2   "  ?id "  sanasanIKejZa_Kabara )" crlf))
)
;@@@ Added by jagriti(18.3.2014)
;She scooped the child up in her arms.[oald]
;उसने अपने बाहों में बच्चे को उठा लिया . 
(defrule scoop4
(declare (salience 4800))
(id-root ?id scoop)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 up)
(kriyA-upasarga ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 uTA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " scoop.clp	scoop4  "  ?id "  " ?id1 "  uTA_le  )" crlf))
)
;@@@ Added by jagriti(18.3.2014)
;First, scoop a hole in the soil.[oald]
;पहले,मिट्टी में छेद बनाइए . 
(defrule scoop5
(declare (salience 4700))
(id-root ?id scoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 hole)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scoop.clp 	scoop5   "  ?id "  banA )" crlf))
)
;@@@ Added by jagriti(18.3.2014)
;Last year, the programme scooped the Best Drama award.[oald]
;पिछले वर्ष, कार्यक्रम ने सर्वोत्तम नाटक पुरस्कार जीता . 
(defrule scoop6
(declare (salience 4600))
(id-root ?id scoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 award|lottery)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scoop.clp 	scoop6   "  ?id "  jIwa )" crlf))
)
;@@@ Added by jagriti(18.3.2014)
;She scooped all the national newspapers to get the story. [wordnet]
;उसने कहानी प्राप्त करने के लिए सभी राष्ट्रिय समाचारपत्र में पहले ही खबर दे दिया . 
(defrule scoop7
(declare (salience 4500))
(id-root ?id scoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 newspaper)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahale_hI_Kabara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scoop.clp 	scoop7   "  ?id "  pahale_hI_Kabara_xe )" crlf))
)
;....default rule...
;@@@ Added by jagriti(18.3.2014)
;Two scoops of mashed potato.[oald] 
;कुचले आलू की दो कलछी  .
(defrule scoop0
(declare (salience 100))
(id-root ?id scoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalaCI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scoop.clp 	scoop0   "  ?id "  kalaCI )" crlf))
)
;@@@ Added by jagriti(18.3.2014)
;She scooped ice cream into their bowls.[oald]
;उसने  कटोरों के अंदर से आईसक्रीम कलछी से निकाला . 
(defrule scoop3
(declare (salience 100))
(id-root ?id scoop)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kalaCI_se_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scoop.clp 	scoop3   "  ?id "  kalaCI_se_nikAla )" crlf))
)
