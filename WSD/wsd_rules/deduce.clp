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

;We deduced that it was cheaper to rent than to buy a house.
;हमने अनुमान लगाया कि एक घर खरीदने की तुलना में किराए पर सस्ता था .
;hamane anumAna lagAyA ki eka Gara KarIxane kI wulanA meM kirAe para saswA WA .

(defrule deduce0
(declare (salience 5000))
(id-root ?id deduce)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) that)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id anumAna_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deduce.clp 	deduce0   "  ?id "  anumAna_lagA )" crlf))
)


;In 1834, German physicist Heinrich Friedrich Lenz (1804-1865) deduced a rule, known as Lenz's law which gives the polarity of the induced 
;emf in a clear and concise fashion.
;सन 1834 में जर्मन भौतिकविद हेनरिक फ्रेडरिच लेंज (1804 - 1865) ने एक नियम का निगमन किया जिसे लेंज का नियम के नाम से जाना जाता है ; यह नियम प्रेरित विद्युत वाहक बल की ध्रुवता
; (दिशा) का स्पष्ट एवं संक्षिप्त रूप में वर्णन करता है.
;sana 1834 meM jarmana BOwikavixa henarika Predarica leMja (1804 - 1865) ne eka niyama kA nigamana kiyA jise leMja kA niyama ke nAma se 
;jAnA jAwA hE ; yaha niyama preriwa vixyuwa vAhaka bala kI XruvawA (xiSA) kA spaRta evaM saMkRipwa rUpa meM varNana karawA hE.

(defrule deduce1
(declare (salience 5000))
(id-root ?id deduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(id-cat_coarse ?id1 noun)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nigamana_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deduce.clp 	deduce1   "  ?id "  nigamana_kara )" crlf))
)


;He deduced from the laws of physics that the new airplane would fly.
;उसने भौतिक विज्ञान के नियमों से परिणाम निकाला कि नया हवाई जहाज उड़ेंगे.
;usane BOwika vijFAna ke niyamoM se pariNAma nikAlA ki nayA havAI jahAja udZeMge.

(defrule deduce2
(declare (salience 5000))
(id-root ?id deduce)
?mng <-(meaning_to_be_decided ?id)
(kriyA-from_saMbanXI  ?id ?id1)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pariNAma_nikAla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deduce.clp 	deduce2   "  ?id "  pariNAma_nikAla )" crlf))
)


;--------------------------------------------------------------deafult rules--------------------------------------------------------


(defrule deduce3
(declare (salience 4000))
(id-root ?id deduce)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pawA_lagA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deduce.clp 	deduce3   "  ?id "  pawA_lagA )" crlf))
)



(defrule deduce4
(declare (salience 3000))
(id-root ?id deduce)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id nikala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  deduce.clp 	deduce4   "  ?id "  nikala )" crlf))
)
