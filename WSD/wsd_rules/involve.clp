;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02@gmail.com)
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
;The derivation of Eqs. (12.17) — (12.19) involves the assumption that the electronic orbits are circular, though orbits under inverse square force are, in general elliptical.
;समीकरणों (12.17) – (12.19) की व्युत्पत्ति इस कल्पना पर आधारित है कि इलेक्ट्रॉन की कक्षाएँ वृत्तीय हैं, यद्यपि व्युत्क्रम वर्ग बल के अधीन कक्षाएँ सामान्यतः दीर्घवृत्तीय होती हैं. 
(defrule involve0
(declare (salience 5000))
(id-root ?id involve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 assumption)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_AXAriwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  involve.clp 	involve0   "  ?id "  para_AXAriwa )" crlf))
)

;XXXXXXXXXXXXXXXXXXDEFAULTxxxxxxxxxxxxxxxxx
;Ram was also involved in theft. [HINKHOJ]
;राम भी चोरी में सम्मिलित था | 
(defrule involve1
(declare (salience 3000))
(id-root ?id involve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sammiliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  involve.clp 	involve1   "  ?id "  sammiliwa )" crlf))
)

;It was a very long and involved story.
;वह एक बहुत लम्बी अौर पेचीदा कहानी थी|
(defrule involve2
(declare (salience 3000))
(id-root ?id involve)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pecIxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  involve.clp 	involve2   "  ?id "  pecIxA )" crlf))
)

;It involves the assumption that interpreters exist within an operational epistemology, and heuristic action framework.
;Incarnation involves the assumption not only of a human form, but also of a personality.
;The second accident involved two cars and a lorry.
;I prefer teaching methods that actively involve students in learning.
;The operation involves putt ing a small tube into your heart. 
;Research involving the use of biological warfare agents will be used for defensive purposes. 
;She's been involved with animal rights for many years. 
;It would be difficult not to involve the child's father in the arrangements.
