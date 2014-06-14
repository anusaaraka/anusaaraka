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



;Added by Pramila(Banasthali University)
;Block printing by hand is just a small fraction of an industry.
;हाथ से ब्लॉक प्रिंटिंग एक उद्योग का सिर्फ एक छोटा सा खंड है
(defrule fraction0
(declare (salience 4950))
(id-root ?id fraction)
?mng <-(meaning_to_be_decided ?id)
;(id-word ?id1 break)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root-category-suffix-number ?id1  ? noun ? s)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KaMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fraction.clp 	fraction0   "  ?id "  KaMda )" crlf))
)


;It is a very small fraction of the total number of electrons.
;यह इलेक्ट्रॉनों की कुल संख्या का एक बहुत छोटा सा अंश है.
;They can produce it at a fraction of the cost of traditional methods.
;वे पारंपरिक तरीकों की लागत के एक अंश से यह उत्पादन कर सकते हैं.
(defrule fraction1
(declare (salience 4950))
(id-root ?id fraction)
?mng <-(meaning_to_be_decided ?id)
;(or((viSeRya-of_saMbanXI  ?id ?id1)(id-root-category-suffix-number ?id1  ? noun ? p))
(viSeRya-of_saMbanXI  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root-category-suffix-number ?id2  ? noun ? p)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fraction.clp 	fraction1   "  ?id "  aMSa )" crlf))
)


;default
;Would you please move a fraction?
;क्या आप थोडा खिसक जाएंगे?
(defrule fraction2
(declare (salience 4900))
(id-root ?id fraction)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WodA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fraction.clp 	fraction2   "  ?id "  WodA )" crlf))
)

;Break it into equal fractions.
;इसे बराबर भागो में तोडो.
(defrule fraction3
(declare (salience 4950))
(id-root ?id fraction)
?mng <-(meaning_to_be_decided ?id)
(kriyA-into_saMbanXI  ?id1 ?id)
(AjFArWaka_kriyA  ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  fraction.clp 	fraction3   "  ?id "  BAga )" crlf))
)




