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
;@@@ Added by Pramila(BU) on 09-01-2014
;When the rain came down the crowds started to disperse.        ;cald
;जब बारिश हुई तो भीड़ तितर-बितर होना शुरू हो गई.
(defrule disperse0
(declare (salience 5000))
(id-root ?id disperse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiwara-biwara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disperse.clp 	disperse0   "  ?id " wiwara-biwara_ho )" crlf))
)

;@@@ Added by Pramila(BU) on 09-01-2014
;The police dispersed the crowd.    ;shiksharthi
;पुलिस ने भीड़ को तितर-बितर कर दिया
(defrule disperse1
(declare (salience 4500))
(id-root ?id disperse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiwara-biwara_kara_xe))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disperse.clp 	disperse1   "  ?id " wiwara-biwara_kara_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  disperse.clp      disperse1   "  ?id " ko )" crlf))
)

;@@@ Added by Pramila(BU) on 09-01-2014
;The fog began to disperse.        ;oald
;कोहरा दूर होना शुरू हो गया.
(defrule disperse2
(declare (salience 5000))
(id-root ?id disperse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
;(kriyA-kriyArWa_kriyA  ?id2 ?id)
(kriyA-subject  ?id ?id1)
(id-root ?id1 fog|mist)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disperse.clp 	disperse2   "  ?id " xUra_ho )" crlf))
)

;@@@ Added by Pramila(BU) on 09-01-2014
;The sun dispersed the mist.        ;shiksharthi 
;सूर्य ने धुन्ध दूर कर दी.
(defrule disperse3
(declare (salience 5000))
(id-root ?id disperse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 mist|fog)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disperse.clp 	disperse3   "  ?id " xUra_kara_xe )" crlf))
)

;---------------default rules-------------------
;@@@ Added by Pramila(BU) on 09-01-2014
;The crowd dispersed.              ;shiksharthi           
;भीड़ तितर-बितर हो गई.
(defrule disperse4
(declare (salience 4000))
(id-root ?id disperse)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiwara-biwara_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disperse.clp 	disperse4   "  ?id " wiwara-biwara_ho_jA )" crlf))
)

;@@@ Added by Pramila(BU) on 09-01-2014
(defrule disperse5
(declare (salience 0))
(id-root ?id disperse)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wiwara-biwara_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disperse.clp 	disperse5   "  ?id " wiwara-biwara_ho_jA )" crlf))
)
