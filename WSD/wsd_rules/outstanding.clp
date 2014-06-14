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

;@@@ Added by Pramila(BU) on 15-02-2014
;A lot of work is still outstanding.  ;oald
;बहुत सारा काम अभी भी बाकी है.
(defrule outstanding1
(declare (salience 4900))
(id-root ?id outstanding)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaka  ?id ?id1)
(id-root ?id1 still)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outstanding.clp 	outstanding1   "  ?id "  bAkI )" crlf)
))

;@@@ Added by Pramila(BU) on 15-02-2014
;The negotiations failed to solve outstanding issues.  ;oald
;बातचीत बाकी मुद्दो को हल करने में असफल हुआ.
(defrule outstanding2
(declare (salience 5000))
(id-root ?id outstanding)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(kriyA-object  ?kri ?id1)
(kriyA-kriyArWa_kriyA  ?id2 ?kri)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outstanding.clp 	outstanding2   "  ?id "  bAkI )" crlf)
))

;@@@ Added by Pramila(BU) on 15-02-2014
;There are still a couple of problems outstanding.  ;cald
;दो समस्याएँ अभी भी बाकी है.
(defrule outstanding3
(declare (salience 4900))
(id-root ?id outstanding)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(viSeRya-of_saMbanXI  ?id2 ?id1)
(kriyA-aBihiwa  ?kri ?id2)
(kriyA-kriyA_viSeRaNa  ?kri ?id3)
(id-root ?id3 still)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAkI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outstanding.clp 	outstanding3   "  ?id "  bAkI )" crlf)
))

;@@@ Added by Pramila(BU) on 15-02-2014
;She has outstanding debts of over £500.   ;oald 
;उस पर 500 पाउंड का बकाया ऋण है.
(defrule outstanding4
(declare (salience 4950))
(id-root ?id outstanding)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id2 ?id)
(viSeRya-of_saMbanXI  ?id2 ?id1)
(id-root ?id2 debt|money)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outstanding.clp 	outstanding4   "  ?id "  bakAyA )" crlf)
))



;-----------------------default rules-----------------------------------------
;@@@ Added by Pramila(BU) on 15-02-2014
;He is the outstanding pupil of this school.   ;shiksharthi
;वह इस  विद्यालय का श्रेष्ठ छात्र है.
(defrule outstanding5
(declare (salience 100))
(id-root ?id outstanding)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SreRTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outstanding.clp 	outstanding5   "  ?id "  SreRTa )" crlf)
))

;@@@ Added by Pramila(BU) on 15-02-2014
(defrule outstanding6
(declare (salience 0))
(id-root ?id outstanding)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SreRTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  outstanding.clp 	outstanding6   "  ?id "  SreRTa )" crlf)
))

