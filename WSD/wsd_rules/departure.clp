;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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


;It was a radical departure from tradition.	;OALD
;यह परंपरा से एक स्वाभाविक व्यतिकरण था.
;Any violation of Gauss's law will indicate departure from the inverse square law.	;physics
;गाउस नियम का कोई उल्लङ्घन व्युत्क्रम वर्ग नियम से व्यतिकरण को सङ्केत करेगा.
(defrule departure0
(declare (salience 5000))
(id-root ?id departure)
?mng <-(meaning_to_be_decided ?id)
(or(and(kriyA-object  ?id1 ?id)(kriyA-from_saMbanXI  ?id1 ?id2))(viSeRya-from_saMbanXI  ?id ?id1))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyawikaraNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  departure.clp 	departure0   "  ?id "  vyawikaraNa )" crlf))
)

;-----------------------------default rules-------------------------------------------------------------

;Flights should be confirmed 48 hours before departure.	;OALD
;उड़ानें रवानगी से 48 घंटे पहले  निश्चित हो जानी चाहिए.
;All departures are from Manchester.	;Oald
;सभी रवानगी मैनचेस्टर से हैं.
;Our departure was delayed because of bad weather. 	;Cambridge
;हमारी रवानगी खराब मौसम के कारण देरी से हुई.
(defrule departure1
(declare (salience 4000))
(id-root ?id departure)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ravAnagI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  departure.clp 	departure1   "  ?id "  ravAnagI )" crlf))
)


(defrule departure2
(declare (salience 3000))
(id-root ?id departure)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ravAnagI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  departure.clp 	departure2   "  ?id " ravAnagI  )" crlf))
)


