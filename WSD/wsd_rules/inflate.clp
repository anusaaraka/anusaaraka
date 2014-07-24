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

;He has an inflated sense of his own importance.
(defrule inflate0
(declare (salience 4000))
(id-root ?id inflate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garvaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inflate.clp 	inflate0   "  ?id "  garvaSIla )" crlf))
)

;It will then become so inflated that it will swallow the closer planets Venus and Mercury and also gobble up the Earth!
;फिर वह इतना फैल जायेगा कि वह अपने पास के बुध ग्रह और शुक्र ग्रह को अपने में समेट लेगा और पृथ्वी को भी हजम कर जायेगा।
(defrule inflate1
(declare (salience 5000))
(id-root ?id inflate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(kriyA-vAkyakarma  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PEla_jAyegA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inflate.clp 	inflate1   "  ?id "  PEla_jAyegA )" crlf))
)

;The media have grossly inflated the significance of this meeting. 
(defrule inflate2
(declare (salience 5000))
(id-root ?id inflate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyA_viSeRaNa  ?id ?)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id badA_cadA_kara_bawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inflate.clp 	inflate2   "  ?id "  badA_cadA_kara_bawA )" crlf))
)

;The balloons had been inflated with helium. 
(defrule inflate3
(declare (salience 4000))
(id-root ?id inflate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PulA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inflate.clp 	inflate3   "  ?id "  PulA )" crlf))
)

; The principal effect of the demand for new houses was to inflate prices 
(defrule inflate4
(declare (salience 5000))
(id-root ?id inflate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 price|salary|rate|number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bada))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inflate.clp 	inflate4   "  ?id "  bada )" crlf))
)

;Inflated prices
(defrule inflate5
(declare (salience 5000))
(id-root ?id inflate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 price|salary|rate|margin|profit)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bade_huye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inflate.clp 	inflate5   "  ?id "  bade_huye )" crlf))
)
