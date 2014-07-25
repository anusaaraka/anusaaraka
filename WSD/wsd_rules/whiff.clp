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
;@@@ Added by Pramila(BU) on 08-03-2014
;A whiff of sea-breeze.   ;shiksharthi
;समुद्री हवा का एक झोंका.
(defrule whiff0
(declare (salience 5000))
(id-root ?id whiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 sea-breeze|wind|air)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JoMkA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whiff.clp 	whiff0   "  ?id "  JoMkA )" crlf))
)

;@@@ Added by Pramila(BU) on 08-03-2014
;A whiff of cigar smoke.   ;oald
;सिगार के धुएं का कश.
(defrule whiff1
(declare (salience 5000))
(id-root ?id whiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-word ?id1 smoke|cigarette)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kaSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whiff.clp 	whiff1   "  ?id "  kaSa )" crlf))
)

;@@@ Added by Pramila(BU) on 08-03-2014
;To whiff off the dust.   ;shiksharthi
;धूल को फूँक से उड़ाना
(defrule whiff2
(declare (salience 5000))
(id-root ?id whiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-word ?id1 off)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PUzka_se_udZA))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " whiff.clp	whiff2  "  ?id "  " ?id1 " PUzka_se_udZA  )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  whiff.clp 	whiff2   "  ?id " ko )" crlf))
)

;---------------default rules------------------------------
;@@@ Added by Pramila(BU) on 08-03-2014
;The fish is whiffing.   ;shiksharthi
;मछली हल्की बदबू कर रही है.
(defrule whiff3
(declare (salience 100))
(id-root ?id whiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id halkI_baxabU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whiff.clp 	whiff3   "  ?id " halkI_baxabU_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 08-03-2014
;He leaned towards me and I got a whiff of garlic.   ;cald
;वह मेरी तरफ झुका और मुझे लहसुन की गंध आई.
(defrule whiff4
(declare (salience 100))
(id-root ?id whiff)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaMXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  whiff.clp 	whiff4   "  ?id "  gaMXa )" crlf))
)

