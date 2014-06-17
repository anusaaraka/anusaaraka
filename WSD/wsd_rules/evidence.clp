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

;@@@ Added by Pramila(BU) on 07-02-2014
;His face was in evidence at the meeting.    ;shiksharthi
;उसका चेहरा बैठक में स्पष्ट था.
(defrule evidence0
(declare (salience 4950))
(id-root ?id evidence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-at_saMbanXI  ?id ?)
(id-word =(- ?id 1) in)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id (- ?id 1) spaRta))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " evidence.clp	evidence0  "  ?id "  " (- ?id 1) "  spaRta  )" crlf))
)

;@@@ Added by Pramila(BU) on 07-02-2014
;There are evidences that he stayed in this hotel.    ;shiksharthi
;इसके प्रमाण है कि वह इस होटल में ठहरा था.
(defrule evidence1
(declare (salience 4950))
(id-root ?id evidence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-word =(+ ?id 1) that)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pramANa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evidence.clp 	evidence1   "  ?id " pramANa )" crlf)
)
)

;-----------------default rules----------

;@@@ Added by Pramila(BU) on 07-02-2014
;He was convicted on our evidence.   ;shiksharthi
;उसे हमारी गवाही पर दंडित कर दिया.
(defrule evidence2
(declare (salience 100))
(id-root ?id evidence)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gavAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evidence.clp 	evidence2   "  ?id " gavAhI )" crlf)
)
)

;@@@ Added by Pramila(BU) on 07-02-2014
(defrule evidence3
(declare (salience 0))
(id-root ?id evidence)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gavAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  evidence.clp 	evidence3   "  ?id " gavAhI )" crlf)
)
)
