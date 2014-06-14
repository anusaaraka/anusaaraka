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

;@@@ Added by Pramila(BU) on 28-01-2014
;A package of economic sanctions is to be enacted against the country.     ;cald
;उस देश के खिलाफ आर्थिक प्रतिबंधों का पैकेज लागू किया जाना है. 
(defrule enact1
(declare (salience 4950))
(id-root ?id enact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-against_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lAgU_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enact.clp 	enact1   "  ?id "  lAgU_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 28-01-2014
;A play was enacted.       ;shiksharthi
;एक नाटक खेला गया.
(defrule enact2
(declare (salience 4950))
(id-root ?id enact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 play)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KelA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enact.clp 	enact2   "  ?id "  KelA )" crlf))
)

;--------------------default rules----------------------------
;@@@ Added by Pramila(BU) on 28-01-2014
;A law was enacted.       ;shiksharthi
;एक कानून बनाया गया.
;The stories are enacted using music, dance and mime. ;cald
;कहानियाँ संगीत, नृत्य और माइम का उपयोग कर बनाई जाती हैं.
(defrule enact3
(declare (salience 4000))
(id-root ?id enact)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enact.clp 	enact3   "  ?id "  banA )" crlf))
)


;@@@ Added by Pramila(BU) on 28-01-2014
(defrule enact4
(declare (salience 0))
(id-root ?id enact)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  enact.clp 	enact4   "  ?id "  banA )" crlf))
)
