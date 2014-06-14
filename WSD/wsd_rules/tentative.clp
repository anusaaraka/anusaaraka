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

(defrule tentative0	
(declare (salience 3000))
(id-root ?id tentative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or(kriyA-vAkya_viBakwi  ?id ?)(viSeRya-kqxanwa_viSeRaNa  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMkoca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tentative.clp 	tentative0   "  ?id "  saMkoca )" crlf))
)

(defrule tentative1	
(declare (salience 2500))
(id-root ?id tentative)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBAviwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  tentative.clp 	tentative1   "  ?id " saMBAviwa )" crlf))
)
