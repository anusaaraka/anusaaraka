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
;@@@ Added by Prachi Rathore[24-3-14]
;Those people are all of the same kidney.[shiksharthi-kosh]
;वे सभी लोग एक ही प्रकृति के है
(defrule kidney1
(declare (salience 5000))
(id-root ?id kidney)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id1 ?id)
(subject-subject_samAnAXikaraNa ?id2 ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakqwi))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kidney.clp 	kidney1   "  ?id "  prakqwi )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx

;@@@ Added by Prachi Rathore[24-3-14]
;A kidney infection.[oald]
;
(defrule kidney3
(declare (salience 400))
(id-root ?id kidney)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guraxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kidney.clp 	kidney3   "  ?id "  guraxA )" crlf))
)

;@@@ Added by Prachi Rathore[24-3-14]

(defrule kidney4
(declare (salience 200))
(id-root ?id kidney)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id guraxA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  kidney.clp 	kidney4   "  ?id "  guraxA )" crlf))
)
