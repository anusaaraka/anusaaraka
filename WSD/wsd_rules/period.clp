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
;@@@ Added by Sonam Gupta MTech IT Banasthali 30-1-2014
;When did you last have a period? [OALD]
;आपको पिछली बार मासिकधर्म कब हुए थे ?
(defrule period1
(declare (salience 5500))
(id-root ?id period)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(viSeRya-det_viSeRaNa  ?id ?)(samAsa_viSeRya-samAsa_viSeRaNa  ? ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mAsikaXarma))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  period.clp 	period1   "  ?id "  mAsikaXarma )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-1-2014
;Period furniture. [M-W]
;प्राचीन फर्नीचर .
(defrule period2
(id-root ?id period)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prAcIna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  period.clp 	period2   "  ?id "  prAcIna )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 30-1-2014
;A 24 hour period. [Cambridge]
;२४ घण्टे की एक अवधि .
(defrule period3
(id-root ?id period)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avaXi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  period.clp 	period3   "  ?id "  avaXi )" crlf))
)
