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


;@@@ Added by Prachi Rathore 3-1-14
;He's hip to what's going on in the jazz world. [m-w]
(defrule hip3
(declare (salience 5000))
(id-root ?id hip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-to_saMbanXI  ?id ?id1)
(kriyA-in_saMbanXI  ?id1 ?id2)
(id-root ?id2 world)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnakArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hip.clp 	hip3   "  ?id "  jAnakArI )" crlf))
)




;@@@ Added by Prachi Rathore 3-1-14
;She and her sister used to be joined at the hip [=inseparable] when they were kids.[m-w]
;
(defrule hip4
(declare (salience 5000))
(id-root ?id hip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-kqxanwa_karma  ?id1 ?id2)
(id-root ?id1 be)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PESana_paraswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hip.clp 	hip4   "  ?id "  PESana_paraswa )" crlf))
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx

;@@@ Added by Prachi Rathore 3-1-14
;Walk with the sway of hips.
;कूल्हों को लचकाकर  चलो.
(defrule hip1
(declare (salience 4000))
(id-root ?id hip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kulhA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hip.clp 	hip1   "  ?id "  kulhA )" crlf))
)


;@@@ Added by Prachi Rathore 3-1-14
; He tried to learn about the latest bands so he could impress his hip new college friends. [m-w]
(defrule hip2
(declare (salience 4000))
(id-root ?id hip)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PESana_paraswa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  hip.clp 	hip2   "  ?id "  PESana_paraswa )" crlf))
)
