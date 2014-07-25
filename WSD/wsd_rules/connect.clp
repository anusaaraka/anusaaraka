
;##############################################################################
;#  Copyright (C) 2002-2005 Garima Singh (gsingh.nik@gmail.com)
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

;@@@ Added by Garima
;Connect the cable to the battery.[merriam]
;बैटरी से केबल को जोडिए
;A hallway connects the two rooms.[merriam]
;प्रवेश-कक्ष दो कमरो को जोडता है 
;I never connected you with that group of people.[merriam]
;मैंने लोगों के उस समूह के साथ आपको कभी नहीं जोडा .
(defrule connect0
(declare (salience 0))
(id-root ?id connect)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (kriyA_id-object_viBakwi ?id ko))
(assert (id-wsd_root_mng ?id jodZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  connect.clp 	connect0   "  ?id "  jodZa )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* "  connect.clp      connect0   "  ?id " ko )" crlf))
)


;@@@ Added by Garima
;Steve Jobs was brilliant because he knew how to connect with people.
;स्टेवे जोब्स् प्रतिभाशाली था क्योँकि वह जानता था कैसे लोगों के साथ जुडा जाये
;The two bones connect at the elbow.
;दो हड्डियाँ कुहनी में जुडती हैं
(defrule connect2
(declare (salience 3700))
(id-root ?id connect)
?mng <-(meaning_to_be_decided ?id)
(not(kriyA-object ?id ?))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id judZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  connect.clp 	connect2   "  ?id "  judZa )" crlf))
)

;@@@ Added by Garima
;Has the phone/ electricity/ gas been connected  in your new place yet? [cambridge]
;क्या अभी तक टेलीफोन आपके नये स्थान में लग गया है 
(defrule connect3
(declare (salience 3900))
(id-root ?id connect)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject ?id ?id1)
(id-word ?id1 phone|electricity|gas)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  connect.clp 	connect3   "  ?id "  laga )" crlf))
)

;@@@ Added by Garima
;Click Continue to connect to the Internet.
;इंटरनेट से जुडने के लिये continue क्लिक करो
(defrule connect4
(declare (salience 4000))
(id-root ?id connect)
?mng <-(meaning_to_be_decided ?id)
(to-infinitive  ?id1 ?id)
(kriyA-to_saMbanXI  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id judZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  connect.clp 	connect4   "  ?id "  judZa )" crlf))
)



;********************************************************** EXAMPLES **************************************************************************

;relate:
;She's an actress I connect with the theatre rather than films.[cambridge]
;Police are connecting the break-in with other recent thefts in the area.[cambridge]

;join:
;Can I connect my printer to your computer? [cambridge]
;Where does the cooker connect (up) to the electricity? [cambridge] 
;Has the phone/ electricity/ gas been connected  in your new place yet? [cambridge]
;ideas that connect easily to form a theory [merriam]

;phone:
;Could you connect me with/to a number in Paris, please? I can't seem to get through.[cambridge]

;transport:
;Your flight arrives at 12.30, when it connects with a coach service to your hotel. [cambridge]
;There's a connecting train service between the airport and the city.[cambridge]


;connecting flights[merriam]
;passengers connecting with international flights[merriam]
;to have or establish a rapport:[merriam]
;tried to connect with the younger generation
;to establish a communications connection:[merriam]
;connect to the Internet

; Can you connect the hose to the sprinkler?[merriam]
; Connect the cable to the battery.[merriam]
; A hallway connects the two rooms.[merriam]
; It's the major highway connecting the two towns.[merriam]
; A common theme connects the stories.[merriam]
; The two bones connect at the elbow.[merriam]
; The hose connects easily to the sprinkler.[merriam]
; The bedroom connects to the kitchen.[merriam]
; I never connected you with that group of people.[merriam]
; There's no evidence connecting the company directly to the scandal.[merriam]
;Steve Jobs was brilliant because he knew how to connect with people.[merriam]

;The towns are connected by train and bus services.[oald]
;The canal was built to connect Sheffield with the Humber estuary.[oald]
;a connecting door (= one that connects two rooms).[oald]
;The rooms on this floor connect.[oald]
;First connect the printer to the computer.[oald]
;We're waiting for the telephone to be connected.[oald]
;Click Continue to connect to the Internet.[oald]
;First connect the printer to the computer.[oald]
;We are waiting for the telephone to be connected.[oald]
;There was nothing to connect him with the crime.[oald]
;I was surprised to hear them mentioned together: I had never connected them before.[oald]
;Hold on please, I am trying to connect you.[oald]
;They met a couple of times but they didn't really connect.[oald]

;******************************************************* TO BE RESOLVED LATER ****************************************************************

;NOTE: more appropriate meanings can be given but for the time being above rules can be used.
;*****

;She's an actress I connect with the theatre rather than films.[cambridge]
;We are waiting for the telephone to be connected.
;They met a couple of times but they didn't really connect.
;ideas that connect easily to form a theory.
;Could you connect me with/to a number in Paris, please? I can't seem to get through.
;Your flight arrives at 12.30, when it connects with a coach service to your hotel. 
;There is a connecting train service between the airport and the city.
;passengers connecting with international flights
;I was surprised to hear them mentioned together, I had never connected them before.
;Hold on please, I am trying to connect you.

;************************************************************** HELP *************************************************************************

;The rooms on this floor connect.[oald]
;Anusaaraka output: इस फर्श पर कमरे जुडते हैं
;Actual translation: इस फर्श पर कमरे [किसी मार्ग या हाल द्वारा ]जुडे हुये हैं 

;NOTE:

;1. There is a tam problem in english. When this sentence is translated in hindi, construction of sentence is changed.
;2. In english sentence the path connecting the two rooms is not mentioned.
;It is understood that the two rooms are connected by some passage but what passage connects them is not mentioned(eg:rooms connect through wide openings). Whereas in hindi translation we will have to mention the path while translating. 
;Whereas in hindi translation we will have to mention the path while translating. 


