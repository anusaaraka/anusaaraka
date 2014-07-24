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

;@@@ Added by Sonam Gupta MTech IT Banasthali 15-3-2014
;It might be a good idea to take a punt on a few technology stocks. [cambridge]
;कुछ प्रौद्योगिकी भण्डार पर बाजी लगाना एक अच्छा विचार हो सकता है .
(defrule punt1
(declare (salience 5000))
(id-root ?id punt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?verb ?id)
(kriyA-on_saMbanXI  ?verb ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punt.clp 	punt1   "  ?id "  bAjI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-3-2014
;Traders are punting on a big move on the stock markets next week.[cambridge]
;व्यापारी तिजारती माल बाज़ारों पर एक बड़े स्तर पर बाजी लगा रहे हैं .
(defrule punt2
(declare (salience 5000))
(id-root ?id punt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-on_saMbanXI  ?id ?)
(kriyA-subject  ?id ?id1)
(id-root ?id1 trader|businessman|dealer|buyer|broker|merchant|seller)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAjI_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punt.clp 	punt2   "  ?id "  bAjI_lagA )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-3-2014
;The investment is little more than a punt. [oald]
;निवेश बाजी से कुछ अधिक है .
(defrule punt3
(declare (salience 5000))
(id-root ?id punt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-than_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAjI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punt.clp 	punt3   "  ?id "  bAjI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-3-2014
;The kicker punted the ball 40 yards.  [M-W]
;लात मारने वाले ने गेन्द को ४० गज दूर फेंका .
(defrule punt4
(declare (salience 5000))
(id-root ?id punt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 ball)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punt.clp 	punt4   "  ?id "  PeMka )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-3-2014
;They punted from midfield.  [M-W]
;उन्होंने मिडफील्ड से गेन्द फेंकी .
(defrule punt5
(declare (salience 5000))
(id-root ?id punt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
(id-root ?id1 midfield|field|ground)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id genxa_PeMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punt.clp 	punt5   "  ?id "  genxa_PeMka )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 15-3-2014
;The legislature has punted on important issues like health-care funding and tax reform. [M-W]
;विधानमन्डल ने महत्वपूर्ण विषयों जैसे स्वास्थ्य निधीकरण और कर सुधार को टाला है.
(defrule punt6
(declare (salience 6000))
(id-root ?id punt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-on_saMbanXI  ?id ?id1)(kriyA-object  ?id ?id1))
(id-root ?id1 issue|matter|decision|problem)
(id-root ?id2 on)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 tAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " punt.clp  punt6  "  ?id "  " ?id2 "  tAla  )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 15-3-2014
;A 40-yard punt. [M-W]
;एक ४० गज लम्बी डोंगी .
(defrule punt7
(declare (salience 3000))
(id-root ?id punt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id doMgI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punt.clp 	punt7   "  ?id "  doMgI )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 15-3-2014
;We spent the day punting on the river. [cambridge]
;हमने नदी में डोंगी में घूमते हुए दिन बिताया .
(defrule punt8
(declare (salience 3000))
(id-root ?id punt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id doMgI_meM_GUma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punt.clp 	punt8   "  ?id "  doMgI_meM_GUma )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 15-3-2014
(defrule punt9
(id-root ?id punt)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id doMgI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  punt.clp 	punt9   "  ?id "  doMgI )" crlf))
)
