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

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
;The musician came into prominence gradually. [rajpal]
;संगीतकार धीरे धीरे ख्याति में आया .
(defrule prominence1
(declare (salience 5000))
(id-root ?id prominence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-into_saMbanXI  ? ?id)(kriyA-to_saMbanXI  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KyAwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prominence.clp 	prominence1   "  ?id "  KyAwi )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
;He is a man of great prominence. [rajpal]
;वह एक महान विशिष्टता का व्यक्ति है .
(defrule prominence2
(declare (salience 5000))
(id-root ?id prominence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSiRtawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prominence.clp 	prominence2   "  ?id "  viSiRtawA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
;There is a prominence in the middle of the road. [rajpal]
;सड़क के बीच में ऊँचा स्थान है .
(defrule prominence3
(declare (salience 5000))
(id-root ?id prominence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id UzcA_sWAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prominence.clp 	prominence3   "  ?id "  UzcA_sWAna )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
;Most of the papers give prominence to the same story this morning. [cambridge]
;अधिकतर समाचार पत्रों ने इस सुबह उसी कहानी को महत्व दिया .
(defrule prominence4
(declare (salience 5000))
(id-root ?id prominence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object  ?id1 ?id)
(id-root ?id1 give|provide)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahawva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prominence.clp 	prominence4   "  ?id "  mahawva )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
(defrule prominence5
(declare (salience 5000))
(id-root ?id prominence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praKyAwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prominence.clp 	prominence5   "  ?id "  praKyAwi )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2014
(defrule prominence6
(id-root ?id prominence)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praKyAwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prominence.clp 	prominence6   "  ?id "  praKyAwi )" crlf))
)

