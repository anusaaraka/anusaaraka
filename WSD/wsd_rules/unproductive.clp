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

;@@@ Added by Prachi Rathore[6-2-14]
;In famine, or if the land became unproductive, they would relocated to other parts of the country in search of fertile lands for their crops and animals. [coca-corpus]
;अकाल में या भूमि बंजर हो जाये तो ,वे उनकी पैदावार और पशुओं के लिये उर्वर भूमि की तलाश में देश के अन्य भागों में नयी जगह बस जायेंगे. 
(defrule unproductive1
(declare (salience 5000))
(id-root ?id unproductive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa  ?id1 ?id)
(id-root ?id1 land|farm)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baMjara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unproductive.clp 	unproductive1   "  ?id "  baMjara)" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[6-2-14]
;an unproductive meeting [oald]
;अलाभप्रद बैठक . 
(defrule unproductive2
(declare (salience 4000))
(id-root ?id unproductive)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id alABapraxa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  unproductive.clp 	unproductive2   "  ?id "  alABapraxa )" crlf))
)
