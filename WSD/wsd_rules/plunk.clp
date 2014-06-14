;##############################################################################
;#  Copyright (C) 2002-2005 Shweta Vikram (shwetavikram.2009@rediffmail.com)
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

;@@@ Added by Shweta
(defrule plunk0
(declare (salience 9900))
(id-root ?id plunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(and(viSeRya-viSeRaka  ?id ?)(samAsa_viSeRya-samAsa_viSeRaNa  ?id ?)(kriyA-below_saMbanXI  ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id A_Damake))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plunk.clp     plunk0 "  ?id " A_Damake)" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;He plunked the package down on the desk. [OALD]
;उसने डेस्क पर पर पुलिंदा पटका . 
(defrule plunk1
(declare (salience 9000))
(id-root ?id plunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun)
(id-cat_coarse ?id2 pronoun)
(id-cat_coarse ?id3 noun)
(and(kriyA-object  ?id ?id1)(kriyA-subject  ?id ?id2)(kriyA-on_saMbanXI  ?id ?id3))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id patakA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plunk.clp     plunk1 "  ?id " patakA)" crlf))
)

;@@@ Added by SHWETA VIKRAM(17/09/2013)
;At the night the man heard the plunk but was unable to see what it is.
;रात पर आदमी ने झनकने कि आवाज सुना परन्तु देखना असमर्थ था क्या है . (Anusaaraka)
;रात में आदमी ने झनकने कि आवाज सुनी परन्तु यह क्या देखना में असमर्थ था . (Self)

(defrule plunk2
(declare (salience 8000))
(id-root ?id plunk)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-det_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id patakane_kI_AvAja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plunk.clp     plunk2 "  ?id " patakane_kI_AvAja)" crlf))
)


;$$$ Modified by Sonam Gupta MTech IT anasthali 2013
;@@@ Added by SHWETA VIKRAM(17/09/2013)
;The poor people can afford plunk only.
;खराब लोग सिर्फ सस्ती शराब खर्च कर सकते हैं . (Anusaaraka)
;गरीब लोग सिर्फ सस्ती शराब जुटा सकते हैं .(Self)
;We had pizza and a bottle of plunk. [Cambridge]
;हमारे पास पिज्जा और सस्ती शराब की बोतल थी . 
(defrule plunk3
(declare (salience 7000))
(id-root ?id plunk)
?mng <-(meaning_to_be_decided ?id)
(or(kriyA-object  ? ?id)(viSeRya-of_saMbanXI ? ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saswI_SarAba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plunk.clp     plunk3 "  ?id " saswI_SarAba)" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;I really enjoy plunking away on the piano. [Cambridge]
;मैं वास्तव में पियानो बजाने मे आनन्द उठाता हूँ . 
(defrule plunk4
(declare (salience 6000))
(id-root ?id plunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun|particle)
(id-cat_coarse ?id2 noun|pronoun)
;(id-word ?id1 piano|banjo|guitar|violin|xylophone||drum|bagpipes|bongo|flute|gongs|keyboard|harmonica|trumphet)
(or(and(viSeRya-kqxanwa_viSeRaNa  ?id1 ?id)(kriyA-on_saMbanXI  ?id ?id2))(and(kriyA-on_saMbanXI  ?id ?id1)(kriyA-subject ?id ?id2))(and(kriyA-upasarga  ?id ?id1)(kriyA-on_saMbanXI  ?id ?id2)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajAne))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plunk.clp     plunk4 "  ?id " bajAne)" crlf))
)


;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;She plunked out a little tune on the piano. [M-W]
;उसने एक छोटी धुन को पियानो पर बजाया . 
(defrule plunk5
(declare (salience 5000))
(id-root ?id plunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun)
(id-cat_coarse ?id2 noun|particle)
(id-cat_coarse ?id3 pronoun)
(and(kriyA-object ?id ?id1)(kriyA-upasarga ?id ?id2)(kriyA-subject ?id ?id3))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajAyA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plunk.clp     plunk5 "  ?id " bajAyA)" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;You've been plunking that banjo all afternoon. [M-W]
;आप उस बैन्जो को सारी दोपहर बजाते रहे हैं . 
(defrule plunk6
(declare (salience 4000))
(id-root ?id plunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 noun)
(id-cat_coarse ?id2 noun|particle)
(id-cat_coarse ?id3 pronoun)
(and(kriyA-object_1 ?id ?id1)(kriyA-object_2 ?id ?id2)(kriyA-subject ?id ?id3))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plunk.clp     plunk6 "  ?id " bajA)" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Investors have plunked down more than a billion dollars in the county to get a piece of the action. [COCA]
;निवेशक काम का एक भाग प्राप्त करने के लिये मण्डल में दस खरब डौलर से अधिक लगा चुके हैं . 
(defrule plunk7
(declare (salience 3000))
(id-root ?id plunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-cat_coarse ?id1 particle)
(id-cat_coarse ?id2 noun)
(and(kriyA-upasarga  ?id ?id1)(kriyA-object  ?id ?id2))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id JoMka))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plunk.clp     plunk7 "  ?id " JoMka)" crlf))
)

;@@@ Added by Sonam Gupta MTech IT Banasthali 2013
;Come in and plunk yourselves anywhere you like. [Cambridge]
;अन्दर अाइये और जहाँ भी अाप चाहें वहाँ बैठिये. 
(defrule plunk8
(declare (salience 2000))
(id-root ?id plunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(id-cat_coarse ?id1 noun)
(samAsa_viSeRya-samAsa_viSeRaNa ?id1 ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bETiye))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plunk.clp     plunk8 "  ?id " bETiye)" crlf))
)


;--------------------------- Default rules ----------------------

;@@@ Added by SHWETA VIKRAM(17/09/2013)
;Suburb of round general growth has was slightly below then god plunks.
;गोलाकार व्यापक विकास का उपनगर तब देवताओं पटकना के नीचे थोडा सा था . 
(defrule plunk9
(id-root ?id plunk)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id patakanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plunk.clp     plunk9 "  ?id " patakanA)" crlf))
)

;Added by SHWETA VIKRAM(21/08/2013)
;He plunked the package down on the desk.
;उसने डेस्क पर पर पुलिन्दा पटक की . (Anusaaraka)
;उसने डेस्क पर एक बंडल पटका.(Self)
;(defrule plunk8
;(id-root ?id plunk)
;?mng <-(meaning_to_be_decided ?id)
;(id-cat_coarse ?id verb)
;=>
;(retract ?mng)
;(assert (id-wsd_root_mng ?id pataka_kara))
;(if ?*debug_flag* then
;(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  plunk.clp     plunk7 "  ?id " pataka_kara)" crlf))
;)


;Hindi meaning(Noun)
;http://dict.hinkhoj.com
;1. पटकना
;2. सस्ती शराब
;3. झनकने की आवाज़
;4. बजाना
;5. लगाना
;6. बैठिये

;verb
;http://www.shabdkosh.com
;1. पटक

;http://sentence.yourdictionary.com
;Plunked down the the event through the family meeting place had actually slept.
;Plunk down money for.
;Suburb of round general growth has was slightly below then god plunks.


;http://www.reference.com
;The sound of each note plunked on a piano might evoke a different color.
;But the rank-and-file spectators plunked down anywhere.
;Investors have plunked down more than a billion dollars in the county to get a piece of the action.
;It's really a frumpy old two-story farmhouse with a semi-attached boot shed, plunked in the middle of a big gravel driveway.
;Everyone had been plunked down there on the sixth day and that was that-the past was a circle, and the future would be, too.

;http://dict.hinkhoj.com
;At the night the man heard the plunk but was unable to see what it is.
;The poor people can afford plunk only.

