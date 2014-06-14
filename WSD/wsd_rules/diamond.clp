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
;@@@ Added by Pramila(Banasthali university) on 30-12-2013
;The ten of diamonds.      ;oald
;ईंट का पत्ते की दस.
;The jack of diamonds.      ;cald
;ईंट का पत्ते की जैक.
(defrule diamond0
(declare (salience 4900))
(id-root ?id diamond)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id IMta_kA_pawwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diamond.clp 	diamond0   "  ?id " IMta_kA_pawwA  )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 30-12-2013
;Diamonds are trumps.        ;oald
;ईंट का पत्ते तुरुप हैं.
(defrule diamond1
(declare (salience 4900))
(id-root ?id diamond)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa  ?id ?id1)
(id-root ?id1 trump)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id IMta_kA_pawwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diamond.clp 	diamond1   "  ?id " IMta_kA_pawwA  )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 30-12-2013
;Joe's socks had diamond patterns on them.      ;cald
;जोय के मोजे पर विषम कोणीय समचतुर्भुज पैटर्न था.
(defrule diamond2
(declare (salience 4900))
(id-root ?id diamond)
?mng <-(meaning_to_be_decided ?id)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?id)
(kriyA-object  ?id2 ?id1)
(id-root ?id2 has|have)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viRama_koNIya_samacawurBuja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diamond.clp 	diamond2   "  ?id " viRama_koNIya_samacawurBuja  )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 30-12-2013
;She was wearing her diamonds.        ;oald
;उसने अपने हीरे के आभूषण पहने हुए थे.
(defrule diamond3
(declare (salience 5000))
(id-root ?id diamond)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 wear)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hIre_ke_ABURaNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diamond.clp 	diamond3   "  ?id " hIre_ke_ABURaNa  )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 30-12-2013
;The tiara was set with diamonds and rubies.     ;cald
;मुकुट हीरे और माणिक से सजा हुआ था.
(defrule diamond4
(declare (salience 4000))
(id-root ?id diamond)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hIrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diamond.clp 	diamond4   "  ?id " hIrA  )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 30-12-2013
;She played a diamond.             ;cald
;उसने ईंट का पत्ता चला.
;You must play a diamond if you have one.    ;oald
;यदि आपके पास है तो आपको एक ईंट का पत्ता चलना चाहिए.
(defrule diamond5
(declare (salience 4900))
(id-root ?id diamond)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id1 ?id)
(id-root ?id1 play)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id IMta_kA_pawwA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diamond.clp 	diamond5   "  ?id " IMta_kA_pawwA  )" crlf))
)

;@@@ Added by Pramila(Banasthali university) on 01-04-2014
;We are expecting the sales of diamonds to go up by 25 percent this year.   ;news-dev corpus
;हमें हीरे की बिक्री पिछले साल की तुलना में इस साल 25 फीसदी अधिक रहने की उम्मीद है।
(defrule diamond6
(declare (salience 5000))
(id-root ?id diamond)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-root ?id1 sale|purchase)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hIrA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  diamond.clp 	diamond6   "  ?id " hIrA  )" crlf))
)

