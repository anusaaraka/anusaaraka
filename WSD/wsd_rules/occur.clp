;##############################################################################
;#  Copyright (C) 2002-2005 SONAM GUPTA (sonam27virgo@gmail.com)
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


;Added by Sonam Gupta MTech IT Banasthali 2013
;The disease mainly occurs in women over 40. [Cambridge]
;बीमारी प्रमुख रूप से 40 के ऊपर स्त्रियों में पाया जाती है . 
(defrule occur1
(declare (salience 8000))
(id-root ?id occur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 adverb|noun)
(id-cat_coarse ?id2 noun|verb)
(id-cat_coarse ?id3 noun|preposition|PropN)
(id-cat_coarse ?id4 noun)
(id-cat_coarse ?id5 noun)
(or(and(kriyA-kriyA_viSeRaNa  ?id ?id1)(kriyA-subject  ?id ?id2)(kriyA-in_saMbanXI  ?id ?id3))(and(kriyA-subject  ?id ?id1)(kriyA-kriyArWa_kriyA  ?id2 ?id)(to-infinitive  ?id3 ?id)(kriyA-in_saMbanXI  ?id ?id4)(kriyA-under_saMbanXI  ?id ?id5))(and(kriyA-kriyA_viSeRaNa ?id ?id1)(kriyA-subject  ?id ?id2)(kriyA-throughout_saMbanXI ?id ?id3)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAyA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occur.clp 	occur1  "  ?id " pAyA_jA)" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;It had never occurred to me that he might be lying. [Cambridge]
;मैंने यह कभी नहीं सोचा था कि वह झूठ बोल सकता है. 
(defrule occur2
(declare (salience 7000))
(id-root ?id occur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 verb)
(id-cat_coarse ?id2 pronoun)
(id-cat_coarse ?id3 adverb)
(id-cat_coarse ?id4 pronoun)
(or(and(kriyA-vAkyakarma  ?id ?id1)(kriyA-subject  ?id ?id2)(kriyA-kriyA_niReXaka  ?id ?id3)(kriyA-to_saMbanXI  ?id ?id4))(and(kriyA-kriyArWa_kriyA ?id ?id1)(kriyA-subject  ?id ?id2)(kriyA-kriyA_niReXaka  ?id ?id3)(kriyA-to_saMbanXI  ?id ?id4)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id socA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occur.clp 	occur2  "  ?id " socA)" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;The idea occurred to him in a dream. [OALD]
;विचार उसको स्वप्न में कौन्धा . 
(defrule occur3
(declare (salience 6000))
(id-root ?id occur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun)
(id-cat_coarse ?id2 pronoun)
(id-cat_coarse ?id3 noun)
(and(kriyA-subject  ?id ?id1)(kriyA-to_saMbanXI  ?id ?id2)(kriyA-in_saMbanXI  ?id ?id3))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kOnXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occur.clp 	occur3  "  ?id " kOnXA)" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;The event is scheduled to occur at noon tomorrow. [MW]
;घटना कल मध्याह्न में होने के लिये परिगणित हो गई है. 
(defrule occur4
(declare (salience 5000))
(id-root ?id occur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun|wh-pronoun)
(id-cat_coarse ?id2 noun|adverb)
(id-cat_coarse ?id3 verb|preposition)
(id-cat_coarse ?id4 preposition)
(id-cat_coarse ?id5 noun)
(or(and(kriyA-kAlavAcI  ?id ?id1)(kriyA-subject  ?id ?id2)(kriyA-kriyArWa_kriyA  ?id3 ?id)(to-infinitive  ?id4 ?id)(kriyA-at_saMbanXI  ?id ?id5))(and(kriyA-subject  ?id ?id1)(saMjFA-to_kqxanwa  ?id2 ?id)(to-infinitive  ?id3 ?id1)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occur.clp 	occur4  "  ?id " ho)" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 11-3-2014
;A great insight of the twentieth century physics is that these different forces occurring in 
;different contexts actually arise from only a small number of fundamental forces in nature. [verified sentence]
;बीसवीं शताब्दी की एक महान अन्तर्दृष्टि यह है कि विभिन्न सन्दर्भों में पाए जाने वाले विविध बल, वास्तव में, प्रकृति के कुछ मूल बलों से ही उत्पन्न होते हैं.
(defrule occur5
(declare (salience 5000))
(id-root ?id occur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAye_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occur.clp 	occur5  "  ?id " pAye_jA)" crlf))
)

;#####################################################Default Rule########################################################################### 
;Added by Sonam Gupta MTech IT Banasthali 2013
;According to the police, the shooting occurred at about 12.30 am. [Cambridge]
;पुलीस के अनुसार, गोलीबारी अन्दाजन 12.30 बजे घटित हुई . 
(defrule occur6
(id-root ?id occur)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gatiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occur.clp 	occur6  "  ?id " Gatiwa_ho)" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 11-3-2014
(defrule occur7
(id-root ?id occur)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gatiwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  occur.clp 	occur7  "  ?id " Gatiwa_ho)" crlf))
)

