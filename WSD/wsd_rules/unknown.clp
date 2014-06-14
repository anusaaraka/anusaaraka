;##############################################################################
;#  Copyright (C) 2063-2064  Prachi Rathore (prachirathore02@gmail.com)
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
;#  Foundation, Inc., 675 Mass Ave, Cambridge, MA 02639, USA.
;
;##############################################################################
;@@@ Added by Prachi Rathore[6-3-14]
;a journey into the unknown.[oald]
;अज्ञात जगह की यात्रा . 
(defrule unknown0
(declare (salience 5000))
(id-root ?id unknown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(or(kriyA-into_saMbanXI  ?id6 ?id)(viSeRya-into_saMbanXI  ?id6 ?id))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajFAwa_jagaha))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unknown.clp 	unknown0   "  ?id " ajFAwa_jagaha )" crlf)
)
)


;@@@ Added by Prachi Rathore[6-3-14]
;There are so many unknowns in the proposal.[oald]
;प्रस्ताव में बहुत सारे अज्ञात तथ्य हैं . 
(defrule unknown4
(declare (salience 5000))
(id-root ?id unknown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?id6)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajFAwa_waWya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unknown.clp 	unknown4   "  ?id " ajFAwa_waWya )" crlf)
)
)



;@@@ Added by Prachi Rathore[6-3-14]
;In an era of celebrity endorsements the strategy Kahlua ads originally adopted -- using the effigies as hucksters was akin to casting unknowns in a film. [coca]
;
(defrule unknown5
(declare (salience 5050))
(id-root ?id unknown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-in_saMbanXI  ?id ?id6)
(id-root ?id6 film|movie|cinema)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajFAwa_aBinewA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unknown.clp 	unknown5   "  ?id " ajFAwa_aBinewA )" crlf)
)
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[6-3-14]
;X and Y in the equation are both unknowns.[OALD]
;समीकरण में एक्स और वाई दोनो अज्ञात हैं . 
(defrule unknown6
(declare (salience 400))
(id-root ?id unknown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajFAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unknown.clp 	unknown6   "  ?id "  ajFAwa )" crlf))
)

;@@@ Added by Prachi Rathore[6-3-14]
;As recently as six months ago her name was almost unknown in Britain. [OALD]
; हाल ही कुछ छः महीने पहले उसका नाम ब्रिटन में लगभग अविदित था . 
(defrule unknown2
(declare (salience 400))
(id-root ?id unknown)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avixiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unknown.clp 	unknown2   "  ?id "  avixiwa )" crlf))
)

;@@@ Added by Prachi Rathore[6-3-14]
 
(defrule unknown3
(declare (salience 200))
(id-root ?id unknown)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ajFAwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unknown.clp 	unknown3   "  ?id "  ajFAwa )" crlf))
)
