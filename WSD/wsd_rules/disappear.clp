;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005 at gmail dot com)
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


;The search was called off for the sailors who disappeared in the storm.       ;cald
;जो नाविक तूफान में अलोप हो गए थे उनकी खोज करना बंद कर दिया गया .
(defrule disappear0
(declare (salience 4800))
(id-root ?id disappear)
?mng <-(meaning_to_be_decided ?id)
(kriyA-in_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Alopa_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disappear.clp 	disappear0   "  ?id "  Alopa_ho_jA )" crlf))
)


;The sun disappeared behind a cloud.                   ;cald
;सूर्य बादलों के पीछे ओझल हो गया .
(defrule disappear1
(declare (salience 4800))
(id-root ?id disappear)
?mng <-(meaning_to_be_decided ?id)
(kriyA-behind_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id oJala_ho_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disappear.clp 	disappear1   "  ?id "  oJala_ho_jA )" crlf))
)

;-----------------------default rules---------------------------------------------------------

;I don't know how it's possible for a person to disappear without trace .          ;cald
;मुझे समझ में नहीं आ रहा है कि बिना किसी सुराग के वह कैसे गायब हो सकता है.
;This is a way of life that is fast disappearing.            ;cald
;इस प्रकार की जीवन शैली तेजी से गायब हो रहीं है.
(defrule disappear2
(declare (salience 4000))
(id-root ?id disappear)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAyaba_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disappear.clp 	disappear2   "  ?id "  gAyaba_ho )"crlf))
)

(defrule disappear3
(declare (salience 0))
(id-root ?id disappear)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gAyaba_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  disappear.clp 	disappear3   "  ?id "  gAyaba_ho )" crlf))
)
