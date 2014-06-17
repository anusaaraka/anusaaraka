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
;Even the smallest baby can identify its mother by her voice.
;एक छोटा बच्चा भी अपनी माँ की आवाज से तादात्म्य स्थापित कर सकता है.
(defrule identify0
(declare (salience 5000))
(id-root ?id identify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(and(kriyA-object  ?id ?id2)(kriyA-subject  ?id ?id1))
(id-cat_coarse ?id1 pronoun|noun|PropN)
(id-cat_coarse ?id2 pronoun|noun|PropN)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id wAxAwmya_sWApiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  identify.clp 	identify0   "  ?id "  wAxAwmya_sWApiwa_kara )" crlf))
)


;@@@ Added by Prachi Rathore[28-3-14]
; Schemes in the names of Mahatma Gandhi, Patel, Subhash Chandra Bose or Bhagat Singh's can not be identified with the identity of Congress.[news]
;महात्मा गांधी, पटेल, सुभाष चंद्र बोस या भगत सिंह के नाम वाली योजनाएं कांग्रेस की पहचान से नहीं जुड़तीं।
(defrule identify2
(declare (salience 5000))
(id-root ?id identify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI ?id ?)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id juda))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  identify.clp 	identify2   "  ?id "  juda)" crlf)))

;--------Default-Rule----------------
(defrule identify1
(declare (salience 4900))
(id-root ?id identify)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahacAna_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  identify.clp 	identify1   "  ?id "  pahacAna_kara )" crlf))
)
