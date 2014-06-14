
;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)24-jan-2014
;He fielded the ball expertly.
;उसने सुविज्ञतापूर्वक गेंद का क्षेत्ररक्षण किया . 
(defrule ball2
(declare (salience 4000))
(id-root ?id ball)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?kri ?id)
(id-root ?kri field|bounce)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id geMxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ball.clp 	ball2  "  ?id "  geMxa )" crlf))
)



;*************************DEFAULT RULES********************************


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)24-jan-2014
(defrule ball0
(declare (salience 0))
(id-root ?id ball)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ball.clp 	ball0  "  ?id "  golA )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)24-jan-2014
(defrule ball1
(declare (salience 0))
(id-root ?id ball)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id golAkAra_bana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  ball.clp 	ball1  "  ?id "  golAkAra_bana )" crlf))
)
