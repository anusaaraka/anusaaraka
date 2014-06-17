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
;They are refusing to inject any more capital into the industry. [oald]
;वे उद्योग के अंदर और अधिक पूँजी लगाने के लिये मना कर रहे हैं . 
;Several wealthy investors have injected money into the project. [m-w]
(defrule inject0
(declare (salience 5050))
(id-root ?id inject)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI ?id ?)
(kriyA-object  ?id ?id1)
(id-root ?id1 capital|money)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inject.clp 	inject0   "  ?id "   lagA )" crlf)
)
)

;@@@ Added by Prachi Rathore[13-3-14]
; I tried to inject a little humour into the meeting.[cambridge]
;मैंने बैठक में  थोडा सा हास्य भरने का प्रयास किया . 
(defrule inject3
(declare (salience 5000))
(id-root ?id inject)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI ?id ?id1)
(not(id-root ?id1 muscle))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Bara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inject.clp 	inject3   "  ?id "  Bara )" crlf)
)
)

;@@@ Added by Prachi Rathore[13-3-14]
;A large amount of money will have to be injected into the company if it is to survive.[oald]
;एक बडी धन राशि कम्पनी में लगानी पडेगी यदि इसे बचाना है . 
(defrule inject4
(declare (salience 5050))
(id-root ?id inject)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-into_saMbanXI ?id ?)
(viSeRya-of_saMbanXI  ?id2 ?id1)
(kriyA-subject  ?id ?id2)
(id-root ?id1 capital|money)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inject.clp 	inject4   "  ?id "   lagA )" crlf)
)
)
;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[13-3-14]
;She has been injecting herself with insulin since the age of 16.[oald]
;वह 16 की उम्र से  स्वयं को इन्सुलिन के  इंजेक्शन लगाती रही है . 
(defrule inject1
(declare (salience 400))
(id-root ?id inject)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMjekSana_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inject.clp 	inject1   "  ?id "  iMjekSana_lagA )" crlf))
)

;@@@ Added by Prachi Rathore[13-3-14]
;
(defrule inject2
(declare (salience 200))
(id-root ?id inject)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id iMjekSana_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  inject.clp 	inject2   "  ?id "   iMjekSana_lagA )" crlf))
)
