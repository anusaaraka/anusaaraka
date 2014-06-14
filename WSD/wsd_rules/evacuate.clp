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

;@@@ Added by Pramila(BU) on 07-02-2014
;The fireman had to evacuate people from the nearby houses.    ;shiksharthi
;फायरमैन को पास के घरों से लोगो को हटाना पड़ा.
(defrule evacuate0
(declare (salience 4950))
(id-root ?id evacuate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatA))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evacuate.clp 	evacuate0   "  ?id " hatA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  evacuate.clp      evacuate0   "  ?id " ko )" crlf)
)
)


;@@@ Added by Pramila(BU) on 07-02-2014
;Families were evacuated to safer parts of the city.    ;oald
;परिवारों को शहर के सुरक्षित हिस्सों में ले जाया गया.
(defrule evacuate1
(declare (salience 4950))
(id-root ?id evacuate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-to_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id le_jA))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evacuate.clp 	evacuate1   "  ?id " le_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  evacuate.clp      evacuate1   "  ?id " ko )" crlf)
)
)
;-----------------------default rules------------------------------------------
;@@@ Added by Pramila(BU) on 07-02-2014
;The people evacuated the town.    ;shiksharthi
;लोगो ने शहर खाली कर दिया.
(defrule evacuate2
(declare (salience 100))
(id-root ?id evacuate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI_kara_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evacuate.clp 	evacuate2   "  ?id " KAlI_kara_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  evacuate.clp      evacuate2   "  ?id " ne )" crlf)
)
)



;@@@ Added by Pramila(BU) on 07-02-2014
(defrule evacuate3
(declare (salience 0))
(id-root ?id evacuate)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KAlI_kara_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evacuate.clp 	evacuate3   "  ?id " KAlI_kara_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  evacuate.clp      evacuate3   "  ?id " ne )" crlf)
)
)



