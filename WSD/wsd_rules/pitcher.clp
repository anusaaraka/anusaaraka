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



;@@@Added by Sonam Gupta MTech IT Banasthali 5-2-2014
;He is among the top pitchers of the league. [OALD]
;वह लीग के सबसे अच्छे पिचर में से एक है . 
(defrule pitcher0
(declare (salience 5000))
(id-root ?id pitcher)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-viSeRaNa  ?id ?id1))
(id-root ?id1 league|match|top|best|good|gane|baseball)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id picara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitcher.clp 	pitcher0  "  ?id "  picara )" crlf))
)


;@@@Added by Sonam Gupta MTech IT Banasthali 5-2-2014
;A pitcher of water. [OALD]
;पानी का जग . 
(defrule pitcher1
(id-root ?id pitcher)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jaga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pitcher.clp 	pitcher1  "  ?id "  jaga )" crlf))
)

