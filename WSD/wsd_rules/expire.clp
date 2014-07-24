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

;@@@ Added by Pramila(BU) on 10-02-2014
;The fire has expired.    ;shiksharthi
;आग बुझ गई है.
(defrule expire1
(declare (salience 4950))
(id-root ?id expire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 fire)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id buJa_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expire.clp 	expire1   "  ?id "  buJa_jA )" crlf)
))


;@@@ Added by Pramila(BU) on 10-02-2014
;The license has expired.    ;shiksharthi
;लाइसेंस की अवधि समाप्त हो गई.
(defrule expire2
(declare (salience 4800))
(id-root ?id expire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaXi_samApwa_ho))
(assert (kriyA_id-subject_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expire.clp 	expire2   "  ?id "  avaXi_samApwa_ho )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  expire.clp      expire2   "  ?id " kA )" crlf)
))

;------------------------default rules--------------------------
;@@@ Added by Pramila(BU) on 10-02-2014
;He expired at midnight.       ;shiksharthi
;वह आधी रात को गुजर गया.
(defrule expire3
(declare (salience 100))
(id-root ?id expire)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gujara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expire.clp 	expire3   "  ?id "  gujara_jA )" crlf)
))

;@@@ Added by Pramila(BU) on 10-02-2014
(defrule expire4
(declare (salience 0))
(id-root ?id expire)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gujara_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  expire.clp 	expire4   "  ?id "  gujara_jA )" crlf)
))



;**************three rules of date 10-02-2014  were removed **************************
;meaning 'avaXi_samApwa_ho_jA' and 'samApwa_ho' and 'samApwa_ho_jA'
