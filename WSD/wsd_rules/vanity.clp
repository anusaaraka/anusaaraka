;##############################################################################
;#  Copyright (C) 2013-2014 Prachi Rathore (prachirathore02 at gmail dot com)
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
;The vanity of human labors. [m-w]
;मानवीय श्रमिक वर्गों का निरर्थकता . 
(defrule vanity0		
(declare (salience 5000))
(id-root ?id vanity)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 labor|wish)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirarWakawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vanity.clp 	vanity0   "  ?id "  nirarWakawA )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;Politics is too often concerned only with the personal vanities of politicians.[oald]
;राजनीति राजनीतिज्ञों के वैयक्तिक गर्व के साथ ही  अक्सर सम्बन्धित है .
(defrule vanity1		
(declare (salience 4800))
(id-root ?id vanity)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id garva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vanity.clp 	vanity1   "  ?id "  garv )" crlf))
)

;;@@@   ---Added by Prachi Rathore
;The vanity of human ambition in the face of death.  [oald]
; मृत्यु के सामने मानवीय महत्वाकाङ्क्षा का निरर्थकता . 
(defrule vanity3		
(declare (salience 5000))
(id-root ?id vanity)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-of_saMbanXI  ?id ?)
(viSeRya-in_saMbanXI  ?id ?id1)
(viSeRya-of_saMbanXI  ?id1 ?id2)
(id-root ?id2 death)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nirarWakawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vanity.clp 	vanity3   "  ?id "  nirarWakawA )" crlf))
)


;xxxxxxxxxxxxxxxxxxxxxxxxxxx DEFAULT RULE xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx
;;@@@   ---Added by Prachi Rathore
;She had no personal vanity.  [ oald ]
;उसका वैयक्तिक घमंड नहीं था .  
(defrule vanity2		
(declare (salience 2100))
(id-root ?id vanity)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id GamaMda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  vanity.clp 	vanity2   "  ?id "  GamaMda )" crlf))
)

