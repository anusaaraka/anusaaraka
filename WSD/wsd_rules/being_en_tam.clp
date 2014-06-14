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
;@@@ Added by Prachi Rathore 4-1-12
;They adamantly insisted upon being included in the meeting.[m-w]
;उन्होंने अडिग रूप से बैठक में सम्मिलित होने के ऊपर जोर दिया . 
(defrule being_en_tam1
(declare (salience 5000))
(id-TAM ?id being_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id include)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id being_en nA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  being_en_tam.clp        being_en_tam1  "  ?id " nA) )" crlf))
)


;XXXXXXXXXXXXXX DEFAULT RULE XXXXXXXXXXXXXXXXXXX
;;@@@ Added by Prachi Rathore 4-1-12
(defrule being_en_tam0
(declare (salience 4000))
(id-TAM ?id being_en)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id being_en yA_jA_rahA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  being_en_tam.clp        being_en_tam0  "  ?id " yA_jA_rahA) )" crlf))
)

