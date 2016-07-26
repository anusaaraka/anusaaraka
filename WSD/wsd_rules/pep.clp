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

;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;A good night's sleep will pep you up. [cambridge]
;एक अच्छी रात की नीन्द आपको स्फूर्ति देगा .
(defrule pep1
(declare (salience 4000))
(id-root ?id pep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 sPUrwi_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pep.clp  pep1  "  ?id "  " ?id1 "  sPUrwi_xe  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;Pep up meals by adding more unusual spices.[oald]
;असामान्य मसाले मिलाकर भोजन को मसालेदार बनाइये .
(defrule pep2
(declare (salience 5000))
(id-root ?id pep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2 food|meal)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 masAlexAra_banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pep.clp  pep2  "  ?id "  " ?id1 "  masAlexAra_banA  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;The economy has started to pep up in recent months. [M-W]
;अर्थ प्रबन्धन ने हाल के महीनों में क्रियाशील होना प्रारम्भ कर दिया है .
(defrule pep3
(declare (salience 5000))
(id-root ?id pep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
(kriyA-subject  ?id ?id2)
(id-root ?id2 economy)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 kriyASIla_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pep.clp  pep3  "  ?id "  " ?id1 "  kriyASIla_ho  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
;To pep up sales, the company is offering a free trial subscription for one month. [M-W]
;बिक्री बढ़ाने के लिए, कम्पनी एक महीने के लिए मुफ्त प्रायोगिक सब्सक्रिप्शन दे रही है .
(defrule pep4
(declare (salience 5000))
(id-root ?id pep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 up)
(kriyA-object  ?id ?id2)
(id-root ?id2 sale|trade|transaction)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 baDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " pep.clp  pep4  "  ?id "  " ?id1 "  baDZA  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
(defrule pep5
(declare (salience 3000))
(id-root ?id pep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pep.clp 	pep5   "  ?id "  joSa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 19-3-2014
(defrule pep6
(id-root ?id pep)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id joSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pinch.clp 	pep6   "  ?id "  joSa )" crlf))
)
