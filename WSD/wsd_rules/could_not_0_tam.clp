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
;$$$ Modified by shirisha Manju (20-03-14)
;Added assert and print statements for id-preceeding_part_of_verb fact
;@@@ Added by Prachi Rathore[13-2-14]
;I couldn't put my weight on my ankle and had to hop everywhere.[oald]
(defrule could_not_0_tam0
(declare (salience 4800))
(id-TAM ?id could_not_0)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id put)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id could_not_0 0_sakawA_hE))
(assert (id-preceeding_part_of_verb ?id nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  could_not_0_tam.clp        could_not_0_tam0  "  ?id "  0_sakawA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-preceeding_part_of_verb  " ?*wsd_dir* "  could_not_0_tam.clp        could_not_0_tam0  "  ?id "  nahIM )" crlf))
)

;xxxxxxxxxxxxxxxx Default Rule xxxxxxxxxxxxxxxxx
;$$$ Modified by shirisha Manju (20-03-14)
;Added assert and print statements for id-preceeding_part_of_verb fact
;@@@ Added by Prachi Rathore[13-2-14]
(defrule could_not_0_tam1
(declare (salience 1000))
(id-TAM ?id could_not_0)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id could_not_0 0_sakA))
(assert (id-preceeding_part_of_verb ?id nahIM)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  could_not_0_tam.clp        could_not_0_tam1  "  ?id "  0_sakA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-preceeding_part_of_verb  " ?*wsd_dir* "  could_not_0_tam.clp        could_not_0_tam1  "  ?id "  nahIM )" crlf))
)
