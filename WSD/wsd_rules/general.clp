;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02 at gmail dot com)
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
; I was on the phone late last night with the general of Corps of Engineers.   (COCA corpus)
;मैं  कल देर रात तक इंजीनियर्स के जनरल के साथ फोन पर था।
;Lee had served as a general in the Polish army from 1765 to 1770.		(COCA corpus)
;ली ने १७६५ से १७७० तक पुलिस सेना के लिए एक जनरल के रूप में कार्य किया था।
(defrule general0
(declare (salience 4800))
(id-root ?id general)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI ?id ?id1)(viSeRya-in_saMbanXI ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id janarala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  general.clp 	general0   "  ?id "  janarala )" crlf))
)
;xxxxxxxxxxxxxxxxx DEFAULT RULE xxxxxxxxxxxxxxxxxxxxxxxxxxxx
;He discussed the general but neglected the particular.  [ thefreedictionary.com ]
;उसने सामान्य के विषय मे चर्चा की परन्तु विशिष्ट की उपेक्षा की.
(defrule general1
(declare (salience 2800))
(id-root ?id general)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  general.clp 	general1   "  ?id "  sAXAraNa )" crlf))
)

;My general impression of the place was good. [ cambridge dictionary ]
;जगह के लिये मेरी सामान्य धारणा अच्छी थी.
(defrule general2
(declare (salience 2800))
(id-root ?id general)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmAnya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  general.clp 	general2   "  ?id "  sAmAnya )" crlf))
)
