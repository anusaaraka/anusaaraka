;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (prachirathore02@gmail.com)
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
;@@@ Added by Prachi Rathore[17-2-14]
;She was terrified on seeing the terrific scene in the cinema.[shiksharthi-kosh]
;वह चलचित्र में भयानक दृश्य को देखने पर डर गयी थी .  
(defrule terrify0
(declare (salience 5000))
(id-root ?id terrify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-karma  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id dara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terrify.clp 	terrify0   "  ?id "  dara )" crlf)
)
)



;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[17-2-14]
;The idea of parachuting out of a plane terrifies me.[cambridge]
;??
;The thought of speaking on the stage terrified her.
;मञ्च पर बोलने के विचार ने उसको डराया . 
(defrule terrify1
(declare (salience 4000))
(id-root ?id terrify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id darA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terrify.clp 	terrify1   "  ?id "   darA )" crlf))
)

;@@@ Added by Prachi Rathore[17-2-14]
;
(defrule terrify2
(declare (salience 4000))
(id-root ?id terrify)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id darA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  terrify.clp 	terrify2   "  ?id "   darA )" crlf))
)
