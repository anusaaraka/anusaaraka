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
;;@@@   ---Added by Prachi Rathore
; The game was interrupted several times by rain. [oald]
;खेल वर्षा द्वारा कई बार अवरूध्द हुआ था . 
(defrule interrupt0
(declare (salience 5000))
(id-root ?id interrupt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 game|programme)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id avarUXxa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interrupt.clp 	interrupt0   "  ?id " avarUXxa_ho )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;I hope I'm not interrupting you. [oald]
;मैं आशा करता हूँ कि मैं आपको तङ्ग नहीं कर रहा हूँ . 
(defrule interrupt1
(declare (salience 5000))
(id-root ?id interrupt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wafga_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interrupt.clp 	interrupt1   "  ?id "  wafga_kara )" crlf)))

;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;;@@@   ---Added by Prachi Rathore
;Sorry to interrupt, but there's someone to see you.
; व्यवधान डालने के लिये क्षमा कीजिए परन्तु आपसे मिलने के लिये कोई है . 
(defrule interrupt2
(declare (salience 4000))
(id-root ?id interrupt)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavaXAna_dAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  interrupt.clp 	interrupt2   "  ?id "  vyavaXAna_dAla )" crlf))
)
