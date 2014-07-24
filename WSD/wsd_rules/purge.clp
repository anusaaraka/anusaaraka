;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam27virgo@gmail.com)
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

;@@@ Added by Sonam Gupta MTech IT Banasthali 25-3-2014
;Hard liners are expected to be purged from the administration. [cambridge]
; .
(defrule purge1
(declare (salience 5000))
(id-root ?id purge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purge.clp 	purge1   "  ?id "  nikAla )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 25-3-2014
;He purged himself of his old fears.  [M-W]
;उसने स्वयं को पुराने डर से बाहर निकाला .
(defrule purge2
(declare (salience 5000))
(id-root ?id purge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mukwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purge.clp 	purge2   "  ?id "  mukwa_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 25-3-2014
;A corporate purge.  [M-W]
;एक कोर्पोरेट परिष्करण .
(defrule purge3
(declare (salience 5000))
(id-root ?id purge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariRkaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purge.clp 	purge3   "  ?id "  pariRkaraNa )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 25-3-2014
(defrule purge4
(declare (salience 4000))
(id-root ?id purge)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SuxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purge.clp 	purge4   "  ?id "  SuxXa_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 25-3-2014
(defrule purge5
(id-root ?id purge)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SuxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  purge.clp 	purge5   "  ?id "  SuxXa_kara )" crlf))
)

