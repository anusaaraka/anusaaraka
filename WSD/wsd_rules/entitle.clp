;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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

;Added by Pramil(Banasthali University)
;It was described in his famous book entitled OPTICKS.
(defrule entitle0
(declare (salience 5000))
(id-root ?id entitle)
?mng <-(meaning_to_be_decided ?id)
;(kriyA-object  ?id ?id1))
(or(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id)(kriyA-kqxanwa_karma  ?id ?id1))
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIrRaka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entitle.clp 	entitle0   "  ?id "  SIrRaka_xe )" crlf))
)

;Added by Pramil(Banasthali University)
;You begin to read entitle 3 of that bill.
(defrule entitle1
(declare (salience 5000))
(id-root ?id entitle)
?mng <-(meaning_to_be_decided ?id)
(saMKyA-saMKyA  ?id1 ?id)
(kriyA-object  ?kri ?id1)
(id-cat_coarse ?id1 number)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIrRaka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entitle.clp 	entitle1   "  ?id "  SIrRaka )" crlf))
)

;-----------------------------------------default rules------------------------------------------------------------------

(defrule entitle2
(declare (salience 4000))
(id-root ?id entitle)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id1 verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id aXikAra_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entitle.clp 	entitle2   "  ?id "  aXikAra_xe )" crlf))
)



(defrule entitle3
(declare (salience 3000))
(id-root ?id entitle)
?mng <-(meaning_to_be_decided ?id)

=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SIrRaka_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  entitle.clp 	entitle3   "  ?id "  SIrRaka_xe
 )" crlf))
)




