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

;@@@ Added by Pramila(BU) on 20-03-2014
;The aircraft base is protected with specially designed shelters which are built to withstand ground and air attacks.  ;cald
;विमान बेस विशेष रूप से डिजाइन रक्षकों से सुरक्षित है जो जमीन और हवाई हमलों का सामना करने के लिए बनाया जाता है .
(defrule withstand0
(declare (salience 5000))
(id-root ?id withstand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 attack)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAmanA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  withstand.clp 	withstand0   "  ?id "  sAmanA_kara )" crlf)
))

;@@@ Added by Pramila(BU) on 20-03-2014
;The materials used have to be able to withstand high temperatures.  ;oald
;इस्तेमाल सामग्री उच्च तापमान का प्रतिरोध करने में सक्षम होनी चाहिए.
(defrule withstand1
(declare (salience 4900))
(id-root ?id withstand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(saMjFA-to_kqxanwa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiroXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  withstand.clp 	withstand1   "  ?id "  prawiroXa_kara )" crlf)
))

;@@@ Added by Pramila(BU) on 20-03-2014
;I could not withstand the temptation.  ;shisharthi
;मैं प्रलोभन रोक नहीं सका
(defrule withstand2
(declare (salience 5000))
(id-root ?id withstand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 temptation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id roka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  withstand.clp 	withstand2   "  ?id "  roka )" crlf)
))

;@@@ Added by Pramila(BU) on 20-03-2014
;They had withstood siege, hunger and deprivation.  ;oald
;वे घेराबंदी, भूख और अभाव बरदाश्त कर चुके थे.
(defrule withstand3
(declare (salience 100))
(id-root ?id withstand)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baraxASwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  withstand.clp 	withstand3   "  ?id "  baraxASwa_kara )" crlf)
))

;@@@ Added by Pramila(BU) on 20-03-2014
(defrule withstand4
(declare (salience 0))
(id-root ?id withstand)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baraxASwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  withstand.clp 	withstand4   "  ?id "  baraxASwa_kara )" crlf)
))
