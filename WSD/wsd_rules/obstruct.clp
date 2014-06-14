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

;@@@ Added by Pramila(BU) on 14-02-2014
;You can't park here, you're obstructing my driveway.    ;oald
;आप यहां पार्क नहीं कर सकते, आप मेरा मार्ग अवरुद्ध कर रहे हैं.
(defrule obstruct0
(declare (salience 4950))
(id-root ?id obstruct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaruxXa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obstruct.clp 	obstruct0   "  ?id " avaruxXa_kara )" crlf)
))


;----------------------------------default rules------------------------------
;@@@ Added by Pramila(BU) on 14-02-2014
;They were charged with obstructing the police in the course of their duty.    ;oald
;उन पर  पुलिस को अपने कर्तव्य के क्रियान्वयन में बाधा डालने का आरोप लगाया गया.
(defrule obstruct1
(declare (salience 100))
(id-root ?id obstruct)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  bAXA_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obstruct.clp 	obstruct1   "  ?id "   bAXA_dAla )" crlf)
))

;@@@ Added by Pramila(BU) on 14-02-2014
(defrule obstruct2
(declare (salience 0))
(id-root ?id obstruct)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id  bAXA_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obstruct.clp 	obstruct2   "  ?id "   bAXA_dAla )" crlf)
))
