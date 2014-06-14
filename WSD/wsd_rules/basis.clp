;##############################################################################
;#  Copyright (C) 2013-2014  Prachi Rathore (gsingh.nik@gmail.com)
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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24/03/2014
;The distance between the two points of observation is called the basis.[ncert]
;दो प्रेक्षण बिन्दुओं (A एवं B) के बीच की दूरी को आधारक कहा जाता है. 
(defrule basis1
(declare (salience 5000))
(id-root ?id basis)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-word ?kri called)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAraka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  basis.clp 	basis1   "  ?id "  AXAraka )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 24/03/2014
;The basis of a good marriage is trust.[oald]
;विश्वास एक अच्छी शादी का आधार  होता है 
(defrule basis0
(declare (salience 0))
(id-root ?id basis)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AXAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  basis.clp 	basis0   "  ?id "  AXAra )" crlf))
)
