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
;@@@ Added by Prachi Rathore[30-1-14]
;Trend of a river.[shiksharthi-kosh]
;नदी का प्रवाह .  
(defrule trend0
(declare (salience 5000))
(id-root ?id trend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 river)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pravAha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trend.clp 	trend0   "  ?id "  pravAha )" crlf))
)

;@@@ Added by Prachi Rathore[30-1-14]
;Trend of a road.[shiksharthi-kosh]
;सडक की दिशा . 
(defrule trend3
(declare (salience 5000))
(id-root ?id trend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 road)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiSA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trend.clp 	trend3   "  ?id "  xiSA )" crlf))
)

;@@@ Added by Prachi Rathore[30-1-14]
;A new trend of learning more languages.[shiksharthi-kosh]
;अधिक भाषाएँ सीखने का एक नया चलन . 
(defrule trend4
(declare (salience 4500))
(id-root ?id trend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id calana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trend.clp 	trend4   "  ?id "  calana )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[30-1-14]
;
(defrule trend1
(declare (salience 4000))
(id-root ?id trend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xOra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trend.clp 	trend1   "  ?id "  xOra )" crlf))
)

;@@@ Added by Prachi Rathore[30-1-14]
;Within minutes of the incident her name was trending on Twitter. [cambridge]
;घटना के मिनटों में उसका नाम ट्विटर पर फैल गया था . 
(defrule trend2
(declare (salience 4000))
(id-root ?id trend)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trend.clp 	trend2   "  ?id "  PEla_jA )" crlf))
)
