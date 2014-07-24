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

;@@@ Added by Pramila(BU) on 26-02-2014
;His voice wavered with emotion.  ;oald
;उसकी आवाज भावना के साथ लड़खडाई.
(defrule waver0
(declare (salience 4900))
(id-root ?id waver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 voice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ladZaKadZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waver.clp 	waver0   "  ?id "  ladZaKadZA )" crlf)
))

;@@@ Added by Pramila(BU) on 26-02-2014
;I once wavered about taking the examination.  ;shiksharthi
;एक बार मैं परीक्षा देने में हिचकिचाया.
;They wavered between agreeing and disagreeing.  ;shiksharthi
;वे सहमति और असहमति के बीच में हिचकिचाए.
(defrule waver1
(declare (salience 4900))
(id-root ?id waver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-about_saMbanXI  ?id ?id1)(kriyA-between_saMbanXI  ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hicakicA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waver.clp 	waver1   "  ?id "  hicakicA )" crlf)
))

;@@@ Added by Pramila(BU) on 26-02-2014
;Her eyes wavered whet she looked at him.  ;shiksharthi
;जब उसने उस पर निगाह डाली तो उसकी आँखे हिलने-डुलने लगी
(defrule waver2
(declare (salience 4900))
(id-root ?id waver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 eye)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilane-dulane_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waver.clp 	waver2   "  ?id " hilane-dulane_laga )" crlf)
))

;@@@ Added by Pramila(BU) on 26-02-2014
;The light is wavering.  ;shiksharthi
;बत्ती घट-बढ़ रही है
(defrule waver3
(declare (salience 4900))
(id-root ?id waver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 light)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Gata-baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waver.clp 	waver3   "  ?id " Gata-baDZa )" crlf)
))

;------------------------default rules---------------------


;@@@ Added by Pramila(BU) on 26-02-2014
;Her determination never wavered.  ;oald
;उसका दृढ़ संकल्प कभी नहीं डगमगाया.
;The young man wavered.   ;shiksharthi
; नवयुवक डगमगाया.
(defrule waver4
(declare (salience 100))
(id-root ?id waver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dagamagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waver.clp 	waver4   "  ?id "  dagamagA )" crlf)
))

;@@@ Added by Pramila(BU) on 26-02-2014
(defrule waver5
(declare (salience 100))
(id-root ?id waver)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dagamagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  waver.clp 	waver5   "  ?id "  dagamagA )" crlf)
))
