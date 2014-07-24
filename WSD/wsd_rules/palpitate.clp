;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam27virgo@gmail.com)
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

;@@@Added by Sonam Gupta MTech IT Banasthali 7-2-2014
;His body was palpitating with fear. [Rajpal]
;उसका शरीर डर से काँप रहा था. 
(defrule palpitate0
(declare (salience 5000))
(id-root ?id palpitate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI  ?id ?)
(kriyA-subject  ?id ?id1)
(not(id-root ?id1 heart))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAzpa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  palpitate.clp 	palpitate0  "  ?id "  kAzpa )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 7-2-2014
;The sight made my heart palpitate. [Rajpal]
;उस दृश्य से मेरा दिल धड़कने लगा. 
(defrule palpitate1
(declare (salience 4000))
(id-root ?id palpitate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  palpitate.clp 	palpitate1  "  ?id "  XadZaka )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 7-2-2014
(defrule palpitate2
(id-root ?id palpitate)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id XadZaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  palpitate.clp 	palpitate2  "  ?id "  XadZaka )" crlf))
)

