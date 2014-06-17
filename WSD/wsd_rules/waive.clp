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



;@@@ Added by Pramila(BU) on 25-02-2014
;We have decided to waive the tuition fees in your case.   ;oald
;हमने आपके मामले में ट्यूशन फीस माफ करने का फैसला किया है.
(defrule waive1
(declare (salience 5000))
(id-root ?id waive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 fee)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAPa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waive.clp 	waive1   "  ?id "  mAPa_kara )" crlf)
))


;@@@ Added by Pramila(BU) on 25-02-2014
;We cannot waive this condition only for your sake.   ;shiksharthi
;हम केवल आपके लिए इस शर्त को  नहीं हटा सकते.
(defrule waive2
(declare (salience 5000))
(id-root ?id waive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 condition|restriction)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hatA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waive.clp 	waive2   "  ?id "  hatA )" crlf)
))

;@@@ Added by Pramila(BU) on 25-02-2014
;He waived his right to appeal against the verdict.   ;oald
;उसने इस फैसले के खिलाफ अपील करने के लिए अपने हक को त्याग दिया.
(defrule waive3
(declare (salience 100))
(id-root ?id waive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wyAga_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waive.clp 	waive3   "  ?id "  wyAga_xe )" crlf)
))
