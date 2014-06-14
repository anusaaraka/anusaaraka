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
;@@@ Added by Prachi Rathore
;Their infant son. [oald]
;उनका नवजात बेटा .  
(defrule infant0
(declare (salience 5000))
(id-root ?id infant)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id navajAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infant.clp 	infant0   "  ?id "  navajAwa )" crlf))
)

;@@@ Added by Prachi Rathore
;I've known her since we were in the infants.[oald]
;मैं उसको तब से जानता हूँ  जब हम शिशु अवस्था में थे . 
(defrule infant3
(declare (salience 5000))
(id-root ?id infant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-in_saMbanXI  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiSu_avasWA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infant.clp 	infant3   "  ?id "  SiSu_avasWA )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx

;@@@ Added by Prachi Rathore

(defrule infant1
(declare (salience 4000))
(id-root ?id infant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiSu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infant.clp 	infant1   "  ?id "  SiSu )" crlf))
)


;@@@ Added by Prachi Rathore

(defrule infant2
(declare (salience 4000))
(id-root ?id infant)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SiSu))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  infant.clp 	infant2   "  ?id "  SiSu )" crlf))
)
