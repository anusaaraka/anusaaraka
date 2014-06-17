;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam27virgo@gmail.com)
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



;@@@ Added by Sonam Gupta MTech IT Banasthali 23-1-2014
;In the Faculties of Law and Medicine changes of a fundamental character intended to promote thoroughness were introduced. [Gyannidhi]
;कानून और चिकित्सा संकायों में संपूर्ण ज्ञान को बढ़ावा देने के उद्देश्य से बुनियादि किस्म के परिवर्तन किये गये।
(defrule promote1
(declare (salience 4900))
(id-root ?id promote)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-kriyArWa_kriyA  ? ?id)(to-infinitive  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDAvA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  promote.clp 	promote1   "  ?id "  baDAvA_xe )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 23-1-2014
;The band is promoting their new album. [Cambridge]
;बैन्ड अपने नये अलबम का प्रचार कर रहा है .
(defrule promote2
(declare (salience 5000))
(id-root ?id promote)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 album|movie|band|party|group|line|fashion)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pracAra_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  promote.clp 	promote2   "  ?id "  pracAra_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 23-1-2014
;Mediators were present to promote dialogue. [MW]
;बीच बचाव करने वाले बातचीत में सहायता करने के लिए उपस्थित थे .
(defrule promote3
(declare (salience 5000))
(id-root ?id promote)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 dialogue|talk|discussion|conversation|chat|negotiation|growth|development)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahAyawA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  promote.clp 	promote3   "  ?id "  sahAyawA_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 23-1-2014
;She's just been promoted to manager. [Cambridge]
;उसका प्रबन्धक के पद के लिए तरक्की हुई है .
(defrule promote4
(declare (salience 5000))
(id-root ?id promote)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warakkI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  promote.clp 	promote4   "  ?id "  warakkI_ho )" crlf))
)


;########################################################33Default Rule#######################################################################

;@@@ Added by Sonam Gupta MTech IT Banasthali 23-1-2014
;She worked hard and was soon promoted. [OALD]
;उसने कङी मेहनत की और जल्द ही तरक्की की गई .
(defrule promote5
(id-root ?id promote)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id warakkI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  promote.clp 	promote5   "  ?id "  warakkI_kara )" crlf))
)
