;##############################################################################
;#  Copyright (C) 2002-2005 SONAM GUPTA (sonam27virgo@gmail.com)
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

;Added by Sonam Gupta MTech IT Banasthali 2013
;What's the population of Brazil? [Cambridge]
;ब्राजील की जनसंख्या क्या है? 
(defrule population0
(declare (salience 5000))
(id-root ?id population)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-root ?id1 meeting)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nivAsI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  population.clp 	population0  "  ?id " nivAsI)" crlf))
)


;Added by Sonam Gupta MTech IT Banasthali 2013
;The entire population of the town was at the meeting. [OALD]
;नगर के सम्पूर्ण निवासी बैठक में थे . 
(defrule population1
(declare (salience 4900))
(id-root ?id population)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id janasaMKyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  population.clp 	population1  "  ?id " janasaMKyA)" crlf))
)

