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
;@@@ Added by Prachi Rathore [22-3-14]
;Her brown shoes jarred with the rest of the outfit.
;उसके भूरे जूते पोशाक के शेष के साथ मेल नहीं खा रहे थे . 
(defrule jar0
(declare (salience 5000))
(id-root ?id jar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-with_saMbanXI   ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mela_nahIM_KA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jar.clp 	jar0   "  ?id "  mela_nahIM_KA )" crlf))
)

;@@@ Added by Prachi Rathore[22-3-14]
;The fall gave him a nasty jar.	[OALD]
;पतन ने उसको एक भयानक झटका दिया . 
(defrule jar1
(declare (salience 5000))
(id-root ?id jar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-viSeRaNa  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JatakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jar.clp 	jar1   "  ?id "  JatakA )" crlf))
)

;@@@ Added by Prachi Rathore[22-3-14]
;The loss jarred his confidence in the team. [m-w]
;हार ने टीम से उसका आत्मविश्वास हिला के रख दिया . 
(defrule jar4
(declare (salience 5000))
(id-root ?id jar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 sense|confidence)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilA_ke_raKa_xe))
(assert (kriyA_id-subject_viBakwi ?id ne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jar.clp 	jar4   "  ?id "  hilA_ke_raKa_xe )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  jar.clp 	jar4    "  ?id "  ne )" crlf))
)

;@@@ Added by Prachi Rathore[22-3-14]
;Because of a jar with him I can not go to his house.[shiksharthi-kosh]
;उसके साथ झगडे की वजह से मैं उसके घर को नहीं जा सकता हूँ . 
(defrule jar5
(declare (salience 5000))
(id-root ?id jar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(viSeRya-with_saMbanXI ?id ?id1)
(id-root ?id1 ?str&:(and (not (numberp ?str))(gdbm_lookup_p "animate.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JagadA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jar.clp 	jar5   "  ?id "  JagadA )" crlf)
)
)

;@@@ Added by Prachi Rathore[22-3-14]
;You must not go out, severe cold will jar you.[shiksharthi-kosh]
;आपको बाहर नहीं जाना चाहिए, बहुत सर्द आपको कँपा देगी . 
(defrule jar6
(declare (salience 5000))
(id-root ?id jar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 cold)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kazpA_xe))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jar.clp 	jar6   "  ?id "  kazpA_xe )" crlf))
)

;@@@ Added by Prachi Rathore[22-3-14]
;The quake jarred the houses.[shiksharthi-kosh]
;भूकंप से घर काँप गये
(defrule jar7
(declare (salience 5000))
(id-root ?id jar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-subject  ?id ?id1)
(id-root ?id1 quake)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kAzpa_jA))
(assert (kriyA_id-subject_viBakwi ?id se))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jar.clp 	jar7   "  ?id "  kAzpa_jA )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-subject_viBakwi   " ?*wsd_dir* "  jar.clp 	jar7    "  ?id "  se )" crlf))
)

;@@@ Added by Prachi Rathore[22-3-14]
;The car stopped suddenly with a jar.[shiksharthi-kosh]
; गाडी अचानक झटके के साथ रुकी . 
(defrule jar8
(declare (salience 5000))
(id-root ?id jar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-with_saMbanXI  ?id1 ?id)
(id-root ?id1 stop)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JatakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jar.clp 	jar8   "  ?id "  JatakA )" crlf)
)
)


;xxxxxxxxxxxx Default Rule xxxxxxxxxx
;@@@ Added by Prachi Rathore[22-3-14]
;A jar of coffee.
;कॉफी मर्तबान . 
(defrule jar2
(declare (salience 400))
(id-root ?id jar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marwabAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jar.clp 	jar2   "  ?id "  marwabAna )" crlf))
)

;@@@ Added by Prachi Rathore[22-3-14]
;The noise jars on my ears, I dislike it. [shiksharthi-kosh]
;शोर मेरे कानों में अप्रिय लगता है, मै इसे नापसंद करता हूँ
(defrule jar3
(declare (salience 400))
(id-root ?id jar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apriya_laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jar.clp 	jar3   "  ?id "  apriya_laga )" crlf))
)

;@@@ Added by Prachi Rathore[22-3-14]
(defrule jar9
(declare (salience 400))
(id-root ?id jar)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id marwabAna))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  jar.clp 	jar9   "  ?id "  marwabAna )" crlf))
)
