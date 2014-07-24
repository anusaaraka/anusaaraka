;#############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;######################################################################


;Consideration of these symmetries helps one arrive at results much faster than otherwise by a straightforward calculation. 
;इन सममितियों पर विचार करना सीधे - सीधे परिकलनों की तुलना में कहीं अधिक शीघ्रता से परिणाम तक पहुँचने में सहायक होता है .[physics-corpus]
;In a straightforward case no fees will be charged.[oxford dict]
; सीधे-सीधे मामले में कोई शुल्क वसूल नहीं किया जाएगा.

(defrule straightforward0
(declare (salience 4900))
(id-root ?id straightforward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
;(kriyA-subject ?id ?id2)
;(id-root ?id2  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXe_sIXe ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  straightforward.clp 	straightforward0   "  ?id " sIXe_sIXe)" crlf))
)

;He is very straightforward.[cambridge dict]
;वह बहुत सीधा है.


(defrule straightforward1
(declare (salience 5000))
(id-root ?id straightforward)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(or (subject-subject_samAnAXikaraNa  ?id1 ?id)(and (viSeRya-viSeRaNa  ?id2 ?id)(id-root ?id2  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  straightforward.clp 	straightforward1   "  ?id " sIXA)" crlf))
)
;....................Default rule..................
;A straightforward young man.[oxford dict]
;एक सीधा युवक.
(defrule straightforward2
(declare (salience 0))
(id-root ?id straightforward)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sIXA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  straightforward.clp 	straightforward2   "  ?id " sIXA)" crlf))
)


