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

;@@@ Added by Pramila(BU) on 25-03-2014
;He is the only wretched student in the school that failed.   ;shiksharthi
;विधालय में वही केवल अभागा छात्र था जो फेल हो गया.
(defrule wretched0
(declare (salience 4900))
(id-word ?id wretched)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-in_saMbanXI  ?id1 ?id2)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id aBAgA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  wretched.clp 	wretched0   "  ?id "  aBAgA )" crlf)
))

;@@@ Added by Pramila(BU) on 25-03-2014
;I feel wretched.   ;shiksharthi
;मैं दुःखी महसूस करता हूँ.
(defrule wretched1
(declare (salience 4900))
(id-word ?id wretched)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xuHKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  wretched.clp 	wretched1   "  ?id "  xuHKI )" crlf)
))


;@@@ Added by Pramila(BU) on 25-03-2014
;He had to lead a wretched life.   ;shiksharthi
;उसे दुःखी जीवन व्यतीत करना पड़ा.
(defrule wretched2
(declare (salience 4900))
(id-word ?id wretched)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-object  ?kri ?id1)
(kriyA-kriyArWa_kriyA  ?id2 ?kri)
(kriyA-subject  ?kri ?sub)
(id-root ?sub ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id xuHKI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  wretched.clp 	wretched2   "  ?id "  xuHKI )" crlf)
))

;----------------default rules--------------------------------
;@@@ Added by Pramila(BU) on 25-03-2014
;They live in a wretched house.  ;shiksharthi
;वे एक गंदे घर में रहते हैं.
(defrule wretched3
(declare (salience 100))
(id-word ?id wretched)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gaMxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  wretched.clp 	wretched3   "  ?id "  gaMxA )" crlf)
))

;@@@ Added by Pramila(BU) on 25-03-2014
(defrule wretched4
(declare (salience 0))
(id-word ?id wretched)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id gaMxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng   " ?*wsd_dir* "  wretched.clp 	wretched4   "  ?id "  gaMxA )" crlf)
))

