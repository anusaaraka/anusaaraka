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

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
;Shall we go for a paddle? [mw]
;क्या हम नाव खेने के लिये चले .
(defrule paddle1
(declare (salience 5000))
(id-root ?id paddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-for_saMbanXI  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAva_KenA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paddle.clp 	paddle1   "  ?id "  nAva_KenA )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
;In those days many people believed it was okay to paddle children.  [mw]
;उन दिनों अधिकतर लोग मानते थे कि बच्चों को बेंत से पीटना ठीक था .
(defrule paddle2
(declare (salience 5000))
(id-root ?id paddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 child|kid)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id beMwa_se_mAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paddle.clp 	paddle2   "  ?id "  beMwa_se_mAra )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
(defrule paddle3
(declare (salience 3000))
(id-root ?id paddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pAnI_meM_cala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paddle.clp 	paddle3   "  ?id "  pAnI_meM_cala )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
(defrule paddle4
(declare (salience 3000))
(id-root ?id paddle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cappU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paddle.clp 	paddle4   "  ?id "  cappU )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 16-3-2014
(defrule paddle5
(id-root ?id paddle)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cappU))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  paddle.clp 	paddle5   "  ?id "  cappU )" crlf))
)

