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

;@@@ Added by Sonam Gupta MTech IT Banasthali 20-3-2014
;She managed to pry open a window and escape. [cambridge]
;उसने मुश्किल से खिड़की खोली और निकली .
(defrule pry1
(declare (salience 5000))
(id-root ?id pry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-upasarga  ?id ?id1)
(id-root ?id1 open|apart|loose)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id muSkila_se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pry.clp 	pry1   "  ?id "  muSkila_se )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 20-3-2014
;To pry into someone's personal life.  [cambridge]
;किसी के निजी जीवन में ताँक झाँक करना .
(defrule pry2
(declare (salience 4000))
(id-root ?id pry)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAzka_JAzka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pry.clp 	pry2   "  ?id "  wAzka_JAzka_kara )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 20-3-2014
(defrule pry3
(id-root ?id pry)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAzka_JAzka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pry.clp 	pry3   "  ?id "  wAzka_JAzka_kara )" crlf))
)

