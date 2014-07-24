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
;@@@ Added by jagriti(11.02.2014)
;A male bird was struting in front of the female bird.[rajpal]
;एक नर पक्षी मादा पक्षी के सामने फुदक रहा था.
(defrule strut0
(declare (salience 5000))
(id-root ?id strut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 bird)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Puxaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strut.clp 	strut0   "  ?id "Puxaka)" crlf))
)
;...default rule....
;@@@ Added by jagriti(11.02.2014)
;The boy was struting along the street.[rajpal]
;लड़का गली में अकड कर चल रहा  था.
(defrule strut1
(declare (salience 100))
(id-root ?id strut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id akadZakara_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strut.clp 	strut1   "  ?id "akadZakara_cala)" crlf))
)
;@@@ Added by jagriti(11.02.2014)
;His strut has become a matter of common talk.[rajpal]
;उसकी अकड़ की चाल साधारण वार्ता का विषय बन चुकी है.
(defrule strut2
(declare (salience 100))
(id-root ?id strut)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id akadZa_kI_cAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  strut.clp 	strut2   "  ?id "akadZa_kI_cAla)" crlf))
)
