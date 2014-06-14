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
;@@@ Added by Prachi Rathore[3-3-14]
;We don't have anything to do with the people in the apartment below us - they're trash.[cambridge]
; हमे नीचे फ्लैट के लोगों के साथ कोइ मतलब नहीं है वे बेकार हैं . 
(defrule trash0
(declare (salience 5000))
(id-root ?id trash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bekAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trash.clp 	trash0   "  ?id " bekAra )" crlf))
)




;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[3-3-14]
;The trash really stinks - why don't you take it out?[cambridge]
;कचरा वास्तव में बदबू मार रहा है- आप यह बाहर क्यों नहीं निकालते हैं ? 
(defrule trash1
(declare (salience 400))
(id-root ?id trash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kacarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trash.clp 	trash1   "  ?id "  kacarA )" crlf))
)

;@@@ Added by Prachi Rathore[3-3-14]
;The guys got angry and trashed the bar.[cambridge]
;लोग क्रोधित हो गये और शराबघर नष्ट किया . 
(defrule trash2
(declare (salience 400))
(id-root ?id trash)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id naRta_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trash.clp 	trash2   "  ?id "  naRta_kara )" crlf))
)

;@@@ Added by Prachi Rathore[3-3-14]
;The trash really stinks - why don't you take it out?[cambridge]
;कचरा वास्तव में बदबू मार रहा है- आप यह बाहर क्यों नहीं निकालते हैं ? 
(defrule trash3
(declare (salience 200))
(id-root ?id trash)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kacarA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  trash.clp 	trash3   "  ?id "  kacarA )" crlf))
)

