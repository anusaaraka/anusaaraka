;#############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;######################################################################
;@@@ Added by jagriti(15.1.2014)
;We were slaughtered  by the home team.
;हम होम टीम के द्वारा हराए गए थे.
(defrule slaughter0
(declare (salience 5000))
(id-root ?id slaughter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or (kriyA-by_saMbanXI  ?id ?id1)(kriyA-at_saMbanXI  ?id ?id1))
(id-root ?id1 team|football|cricket|hockey)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slaughter.clp 	slaughter0   "  ?id "  harA )" crlf))
)

;....default rule...
;@@@ Added by jagriti(15.1.2014)
;Thousands of people were slaughtered in the civil war.
;हजारों लोग  गृह युद्ध में मारे गए.
(defrule slaughter2
(declare (salience 100))
(id-root ?id slaughter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slaughter.clp 	slaughter2   "  ?id "  marA )" crlf))
)

;@@@ Added by jagriti(15.1.2014)
;Cows taken for slaughter.[oald]
;गायों को हत्या के लिये लाया गया . 
(defrule slaughter3
(declare (salience 100))
(id-root ?id slaughter)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hawyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  slaughter.clp 	slaughter3   "  ?id "  hawyA )" crlf))
)
