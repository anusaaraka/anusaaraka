;##############################################################################
;#  Copyright (C) 2013-2014 Pramila (pramila3005@gmail.com)
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
;@@@ Added by Pramila(BU) on 31-12-2013
;There's an Egyptian art collection on display at the museum at the moment.    ;cald
;इस समय संग्रहालय में प्रदर्शनी पर एक मिस्र के कला संग्रह है.
(defrule display0
(declare (salience 4800))
(id-root ?id display)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-on_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  display.clp 	display0   "  ?id " praxarSanI )" crlf))
)

;@@@ Added by Pramila(BU) on 31-12-2013
;There's never much display of affection between them.        ;cald
;उन दोनों के बीच स्नेह का कभी भी बहुत अधिक दिखावा नहीं रहा.
(defrule display1
(declare (salience 4800))
(id-root ?id display)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id xiKAvA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  display.clp 	display1   "  ?id " xiKAvA )" crlf))
)

;@@@ Added by Pramila(BU) on 31-12-2013
;The British traditionally tend not to display much emotion in public.       ;cald
;ब्रिटिश पारंपरिक रूप से जनता में बहुत अधिक भावना प्रकट नहीं करते हैं.
(defrule display2
(declare (salience 4800))
(id-root ?id display)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id1 ?id)
(kriyA-object  ?id ?id2)
(id-root ?id2 emotion|feeling)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prakata_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  display.clp 	display2   "  ?id " prakata_kara )" crlf))
)


;@@@ Added by Pramila(BU) on 31-12-2013
;Family photographs were displayed on the wall.      ;cald
;परिवार की तस्वीरें दीवार पर लगाई हुई थी.
(defrule display4
(declare (salience 4800))
(id-root ?id display)
?mng <-(meaning_to_be_decided ?id)
(kriyA-on_saMbanXI  ?id ?id1)
(kriyA-subject  ?id ?id2)
(id-root ?id2 photograph|picture|poster)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  display.clp 	display4   "  ?id " lagA )" crlf))
)


;@@@ Added by Pramila(BU) on 01-04-2014
;When asked why the notice has been displayed he replied that he did not have any information regarding this.   ;news-dev corpus
;फिर नोटिस क्यों लगाया तो जवाब मिला कि इस बाबत उन्हें कोई जानकारी ही नहीं है।
(defrule display5
(declare (salience 4800))
(id-root ?id display)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id2)
(id-root ?id2 notice)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  display.clp 	display5   "  ?id " lagA )" crlf))
)
;-------------------------------------------- Default rules ---------------------------------

;@@@ Added by Pramila(BU) on 31-12-2013
;Retailers should display delivery times and costs on their websites.       ;cald
;रिटेलर्स को अपनी वेबसाइटों पर वितरण समय और कीमत को प्रदर्शित करना चाहिए.
(defrule display6
(declare (salience 4000))
(id-root ?id display)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id praxarSiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  display.clp  display6   "  ?id " praxarSiwa_kara )" crlf))
)

;@@@ Added by Pramila(BU) on 31-12-2013
;The display problems might be due to a shortage of disk space.         ;cald
;डिस्प्ले समस्या डिस्क स्पेस की कमी के कारण हो सकती है.
(defrule display7
(declare (salience 4000))
(id-root ?id display)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id disple))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  display.clp 	display7   "  ?id " disple )" crlf))
)
