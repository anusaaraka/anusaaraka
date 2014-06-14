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
;@@@ Added by Prachi Rathore[28-1-14]
;She refused to testify against her husband.[oald]
;उसने उसके पति के विरुद्ध गवाही से मना किया . 
(defrule testify0
(declare (salience 5000))
(id-root ?id testify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-against_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gavAhI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  testify.clp 	testify0   "  ?id "  gavAhI_xe )" crlf))
)


;@@@ Added by Prachi Rathore[28-1-14]
;There are several witnesses who will testify for the defence.
;यहाँ कई साक्षी हैं जो प्रतिपक्ष के लिये गवाही देंगे . 
(defrule testify1
(declare (salience 5000))
(id-root ?id testify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-for_saMbanXI  ?id ?)
(kriyA-subject  ?id ?id1)
(viSeRya-jo_samAnAXikaraNa  ?id2 ?id1)
(id-root ?id2 witness)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gavAhI_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  testify.clp 	testify1   "  ?id "  gavAhI_xe )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[28-1-14]
;
(defrule testify2
(declare (salience 4000))
(id-root ?id testify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sAkRI_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  testify.clp 	testify2   "  ?id "  sAkRI_ho )" crlf))
)
