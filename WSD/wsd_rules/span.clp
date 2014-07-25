;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;################################################################

;@@@ 
;I worked with him over a span of six years.[oald]
;मैंने छः वर्ष की अवधि तक उसके साथ काम किया . 
(defrule span0
(declare (salience 5000))
(id-root ?id span)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-root ?id1 year|month|week|day)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  span.clp 	span0 "  ?id " avaXi )" crlf))
)
;....Default Rule.....
;@@@ 
;These forests cover a broad span of latitudes.[oald]
;ये जंगल अक्षांशों के एक व्यापक फैलाव को ढंकते हैं.
(defrule span1
(declare (salience 4900))
(id-root ?id span)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  span.clp 	span1 "  ?id " PElAva )" crlf))
)
;;@@@
;An old bridge spans the river just outside the town.[cambridge dictionary]
;पुराना पुल नगर के ठीक बाहर नदी पर फैला है . 
(defrule span2
(declare (salience 4800))
(id-root ?id span)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElA_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  span.clp 	span2 "  ?id " PElA_ho )" crlf))
)

