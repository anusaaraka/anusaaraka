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
;@@@ Added by Prachi Rathore 
;To counter this force, the child has to apply an external force on the car in the direction of motion.
(defrule has_to_0_tam1
(declare (salience 5000))
(id-TAM ?id has_to_0)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id apply)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id has_to_0 nA_padegA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  has_to_0_tam.clp        has_to_0_tam1  "  ?id "  nA_padegA )" crlf))
)

;##############################################################################
;XXXXXXXXXXXXXX DEFAULT RULE XXXXXXXXXXXXXXXXXXX
;$$$ Modified by Shirisha Manju 22-3-14 Suggested by Chaitanya Sir
;Added 'kriyA_id-subject_viBakwi' fact
;For this reason the general public has to come forward.
;@@@ Added by Prachi Rathore 
(defrule has_to_0_tam0
(declare (salience 4000))
(id-TAM ?id has_to_0)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id has_to nA_hE))
(assert (kriyA_id-subject_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  has_to_0_tam.clp        has_to_0_tam0  "  ?id " nA_hE)" crlf))
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  has_to_0_tam.clp  has_to_0_tam0   "  ?id " ko )" crlf)
)
