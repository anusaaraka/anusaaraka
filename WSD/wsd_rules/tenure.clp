;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore[3-3-14]
;The defendant did not have tenure on the land. [m-w]
;प्रतिवादी का भूमि पर अधीकार नहीं है . 
(defrule tenure0
(declare (salience 5000))
(id-root ?id tenure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-on_saMbanXI  ?id ?id1)
(id-root ?id1 land)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXIkAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tenure.clp 	tenure0   "  ?id " aXIkAra)" crlf))
)



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[3-3-14]
;His four-year tenure as President.
;अध्यक्ष के रूप में उसका चार-वर्षीय कार्य काल . 
(defrule tenure1
(declare (salience 400))
(id-root ?id tenure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya_kAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tenure.clp 	tenure1   "  ?id "  kArya_kAla )" crlf))
)

;@@@ Added by Prachi Rathore[3-3-14]

(defrule tenure2
(declare (salience 200))
(id-root ?id tenure)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kArya_kAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tenure.clp 	tenure2   "  ?id " kArya_kAla )" crlf))
)
