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

;@@@ Added by Pramila(BU) on 14-02-2014
;He is too obstinate to be persuaded.    ;shiksharthi
;वह इतना दुराग्राही है कि उसे मनाया नहीं जा सकता.
(defrule obstinate1
(declare (salience 4950))
(id-root ?id obstinate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xurAgrAhI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obstinate.clp 	obstinate1   "  ?id "  xurAgrAhI )" crlf)
))

;---------------------default rules--------------------------------
;@@@ Added by Pramila(BU) on 14-02-2014
;Obstinate disease.    ;shiksharthi
;दुःसाध्य रोग.
(defrule obstinate2
(declare (salience 100))
(id-root ?id obstinate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuHsAXya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obstinate.clp 	obstinate2   "  ?id "  xuHsAXya )" crlf)
))

;@@@ Added by Pramila(BU) on 14-02-2014
(defrule obstinate3
(declare (salience 0))
(id-root ?id obstinate)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xuHsAXya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* " obstinate.clp 	obstinate3   "  ?id "  xuHsAXya )" crlf)
))
