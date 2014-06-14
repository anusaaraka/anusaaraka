;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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

;@@@ Added by Pramila(Banasthali University) on 30-01-2014
;Some goondas ensnared the boys.       ;shiksharthi
;कुछ गुंडो ने लड़को को बहकाया
(defrule ensnare0
(declare (salience 5000))
(id-root ?id ensnare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahakA))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ensnare.clp 	ensnare0   "  ?id "  bahakA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  ensnare.clp      ensnare0   "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  ensnare.clp     ensnare0   "  ?id " ko )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 30-01-2014
;He was ensnared by his charm.       ;shiksharthi
;वह उसके सौन्दर्य से बहक गया.
(defrule ensnare1
(declare (salience 5000))
(id-root ?id ensnare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
(kriyA-karma  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bahaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ensnare.clp 	ensnare1   "  ?id "  bahaka )" crlf)
)
)

;---------------default rules------------------------------------------
;@@@ Added by Pramila(Banasthali University) on 30-01-2014
;A deer was ensnared by hunters.         ;shiksharthi
;एक हिरन को शिकारियों द्वारा फंदे में फँसाया गया. 
(defrule ensnare2
(declare (salience 4000))
(id-root ?id ensnare)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PMxe_meM_PazsA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ensnare.clp 	ensnare2   "  ?id "  PMxe_meM_PazsA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  ensnare.clp     ensnare2   "  ?id " ko )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 30-01-2014
(defrule ensnare3
(declare (salience 0))
(id-root ?id ensnare)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PMxe_meM_PazsA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ensnare.clp 	ensnare3   "  ?id "  PMxe_meM_PazsA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  ensnare.clp     ensnare3   "  ?id " ko )" crlf)
)
)
