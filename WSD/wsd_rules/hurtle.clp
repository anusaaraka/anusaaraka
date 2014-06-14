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
;@@@ Added by Prachi Rathore 10-1-14
; Boulders hurtled down the hill.[m-w]
;
(defrule hurtle0
(declare (salience 5000))
(id-root ?id hurtle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 down)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 wejI_se_nIce_ludaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " hurtle.clp	hurtle0  "  ?id "  " ?id1 "  wejI_se_nIce_ludaka  )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore

(defrule hurtle1
(declare (salience 4000))
(id-root ?id hurtle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wejI_se_Age_baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hurtle.clp 	hurtle1   "  ?id "   wejI_se_Age_baDa )" crlf))
)
