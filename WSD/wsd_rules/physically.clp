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

;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
;What this means physically is that acceleration and velocity can not change values abruptly at an instant. [ncert]
;इसका अभिप्राय है कि वेग तथा त्वरण किसी क्षण सहसा नहीं बदल सकते.
(defrule physically1
(declare (salience 5000))
(id-root ?id physically)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
(viSeRya-viSeRaka  ?id1 ?id)
(id-root ?id1 means|indicate|imply)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 aBiprAya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " physically.clp  physically1  "  ?id "  " ?id1 "  aBiprAya  )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
(defrule physically2
(id-root ?id physically)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SArIrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  physically.clp 	physically2  "  ?id " 	SArIrika )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 13-3-2014
(defrule physically3
(id-root ?id physically)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SArIrika))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  physically.clp 	physically3  "  ?id " 	SArIrika )" crlf))
)

