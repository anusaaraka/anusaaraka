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


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;The floor was of polished wood. [Gyannidhi]
;फर्श चिकनी लकडी का था . 
(defrule polished0
(declare (salience 5000))
(id-root ?id polished)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(id-root ?id1 floor|wood|ground|surface)
(viSeRya-viSeRaNa  ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cikanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  polished.clp 	polished0   "  ?id "  cikanI )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 2013
;She gave a polished performance on the piano. [OALD]
;उसने पियानो पर एक परिष्कृत प्रदर्शन दिया . 
(defrule polished1
(declare (salience 4900))
(id-root ?id polished)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariRkqwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  polished.clp 	polished1   "  ?id "  pariRkqwa )" crlf))
)



