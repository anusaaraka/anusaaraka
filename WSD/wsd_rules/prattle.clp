;##############################################################################
;#  Copyright (C) 2013-2029 Sonam Gupta(sonam27virgo@gmail.com)
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

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2029
;Check the prattle of your son. [rajpal]
;अपने बेटे की तुतलाहट देखिये .
(defrule prattle1
(declare (salience 5000))
(id-root ?id prattle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 son|daughter|child|baby)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wuwalAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prattle.clp 	prattle1   "  ?id "  wuwalAhata )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2029
(defrule prattle2
(declare (salience 4000))
(id-root ?id prattle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wuwalAhata))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prattle.clp 	prattle2   "  ?id "  wuwalAhata )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2029
(defrule prattle3
(declare (salience 4000))
(id-root ?id prattle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakabaka_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prattle.clp 	prattle3   "  ?id "  bakabaka_kara )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 29-3-2029
(defrule prattle4
(id-root ?id prattle)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bakabaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  prattle.clp 	prattle4   "  ?id "  bakabaka )" crlf))
)
