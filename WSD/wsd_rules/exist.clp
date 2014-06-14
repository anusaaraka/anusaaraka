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


;@@@ Added by Pramila(BU)
;Poverty still exists in this country.	;cambridge
;garIbI aBI BI xeSa meM hE.

;The problem only exists in your head. 	;OALD
;samasyA kevala wumhAre ximAga meM hE.

;Few of these monkeys still exist in the wild.	;OALD
;inameM se kuCa bAMxara aBI BI jaMgala meM hE.

;Does life exist on other planets?	;OALD
;kyA jIvana xUsare grahoM para hE?

(defrule exist0
(declare (salience 5000))
(id-root ?id exist)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-in_saMbanXI  ?id ?id1)(and(kriyA-on_saMbanXI  ?id ?id1)(viSeRya-viSeRaNa  ?id1 ?id2)))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exist.clp 	exist0   "  ?id "  hE )" crlf))
)

;@@@ Added by Pramila(BU)
;I don't think ghosts exist. 	;cambridge
;mEM nhIM mAnawA ki BUwa howe hEM.
(defrule exist1
(declare (salience 5000))
(id-root ?id exist)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ghost)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exist.clp 	exist1   "  ?id "  ho )" crlf))
)

;@@@ Added by Pramila(BU) on 25-03-2014
;Note that static friction does not exist by itself.   ;ncert
;ध्यान दीजिए, स्थैतिक घर्षण का अपना कोई आस्तित्व नहीं होता. 	
(defrule exist2
(declare (salience 4500))
(id-root ?id exist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id2)
(id-root ?id2 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aswiwva_ho))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exist.clp 	exist2   "  ?id "  aswiwva_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  exist.clp 	exist2   "  ?id " kA )" crlf))
)


;-------------------------------------default rules-------------------------------------------------------
;@@@ Added by Pramila(BU)
;We existed on a diet of rice.		;OALD
;hama cAvala ke Bojana para jIviwa rahe.

;They can't exist on the money he's earning.	;OALD
;ve usake kamAye hue pEsoM para jIviwa nahI raha sakawe.

(defrule exist3
(declare (salience 4000))
(id-root ?id exist)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jIviwa_raha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exist.clp 	exist3   "  ?id "  jIviwa_raha )" crlf))
)
;@@@ Added by Pramila(BU)
(defrule exist4
(declare (salience 3000))
(id-root ?id exist)
?mng <-(meaning_to_be_decided ?id)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  exist.clp 	exist4   "  ?id "  hE )" crlf))
)

