;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02@gmail.com)
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
;Instead, when the bar magnet is held fixed and the coil C1 is moved towards or away from the magnet, the same effects are observed. ;यह भी देखा गया है कि यदि दंड चुंबक को स्थिर रखा जाए तथा इसके स्थान पर कुंडली C1 को चुंबक की ओर या इससे दूर गतिमान किया जाए तो भी इसी प्रकार का प्रभाव उत्पन्न होता है. 
(defrule instead0
(declare (salience 5000))
(id-root 1 instead)
?mng <-(meaning_to_be_decided 1)
(id-cat_coarse 1 adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng 1 isake_sWAna_para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  instead.clp 	instead0   "  1 "  isake_sWAna_para )" crlf))
)

;But instead he asked for a honorary position .
;परन्तु उन्होंने एक अवैतनिक पद मांगा |  
(defrule instead1
(declare (salience 5000))
(id-root ?id instead)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(id-root =(- ?id 1) but)
(not (id-root =(+ ?id 1) of))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id -))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  instead.clp 	instead1   "  ?id "  - )" crlf))
)

;--------Default-Rule----------------
(defrule instead2
(declare (salience 4900))
(id-root ?id instead)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  instead.clp 	instead2   "  ?id "  bajAya )" crlf))
)
