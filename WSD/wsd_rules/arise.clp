;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;sun arises.
;सूर्य उदय होता है.
(defrule arise1
(declare (salience 3700))
(id-root ?id arise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?sub)
(id-root ?sub sun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uxaya_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arise.clp 	arise1   "  ?id "  uxaya_ho )" crlf))
)


;As the name suggests, a contact force on an object arises due to contact with some other object: solid or fluid.
;जैसा कि नाम से सङ्केत मिलता है, किसी पिण्ड पर सम्पर्क बल किसी अन्य पिण्ड ठोस अथवा तरल के सम्पर्क द्वारा उत्पन्न होता है.
;These problems arise when people try to avoid responsibility.
; ये समस्याएं उत्पन्न होती हैं जब लोग जिम्मेदारी से बचने का प्रयास करते हैं .
(defrule arise2
(declare (salience 3600))
(id-root ?id arise)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-subject ?id ?id1)(viSeRya-kqxanwa_viSeRaNa ?id1 ?id))
;(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "inanimate.gdbm" ?str))) 
(id-root ?id1 ?str) ;As suggested by Chaitanya Sir removed inanimate.gdbm and modified the fact as shown by Roja (03-12-13) 
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwpanna_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arise.clp 	arise2   "  ?id "  uwpanna_ho )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 03/04/2014
;When evil arises on earth and evil people torture innocent people then God has to incarnate to exterminate the evil ones.[news-dev]
;धरती पर जब पाप बढ़ता है और राक्षस प्रवृत्ति के लोग जनता पर अत्याचार करते हैं तब दुष्टों का संहार करने के लिए भगवान को अवतरित होना पड़ता है।
(defrule arise4
(declare (salience 4000))
(id-root ?id arise)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?id1)
(id-word ?id1 evil)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arise.clp 	arise4   "  ?id "  baDZa )" crlf))
)

;------------------------ Default Rule -----------------------------
;I arise at 5 A.M.
;मैं सुबह 5 बजे उठता हूँ .
;Questions have arisen concerning the company's financial records.
;कंपनी के वित्तीय अभिलेखों के विषय में प्रश्न उठे हैं .
(defrule arise3
(declare (salience 0))
(id-root ?id arise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arise.clp    arise3   "  ?id "  uTa )" crlf))
)

