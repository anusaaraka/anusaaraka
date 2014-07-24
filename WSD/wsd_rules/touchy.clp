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
;@@@ Added by Prachi Rathore[13-3-14]
; This is a touchy point, so we'd better avoid it.[cambridge]
;यह एक नाजुक विषय है, इसलिए यह बेहतर होगा कि हम इसे टालें . 
(defrule touchy0
(declare (salience 5000))
(id-root ?id touchy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nAjuka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  touchy.clp 	touchy0   "  ?id "   nAjuka )" crlf)
)
)

;@@@ Added by Prachi Rathore[13-3-14]
;He's a little touchy about his weight. [oald]
;वह उसके वजन के बारे में थोडा संवेदनशील है . 
(defrule touchy3
(declare (salience 5000))
(id-root ?id touchy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
(viSeRya-about_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMvexanaSIla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  touchy.clp 	touchy3   "  ?id "  saMvexanaSIla )" crlf)
)
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[13-3-14]
;You have to be careful what you say to Kevin - he's rather touchy. [oald]
;आप केविन को क्या कहोगे उसके लिये आपको सावधान रहना होगा वह काफी चिडचिडा है . 
(defrule touchy1
(declare (salience 400))
(id-root ?id touchy)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cidacidA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  touchy.clp 	touchy1   "  ?id "  cidacidA )" crlf))
)

;@@@ Added by Prachi Rathore[13-3-14]
;
(defrule touchy2
(declare (salience 200))
(id-root ?id touchy)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id cidacidA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  touchy.clp 	touchy2   "  ?id "  cidacidA )" crlf))
)
