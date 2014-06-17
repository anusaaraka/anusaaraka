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
;@@@ Added by Prachi Rathore[17-2-14]
;I'm exhausted - I think I'll just go home and veg out in front of the TV tonight.[oald]
;मैं थक  गया हूँ-  मैं सोचता हूँ कि मैं बस घर चला जाऊँ और आज की रात  दूरदर्शन के सामने  आराम करूँ . 
(defrule am_en_tam0
(declare (salience 4800))
(id-TAM ?id am_en)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id exhaust)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id am_en yA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  am_en_tam.clp        am_en_tam0  "  ?id "  yA_hE)" crlf))
)

;xxxxxxxxxxxxxxxx Default Rule xxxxxxxxxxxxxxxxx
;@@@ Added by Prachi Rathore[17-2-14]
(defrule am_en_tam1
(declare (salience 1000))
(id-TAM ?id am_en)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-E_tam-H_tam_mng ?id am_en yA_gayA_hE))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-H_tam_mng  " ?*wsd_dir* "  am_en_tam.clp        am_en_tam1  "  ?id "  yA_gayA_hE )" crlf))
)
