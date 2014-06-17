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

;@@@ Added by Pramila(BU) on 26-03-2014
;He wringed the hen's neck.   ;shiksharthi
;उसने मुर्गी की गर्दन मरोड़ डाली
(defrule wring1
(declare (salience 5000))
(id-root ?id wring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(viSeRya-RaRTI_viSeRaNa  ?id1 ?id2)
(id-root ?id2 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marodZa_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wring.clp 	wring1   "  ?id "  marodZa_dAla )" crlf)
))

;@@@ Added by Pramila(BU) on 26-03-2014
;You should not wring his words.   ;shiksharthi
;तुम्हे उसके शब्दों का गलत अर्थ नही लगाना चाहिए.
(defrule wring2
(declare (salience 5000))
(id-root ?id wring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 word)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id galawa_arWa_lagA))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wring.clp 	wring2   "  ?id "  galawa_arWa_lagA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  wring.clp 	wring2     "  ?id " kA )" crlf)
))

;@@@ Added by Pramila(BU) on 26-03-2014
;A few concessions were wrung from the government.   ;oald
;कुछ रियायतें सरकार से ऐंठी गई.
(defrule wring3
(declare (salience 5000))
(id-root ?id wring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-from_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id EMTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wring.clp 	wring3   "  ?id "  EMTa )" crlf)
))

;@@@ Added by Pramila(BU) on 26-03-2014
;They managed to wring the truth out of him.   ;oald
;वे उससे सच्चाई निकलवाने मे कामयाब रहे.
(defrule wring4
(declare (salience 5000))
(id-root ?id wring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-of_saMbanXI  ?id ?id1)
(kriyA-upasarga ?id ?id2)
(id-word ?id2 out)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id2 nikalvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " wring.clp 	wring4 "  ?id "  "  ?id2 "  nikalvA )" crlf))
)



;--------------------default rules----------------------------------
;@@@ Added by Pramila(BU) on 26-03-2014
;She wrung the towel and let it dry.   ;shiksharthi
;उसने तौलिया निचोड़ा और सूखने के लिए डाल दिया.
(defrule wring5
(declare (salience 100))
(id-root ?id wring)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nicodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wring.clp 	wring5   "  ?id "  nicodZa )" crlf)
))

;@@@ Added by Pramila(BU) on 26-03-2014
(defrule wring6
(declare (salience 0))
(id-root ?id wring)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nicodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " wring.clp 	wring6   "  ?id "  nicodZa )" crlf)
))

