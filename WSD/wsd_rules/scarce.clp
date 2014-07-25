;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Sing(singh.jagriti5@gmail.com)
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
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;########################################################################
;@@@ added by jagriti(8.3.2014)
;He had scarce come here when he fell ill.[rajpal]
;वह अभी-अभी यहाँ आया था कि वह अस्वस्थ हो गया . 
(defrule scarce0
(declare (salience 5000))
(id-root ?id scarce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyA_viSeRaNa ?id1 ?id)
(id-root ?id1 come)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBI-aBI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scarce.clp 	scarce0  "  ?id "  aBI-aBI)" crlf))
)
;.....Default Rule......
;@@@ added by jagriti(8.3.2014)
;I can scarce remember him.[oald]
;मैं उसको मुश्किल से याद आ सकता हूँ . 
(defrule scarce2
(declare (salience 100))
(id-root ?id scarce)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muSkila_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scarce.clp 	scarce2   "  ?id "  muSkila_se )" crlf))
)
;@@@ added by jagriti(8.3.2014)
;Details of the accident are scarce.[oald]
;दुर्घटना की जानकारी बहुत ही कम है. 
(defrule scarce3
(declare (salience 200))
(id-root ?id scarce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahuwa_hI_kama))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  scarce.clp 	scarce3  "  ?id "  bahuwa_hI_kama)" crlf))
)
