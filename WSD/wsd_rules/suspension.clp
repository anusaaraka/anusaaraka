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
;The suspension bridges put up in these isolated places are still used. [gyanidhi-corpus]
;इन सुनसान स्थानों में झूलेदार पुल अभी भी उपयोग किये जाते हैं.
(defrule suspension0
(declare (salience 5000))
(id-root ?id suspension)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JUlexAra ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suspension.clp 	suspension0 "  ?id " JUlexAra )" crlf))
)
;.....Default rule.....
;@@@@@
;The two players are appealing against their suspensions.[oald]
;दो खिलाड़ी  अपने निलंबन के खिलाफ याचिका दायर कर रहे हैं.
(defrule suspension1
(declare (salience 4900))
(id-root ?id suspension)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nilambana ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  suspension.clp 	suspension1 "  ?id " nilambana )" crlf))
)
