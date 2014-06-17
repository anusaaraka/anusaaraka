;##############################################################################
;#  Copyright (C) 2013-2014 Jagrati Singh (singh.jagriti5@gmail.com)
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
;################################################################
;@@@ Addeed by jagriti(16.1.2014)
;It is necessary that we should sustain the same spirit.
;यह आवश्यक है कि हमें वही उत्साह बनाये रखने चाहिए . 
;You should sustain your claim to the property.
;आपको सम्पत्ति पर अपना दावा बनाये रखना चाहिए .
;They could not sustain their independence.
;वे अपनी स्वाधीनता बनाये नहीं रख सके .  
(defrule sustain0
(declare (salience 5000))
(id-root ?id sustain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 spirit|claim|independence)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id banAye_raKa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sustain.clp 	sustain0 "  ?id " banAye_raKa )" crlf))
)

;@@@ Addeed by jagriti(16.1.2014)
;He sustained severe injuries to the head.
;उसने उसके सिर को कष्टदायक चोटें पहुँचायी . 
(defrule sustain1
(declare (salience 4900))
(id-root ?id sustain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 injury|damage)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pahuMzcA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sustain.clp 	sustain1 "  ?id " pahuMzcA)" crlf))
) 

;@@@ Addeed by jagriti(16.1.2014)
;The company sustained losses of millions of dollars.[oald]
;कम्पनी ने दस लाख डॉलर का घाटा उठाया .
(defrule sustain2
(declare (salience 4800))
(id-root ?id sustain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 loss)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uTA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sustain.clp 	sustain2 "  ?id " uTA)" crlf))
) 

;@@@ Addeed by jagriti(16.1.2014)
;Some people sustain defeat in lack of confidence.
;कुछ लोग भरोसे की कमी में हार खाते हैं . 
(defrule sustain3
(declare (salience 4700))
(id-root ?id sustain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 defeat)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sustain.clp 	sustain3 "  ?id " KA)" crlf))
) 

;.....Default rule....
;@@@ Addeed by jagriti(16.1.2014)
;The ice will not sustain your weight. 
;बरफ आपका वजन संभाल नहीं पाएगी. 
(defrule sustain4
(declare (salience 100))
(id-root ?id sustain)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMBAla ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sustain.clp 	sustain4 "  ?id " saMBAla)" crlf))
) 
