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

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;He could not plea in the court. [rajpal]
;वह न्यायालय में अभिवचन नहीं कर सका .
(defrule plea1
(declare (salience 5000))
(id-root ?id plea)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBivacana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plea.clp 	plea1   "  ?id "  aBivacana_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
;To plea a case. [rajpal]
;मुकदमे की पैरवी करना .
(defrule plea2
(declare (salience 5000))
(id-root ?id plea)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 case)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pEravI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plea.clp 	plea2   "  ?id "  pEravI_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
(defrule plea3
(declare (salience 4000))
(id-root ?id plea)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivaxana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plea.clp 	plea3   "  ?id "  nivaxana )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
(defrule plea4
(declare (salience 4000))
(id-root ?id plea)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivaxana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plea.clp 	plea4   "  ?id "  nivaxana_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 27-3-2014
(defrule plea5
(id-root ?id plea)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivaxana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  plea.clp 	plea5   "  ?id "  nivaxana )" crlf))
)

