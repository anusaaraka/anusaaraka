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



;@@@ Added by Pramila(BU) on 17-02-2014
;She overcame injury to win the Olympic gold medal.  ;oald
;उसने ओलिंपिक स्वर्ण पदक जीतने के लिये चोट पर विजय पा ली.
(defrule overcome1
(declare (salience 4900))
(id-root ?id overcome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id najaraaMxAja_kara_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overcome.clp 	overcome1   "  ?id "  najaraaMxAja_kara_xe )" crlf)
))

;@@@ Added by Pramila(BU) on 17-02-2014
;The two parties managed to overcome their differences on the issue.  ;oald
;दो पक्षों के मुद्दे पर अपने मतभेदों को दूर करने में कामयाब रहे.
;He finally managed to overcome his fear of flying.   ;oald
;वह आखिर में उड़ान के अपने डर को दूर करने में कामयाब रहे. 
(defrule overcome2
(declare (salience 4900))
(id-root ?id overcome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xUra_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overcome.clp 	overcome2   "  ?id "  xUra_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  overcome.clp      overcome2   "  ?id " ko )" crlf)
))

;@@@ Added by Pramila(BU) on 17-02-2014
;In the final game Sweden easily overcame France.  ;oald
;अंतिम मैच में स्वीडन ने आसानी से फ्रांस को हरा दिया.
(defrule overcome3
(declare (salience 4900))
(id-root ?id overcome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
(id-root ?id1 game|match)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id harA_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overcome.clp 	overcome3   "  ?id "  harA_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  overcome.clp      overcome3   "  ?id " ne )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  overcome.clp      overcome3   "  ?id " ko )" crlf)
))

;@@@ Added by Pramila(BU) on 17-02-2014
;Overcome by curiosity, the boy looked through the window.  ;oald
;जिज्ञासा के वशीभूत होकर , लड़के ने खिड़की से देखा.
(defrule overcome4
(declare (salience 4900))
(id-root ?id overcome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-by_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (+ ?id 1) ke_vaSIBUwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " overcome.clp	overcome4  "  ?id "  " ?id1 "  ke_vaSIBUwa_ho  )" crlf))
)


;---------------------default rules-----------------------------
;@@@ Added by Pramila(BU) on 17-02-2014
;He was overcome with grief.  ;shiksharthi
;वह शोक से अभिभूत हो गया था.
(defrule overcome5
(declare (salience 100))
(id-root ?id overcome)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBiBUwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overcome.clp 	overcome5   "  ?id "  aBiBUwa_ho )" crlf)
))

;@@@ Added by Pramila(BU) on 17-02-2014
(defrule overcome6
(declare (salience 0))
(id-root ?id overcome)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aBiBUwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  overcome.clp 	overcome6   "  ?id "  aBiBUwa_ho )" crlf)
))
