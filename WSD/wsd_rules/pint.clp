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


;@@@ Added by Sonam Gupta MTech IT Banasthali 16-1-2014
;Do you want to go for a pint later? [OALD]
;क्या आप बाद में बीयर के लिये जाना चाहते हैं? 
(defrule pint1
(declare (salience 5500))
(id-root ?id pint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-for_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bIyara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prone.clp 	pint1   "  ?id "  bIyara )" crlf))
)


;############################################################Default Rule######################################################################

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-1-2014
;A pint of beer. [OALD]
;बीयर का डेढ पाव .
(defrule pint2
(id-root ?id pint)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id deDa_pAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prone.clp 	pint2   "  ?id "  deDa_pAva )" crlf))
)
