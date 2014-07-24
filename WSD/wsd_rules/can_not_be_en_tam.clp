;##############################################################################
;#  Copyright (C) 2028-3014  Prachi Rathore (prachirathore02@gmail.com)
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

;@@@ Added by Prachi Rathore[28-3-14]
; Schemes in the names of Mahatma Gandhi, Patel, Subhash Chandra Bose or Bhagat Singh's can not be identified with the identity of Congress.[news]
;महात्मा गांधी, पटेल, सुभाष चंद्र बोस या भगत सिंह के नाम वाली योजनाएं कांग्रेस की पहचान से नहीं जुड़तीं।
(defrule can_not_be_en_tam0
(declare (salience 4800))
(id-TAM ?id can_not_be_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id identify)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id can_not_be_en wA_hE))
(assert (id-preceeding_part_of_verb ?id nahIM))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  can_not_be_en_tam.clp        can_not_be_en_tam0  "  ?id "  wA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-preceeding_part_of_verb  " ?*wsd_dir* "  can_not_be_en_tam.clp        can_not_be_en_tam0  "  ?id "  nahIM )" crlf))
)

;xxxxxxxxxxxxxxxx Default Rule xxxxxxxxxxxxxxxxx
;@@@ Added by Prachi Rathore[28-3-14]
(defrule can_not_be_en_tam1
(declare (salience 1000))
(id-TAM ?id can_not_be_en)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id can_not_be_en yA_jA_sakawA_hE))
(assert (id-preceeding_part_of_verb ?id nahIM)) 
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  can_not_be_en_tam.clp        can_not_be_en_tam1  "  ?id "  yA_jA_sakawA_hE )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-id-preceeding_part_of_verb  " ?*wsd_dir* "  can_not_be_en_tam.clp        can_not_be_en_tam1  "  ?id "  nahIM )" crlf))
)
