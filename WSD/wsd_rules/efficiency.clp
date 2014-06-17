;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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

;@@@ Added by Pramila(Banasthali University) on 30-01-2014
;I was impressed by the efficiency with which she handled the crisis.         ;oald
;मैं उसकी दक्षता से प्रभावित था जिससे उसने संकट को संभाला.
(defrule efficiency0
(declare (salience 5000))
(id-root ?id efficiency)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun )
(viSeRya-jo_samAnAXikaraNa  ?id ?id2)
(kriyA-with_saMbanXI  ?kri ?id2)
(kriyA-subject  ?kri ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xakRawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  efficiency.clp 	efficiency0   "  ?id " xakRawA )" crlf)
)
)

;-------------------------default rules-------------------------------------
;@@@ Added by Pramila(Banasthali University) on 30-01-2014
;Plans and schemes to heighten the efficiency of the University have been the subject of my day dreams into which even a busy man lapses 
;from time to time, they have haunted me in the hours of nightly rest.       ;gyannidhi
;विश्वविद्यालय की कुशलता को बढ़ाने की योजनाएं और कार्यक्रम मेरे उन दिवास्वप्नों का विषय रहे हैं जिनमें एक व्यस्त आदमी भी समय-समय पर खो जाता है, रात को विश्राम करते समय इन्होंने मुझे जबड़े रखा है।
(defrule efficiency1
(declare (salience 4000))
(id-root ?id efficiency)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuSalawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  efficiency.clp 	efficiency1   "  ?id " kuSalawA )" crlf)
)
)

;@@@ Added by Pramila(Banasthali University) on 30-01-2014
(defrule efficiency2
(id-root ?id efficiency)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kuSalawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  efficiency.clp 	efficiency2   "  ?id " kuSalawA )" crlf)
))
