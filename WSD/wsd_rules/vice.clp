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
;@@@ Added by Prachi Rathore[7-2-14]
;Vices are often used to hold pieces of wood that are being cut or smoothed. [cambridge]
 ;शिकंजा लकडी के टुकडों को पकडने के लिए अक्सर उपयोग किया गया है जो काटे जा रहे है या सपाट किये जा रहे है . 
(defrule vice0
(declare (salience 5000))
(id-root ?id vice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-karma  ? ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikaMjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vice.clp 	vice0   "  ?id "  SikaMjA )" crlf))
)


;@@@ Added by Prachi Rathore[7-2-14]
;Her hand tightened like a vice around his arm.[cambridge]
 ;उसका हाथ उसकी बाहु के चारों ओर शिकंजा की तरह कसा . 
(defrule vice2
(declare (salience 5000))
(id-root ?id vice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-like_saMbanXI  ?id1 ?id)
(id-root ?id1 tighten)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SikaMjA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vice.clp 	vice2   "  ?id "  SikaMjA )" crlf))
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[7-2-14]
;Cigarettes are my only vice[oald]
; मेरा एकमात्र व्यसन सिगरेट हैं . 
(defrule vice1
(declare (salience 4000))
(id-root ?id vice)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyasana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vice.clp 	vice1   "  ?id "  vyasana )" crlf))
)
