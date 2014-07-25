;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 @gmail.com)
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

;@@@ Added by Pramila(BU) on 06-02-2014
;Ethics is a branch of philosophy.    ;shiksharthi
;नीतिशास्त्र दर्शनशास्त्र की एक शाखा है.
(defrule ethics1
(declare (salience 4950))
(id-root ?id ethics)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nIwiSAswra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ethics.clp 	ethics1   "  ?id " nIwiSAswra )" crlf)
)
)

;-----------------default rules-------------------------
;@@@ Added by Pramila(BU) on 06-02-2014
;I do not understand ethics of his judgement.    ;shiksharthi
;मैं उसके निर्णय की नैतिकता नहीं समझता.
(defrule ethics2
(declare (salience 4000))
(id-root ?id ethics)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nEwikawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ethics.clp 	ethics2   "  ?id "  nEwikawA )" crlf)
)
)

;@@@ Added by Pramila(BU) on 06-02-2014
(defrule ethics3
(declare (salience 0))
(id-root ?id ethics)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nEwikawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ethics.clp 	ethics3   "  ?id "  nEwikawA )" crlf)
)
)
