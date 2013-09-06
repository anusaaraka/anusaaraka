;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (Banasthali University)
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
;The details are discussed in Section 12.2. 
(defrule section0
(declare (salience 5000))
(id-root ?id section)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-saMKyA_viSeRaNa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anuBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  section.clp 	section0   "  ?id "  KaNda)" crlf))
)

;Every section of the society has a right to establish its own religious institution. 
(defrule section1
(declare (salience 4900))
(id-root ?id section)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI ?id ?id1)
(id-word ?id1 society)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id varga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  section.clp 	section1   "  ?id "  varga)" crlf))
)


;The school library has a separate hindi section.
(defrule section2
(declare (salience 4800))
(id-root ?id section)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(samAsa ?id ?id1 )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  section.clp 	section2   "  ?id "  viBAga)" crlf))
)
;---------------------------------------- Default_rules ----------------------------------------------------------------
;Section of website for more details or contact your local media desk / antenna for more details.
(defrule section3
(declare (salience 4700))
(id-root ?id section)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  section.clp 	section3   "  ?id "   BAga)" crlf))
)

;Added by Shirisha Manju (28-08-13)
(defrule section4
(declare (salience 4700))
(id-root ?id section)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viBAjiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  section.clp  section4   "  ?id "   viBAjiwa_kara)" crlf))
)

;Added by Shirisha Manju (28-08-13)
(defrule section5
(declare (salience 600))
(id-root ?id section)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id BAga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  section.clp  section5   "  ?id "   BAga)" crlf))
)
