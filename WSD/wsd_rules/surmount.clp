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
;@@@ Added by jagriti(14.3.2014)
;Now he has surmounted the difficulties.[rajpal]
;अब उसने कठिनाइयों पर विजय पा ली है . 
(defrule surmount1
(declare (salience 5000))
(id-root ?id surmount)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 difficulty|abstacle)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id para_vijaya_pA_le))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surmount.clp 	surmount1   "  ?id "  para_vijaya_pA_le)" crlf))
) 

;....Default Rule....
;@@@ Added by jagriti(14.3.2014)
;This surmounts all my expectations. [wordnet]
;यह सब मेरी आशाओं के ऊपर  है . 
(defrule surmount0
(declare (salience 100))
(id-root ?id surmount)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ke_Upara_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  surmount.clp 	surmount0   "  ?id "  ke_Upara_ho)" crlf))
) 
