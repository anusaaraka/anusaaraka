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

;@@@ Added by Sonam Gupta MTech IT Banasthali 18-3-2014
;Don't be such a pill. [M-W]
;इतने तकलीफदेह मत बनिये .
(defrule pill1
(declare (salience 5000))
(id-root ?id pill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-det_viSeRaNa  ?id ?id1)
(id-root ?id1 such)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wakalIPaxeha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pill.clp 	pill1   "  ?id "  wakalIPaxeha )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 18-3-2014
;Wool sweaters may pill after you wash them. [M-W]
;ऊनी कपड़े आपके धोने के बाद रोँएदार बन सकते हैं .
(defrule pill2
(declare (salience 5000))
(id-root ?id pill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rozexAra_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pill.clp 	pill2   "  ?id "  rozexAra_bana )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 18-3-2014
;The contraceptive pill. [oald]
;गर्भनिरिधक गोली .
(defrule pill3
(declare (salience 3000))
(id-root ?id pill)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pill.clp 	pill3   "  ?id "  golI )" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 18-3-2014
(defrule pill4
(id-root ?id pill)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pill.clp 	pill4   "  ?id "  golI )" crlf))
)
