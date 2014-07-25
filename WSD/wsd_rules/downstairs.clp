;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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


;@@@ added by Pramila(BU) on 18-12-2013
;I went downstairs to answer the phone.    ;cald
;मैं फोन पर बात करने निचली मंजिल की ओर गया.
(defrule downstairs0
(declare (salience 4950))
(id-root ?id downstairs)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 go|rush|run)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nicalI_maMjila))
(assert (kriyA_id-object_viBakwi ?id1 kI_ora))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  downstairs.clp 	downstairs0   "  ?id "  nicalI_maMjila )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  downstairs.clp      downstairs0   "  ?id " kI_ora )" crlf)
)
)

;@@@ added by Pramila(BU) on 18-12-2013
;We're painting the downstairs.       ;olad
;हम निचली मंजिल पर चित्रकारी कर रहे हैं.
(defrule downstairs1
(declare (salience 4000))
(id-root ?id downstairs)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nicalI_maMjila))
(assert (kriyA_id-object_viBakwi ?id1 para))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  downstairs.clp 	downstairs1   "  ?id "  nicalI_maMjila )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  downstairs.clp      downstairs1   "  ?id " para )" crlf)
)
)

;@@@ added by Pramila(BU) on 18-12-2013
(defrule downstairs2
(declare (salience 0))
(id-root ?id downstairs)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nicalI_maMjila))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  downstairs.clp 	downstairs2   "  ?id "  nicalI_maMjila )" crlf)
)
)

