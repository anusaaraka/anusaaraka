;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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

;@@@ Added by Pramila(Banasthali University) on 24-01-2014
;In July 1908 Asutosh Mukherjee moved in the Senate for the establishment of a University Law College and his motion was 
;carried unanimously.  ;gyannidhi
;जुलाई 1808 में आशुतोष मुकर्जी ने सिनेट में यूनिवर्सिटी लॉ कॉलज की स्थापना करने का प्रस्ताव रखा और उनका प्रस्ताव सर्वसम्मति से स्वीकार हो गया।
(defrule establishment0
(declare (salience 5000))
(id-root ?id establishment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sWApnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  establishment.clp 	establishment0   "  ?id "  sWApnA )" crlf))
)

;---------------------deafult rules-------------------------------
;@@@ Added by Pramila(Banasthali University) on 24-01-2014
;an educational establishment        ;oald
;एक शैक्षणिक प्रतिष्ठान
(defrule establishment1
(declare (salience 4000))
(id-root ?id establishment)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiRTAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  establishment.clp 	establishment1   "  ?id "  prawiRTAna )" crlf))
)


;@@@ Added by Pramila(Banasthali University) on 24-01-2014
(defrule establishment2
(declare (salience 0))
(id-root ?id establishment)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiRTAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  establishment.clp 	establishment2   "  ?id "  prawiRTAna )" crlf))
)

