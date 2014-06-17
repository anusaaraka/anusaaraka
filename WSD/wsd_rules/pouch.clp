;##############################################################################
;#  Copyright (C) 2013-2014 Sonam Gupta(sonam28virgo@gmail.com)
;#
;#  This program is free software; you can redistribute it and/or
;#  modify it under the terms of the GNU General Public License
;#  as published by the Free Software Foundation; either
;#  version 2 of the License, or (at your option) any later
;#  version.
;#
;#  This program is distributed in the hope that it will be useful,
;#  but WITHOUT ANY WARRANTY; without even the implied warranty of
;#  MERCHANTABILITY or FITNESS FOR A pouchTICULAR PURPOSE.  See the
;#  GNU General Public License for more details.
;#
;#  You should have received a copy of the GNU General Public License
;#  along with this program; if not, write to the Free Software
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02139, USA.
;
;##############################################################################

;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;He pouched two pills without water. [rajpal]
;उसने दो गोलियां बिना पानी के निगली  .
(defrule pouch1
(declare (salience 5000))
(id-root ?id pouch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 pill)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pouch.clp 	pouch1   "  ?id "  nigala )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
;She pouched her money and went away.  [rajpal]
;उसने अपना धन थैली में रखा और चली गई .
(defrule pouch2
(declare (salience 4000))
(id-root ?id pouch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WElI_meM_raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pouch.clp 	pouch2   "  ?id "  WElI_meM_raKa )" crlf))
)



;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
(defrule pouch3
(declare (salience 4000))
(id-root ?id pouch)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WElI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pouch.clp 	pouch3   "  ?id "  WElI )" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 28-3-2014
(defrule pouch4
(id-root ?id pouch)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id WElI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  pouch.clp 	pouch4   "  ?id "  WElI )" crlf))
)



