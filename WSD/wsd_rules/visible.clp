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
;After using the cream for a month, I could see no visible difference. [oald]
;महीने से मलाई का उपयोग करने के बाद, मैं स्पष्ट अन्तर को नहीं देख सका . 
(defrule visible0
(declare (salience 5000))
(id-root ?id visible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  visible.clp 	visible0   "  ?id "  spaRta)" crlf))
)

;A highly visible politician [m-w]
;एक सशक्त राजनीतिज्ञ .
(defrule visible1
(declare (salience 5000))
(id-root ?id visible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-word =(- ?id 1) highly)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) saSakwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " visible.clp	visible1  "  ?id "  " (- ?id 1) " saSakwa )" crlf))
)


;xxxxxxxxxxxxxxxxDEFAULT RULExxxxxxxxxxxxxxxxx
;In the early stages the star was so bright that it was visible during the day.
;शुरू में तारे में इतनी चमक थी कि यह दिन में भी दिखायी देता था।
(defrule visible2
(declare (salience 4000))
(id-root ?id visible)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  visible.clp 	visible2   "  ?id "  xiKa)" crlf))
)
