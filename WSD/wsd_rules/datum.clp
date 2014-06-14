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
;@@@ Added by Pramila(BU) on 10-03-2014
;However if data are subtracted the number of significant figures can be reduced.   ;ncert
;तथापि, यदि आङ्कडे घटाये जाते हैं तो सार्थक अङ्कों की सङ्ख्या कम की जा सकती है
(defrule datum0
(declare (salience 5000))
(id-root ?id datum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-subject  ?id1 ?id)
(id-root ?id1 subtract|add|multiply|divide)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AZkadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  datum.clp 	datum0   "  ?id "  AZkadZA )" crlf))
)


;@@@ Added by Pramila(BU) on 10-03-2014
;Now the data is being transferred from magnetic tape to hard disk.    ;ncert
;अब डेटा हार्ड डिस्क से चुंबकीय टेप पर स्थानांतरित किया जा रहा है.
(defrule datum1
(declare (salience 100))
(id-root ?id datum)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id detA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  datum.clp 	datum1   "  ?id "  detA )" crlf))
)


;@@@ Added by Pramila(BU) on 10-03-2014
(defrule datum2
(declare (salience 100))
(id-root ?id datum)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id detA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  datum.clp 	datum2   "  ?id "  detA )" crlf))
)
