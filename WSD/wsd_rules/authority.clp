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

;United Nations has used its authority to restore peace in the area.
;The head coach has the authority to hire and fire players.
;He has the authority to issue warrants.
(defrule authority0
(declare (salience 3700))
(id-root ?id authority)
?mng <-(meaning_to_be_decided ?id)
(saMjFA-to_kqxanwa ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  authority.clp 	authority0   "  ?id "  aXikAra )" crlf))
)


;They've been acting illegally and without authority from the council.
(defrule authority1
(declare (salience 3600))
(id-root ?id authority)
?mng <-(meaning_to_be_decided ?id)
(id-word =(- ?id 1) without)
(id-word =(+ ?id 1) from)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumawi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  authority.clp 	authority1   "  ?id "  anumawi )" crlf))
)

;Dr. Jamison, an authority on childhood obesity, suggests that children engage in at least 40 minutes of physical activity daily.
;He is one of the world's leading authorities on tropical diseases.
;She is an authority on mathematics
(defrule authority2
(declare (salience 3500))
(id-root ?id authority)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-on_saMbanXI ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSeRajFa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  authority.clp 	authority2   "  ?id "  viSeRajFa )" crlf))
)
;--------------------------------------- Default Rules ---------------------------------------------------------

;We need to get the support of someone in authority.
(defrule authority3
(declare (salience 100))
(id-root ?id authority)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  authority.clp 	authority3   "  ?id "  aXikArI )" crlf))
)

;Added by Shirisha Manju (29-08-13)
(defrule authority4
(declare (salience 0))
(id-root ?id authority)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikArI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  authority.clp        authority4   "  ?id "  aXikArI )" crlf))
)

;************************************ TO BE RESOLVED LATER *******************************************************

;The health authority. 
;The local housing authority.
;I'm going to report these holes in the road to the authorities.
;British police are cooperating with the Malayerian authorities.
;We reported the incident to hospital authorities.
;Local authorities are investigating the accident.

;Whose authority are you acting on? "@anumawi"
;I'll give my lawyers authority to act on my behalf. "@anumawi"
;It was done without the teachers authority. "@anumawi"



;************************************** CBR PROBLEM ***************************************************************

;The wave theory was not readily accepted primarily because of Newton's authority.




