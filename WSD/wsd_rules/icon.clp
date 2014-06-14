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
;@@@ Added by Prachi Rathore[28-3-14]
;Click on the printer icon with the mouse. 
;माउस से मुद्रक के आइकन पर क्लिक कीजिये 
(defrule icon1
(declare (salience 5000))
(id-root ?id icon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-on_saMbanXI  ?id1 ?id)
(id-root ?id1 click)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Aikana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  icon.clp 	icon1   "  ?id "  Aikana )" crlf))
)


;@@@ Added by Prachi Rathore[28-3-14]
;Following the example of Congress each party created their own icons. [news]
;कांग्रेस की देखा-देखी हरेक दल ने अपने महापुरुष गढ़े।
(defrule icon2
(declare (salience 5000))
(id-root ?id icon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mahApuruRa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  icon.clp 	icon2   "  ?id "  mahApuruRa )" crlf))
)

;xxxxxxxxxxxx Default Rule xxxxxxxxxx

;@@@ Added by Prachi Rathore[28-3-14]
;Stone icons were widely used in indian temples.[old-sentence]
;पत्थर की प्रतिमाएँ भारतीयों मन्दिरों में व्यापक रूप से उपयोग की गयी थी . 
(defrule icon3
(declare (salience 400))
(id-root ?id icon)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  icon.clp 	icon3   "  ?id " prawimA )" crlf))
)

;@@@ Added by Prachi Rathore[28-3-14]

(defrule icon4
(declare (salience 200))
(id-root ?id icon)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawimA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  icon.clp 	icon4   "  ?id "  prawimA )" crlf))
)
