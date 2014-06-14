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

;Thus, the angle of deviation depends on the angle of incidence.      ;physics
;इस प्रकार विचलन कोण आपतन कोण पर निर्भर करता है. 
(defrule deviation0
(declare (salience 5000))
(id-root ?id deviation)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id1 ?id)(viSeRya-of_saMbanXI  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vicalana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deviation.clp 	deviation0   "  ?id "  vicalana )" crlf))
)

;Modern examples of this type of weaving showed little deviation from traditional patterns.            ;oald
;बुनाई के इस प्रकार के आधुनिक उदाहरणों ने परंपरागत तरीके से थोड़ा परिवर्तन दिखाया है.
(defrule deviation1
(declare (salience 4000))
(id-root ?id deviation)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwana ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deviation.clp 	deviation1   "  ?id "  parivarwana )" crlf))
)
