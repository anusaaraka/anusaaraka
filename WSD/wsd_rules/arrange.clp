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

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-jan-2014
;She arranged a loan with the bank.[oald]
;उसने बैंक से ऋण का प्रबन्ध किया . 
(defrule arrange1
(declare (salience 5000))
(id-root ?id arrange)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(id-word ?obj loan)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prabanXa_kara))
(assert (kriyA_id-object_viBakwi ?id kA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrange.clp 	arrange1   "  ?id "  prabanXa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " arrange.clp    arrange1   "  ?id " kA )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-jan-2014
;The party was arranged quickly.[oald]
;पार्टी फुर्ती से आयोजित की गयी थी . 
(defrule arrange2
(declare (salience 5000))
(id-root ?id arrange)
?mng <-(meaning_to_be_decided ?id)
(kriyA-subject  ?id ?sub)
(kriyA-karma  ?id ?sub)
(id-root ?sub party|meeting)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ayojiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrange.clp 	arrange2   "  ?id "  Ayojiwa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-jan-2014
;He arranged traditional folk songs for the piano.
;उसने पारंपरिक लोक गीतो को पियानो के लिये परिवर्तित किया . 
(defrule arrange3
(declare (salience 4000))
(id-root ?id arrange)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
(id-word ?id1 piano)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id parivarwiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrange.clp 	arrange3   "  ?id "  parivarwiwa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 17-jan-2014
;Have you arranged to meet him?[oald]
;क्या आप उससे मिलने के लिये व्यवस्था कर चुके हैं? 
(defrule arrange4
(declare (salience 4000))
(id-root ?id arrange)
?mng <-(meaning_to_be_decided ?id)
(kriyA-kriyArWa_kriyA  ?id ?id1)
(to-infinitive  ?id2 ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasWA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrange.clp 	arrange4   "  ?id "  vyavasWA_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 17-jan-2014
;We met at six, as arranged.[oald]
;
(defrule arrange5
(declare (salience 4000))
(id-root ?id arrange)
?mng <-(meaning_to_be_decided ?id)
(kriyA-vAkya_viBakwi  ?id ?id1)
(id-word ?id1 as)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id niSciwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrange.clp 	arrange5   "  ?id "  niSciwa_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 17-jan-2014
;We arranged for a car to collect us from the airport.[oald]
;हमने विमानपत्तन से हमें लेने के लिये गाडी की व्यवस्था कर ली है 
(defrule arrange6
(declare (salience 4000))
(id-root ?id arrange)
?mng <-(meaning_to_be_decided ?id)
(kriyA-for_saMbanXI  ?id ?id1)
(kriyA-kriyArWa_kriyA  ?id ?id2)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasWA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrange.clp 	arrange6   "  ?id "  vyavasWA_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 17-jan-2014
;I've arranged that we can borrow their car.[oald]
;मैं व्यवस्था कर चुका हूँ कि हम उनकी गाडी उधार ले सकते हैं . 
;I've arranged with the neighbours about feeding the cat while we are away.[oald]
;मैंने हमारी अनुपस्थिति में बिल्ली को खाना खिलाने के बारे में पडोसियों के साथ व्यवस्था कर ली है. 
(defrule arrange7
(declare (salience 4000))
(id-root ?id arrange)
?mng <-(meaning_to_be_decided ?id)
(or
(kriyA-vAkyakarma  ?id ?id1)
(kriyA-with_saMbanXI  ?id ?id1)
)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasWA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrange.clp 	arrange7   "  ?id "  vyavasWA_kara )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 17-jan-2014
; I must arrange my financial affairs and make a will.[oald]
; मुझे मेरे आर्थिक कार्यों को व्यवस्थित करना चाहिए और वसीयत नामा बनाना चाहिए . 
(defrule arrange8
(declare (salience 4000))
(id-root ?id arrange)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?obj)
(viSeRya-RaRTI_viSeRaNa  ?obj =(+ ?id 1))
;(id-root ?obj affair)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyavasWiwa_kara))
(assert (kriyA_id-object_viBakwi ?id ko))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrange.clp 	arrange8   "  ?id "  vyavasWiwa_kara )" crlf)
(printout wsd_fp "(dir_name-file_name-rule_name-kriyA_id-object_viBakwi   " ?*wsd_dir* " arrange.clp    arrange8   "  ?id " ko )" crlf)
)
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 17-jan-2014
;The meeting has been arranged for Wednesday.[cambridge]
;मीटिंग बुधवार को रखी गयी है
;Can I arrange an appointment for Monday?[oald]
;क्या मैं सोमवार को अपॉइंटमेंट\नियोजित भेंट रख सकता हूँ
(defrule arrange9
(declare (salience 4000))
(id-root ?id arrange)
?mng <-(meaning_to_be_decided ?id)
(or
(kriyA-subject  ?id ?id1)
(kriyA-object  ?id ?id1)
)
(id-root ?id1 meeting|appointment)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id raKa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrange.clp 	arrange9   "  ?id "  raKa )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 18/03/2014
;The society often arranges poetry readings .[oald]
; समाज अक्सर काव्य पाठ और सङ्गीत सन्ध्याएँ आयोजित करता है 
(defrule arrange10
(declare (salience 5000))
(id-root ?id arrange)
?mng <-(meaning_to_be_decided ?id)
(kriyA-object  ?id ?id1)
(samAsa_viSeRya-samAsa_viSeRaNa  ?id1 ?)
(id-root ?id1 evening|reading)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Ayojiwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrange.clp 	arrange10   "  ?id "  Ayojiwa_kara )" crlf)
)
)
;**************************DEFAULT RULES*************************************


;@@@ Added by Garima Singh(M.Tech-C.S, Banasthali Vidyapith) 16-jan-2014
(defrule arrange0
(declare (salience 0))
(id-root ?id arrange)
?mng <-(meaning_to_be_decided ?id)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  arrange.clp 	arrange0   "  ?id "  laga )" crlf))
)

;***********************EXAMPLES**********************************************

;The party was arranged quickly.[oald]
;She arranged a loan with the bank.[oald]
;Can I arrange an appointment for Monday?[oald]
;We met at six, as arranged.[oald]
;We've still got to arrange how to get to the airport.[oald]
;Have you arranged to meet him?[oald]
;I've arranged that we can borrow their car.[oald]
;We arranged for a car to collect us from the airport.[oald]
;I've arranged with the neighbours about feeding the cat while we are away.[oald]
;The books are arranged alphabetically by author.[oald]
;I must arrange my financial affairs and make a will.[oald]
;She arranged the flowers in a vase.[oald]
;He arranged traditional folk songs for the piano.[oald]

;He arranged traditional folk songs for the piano.[cambridge]
;I'm trying to arrange my work so that I can have a couple of days off next week.[cambridge]
;The meeting has been arranged for Wednesday.[cambridge]
;They arranged to have dinner the following month.[cambridge]
;I've already arranged with him to meet at the cinema.[cambridge]
;She's arranged for her son to have swimming lessons.[cambridge]
;I'd deliberately arranged that they should arrive at the same time.[cambridge]
;We haven't yet arranged when to meet.[cambridge]
;She arranged her birthday cards along the shelf.[cambridge]
;Who arranged these flowers so beautifully?[cambridge]
;His books are neatly arranged in alphabetical order.[cambridge]
;Beethoven's fifth symphony has been arranged for the piano.[cambridge]
;The famous jazz musician, Duke Ellington, was a composer, arranger and pianist.[cambridge] 
;We met at six, as arranged.[cambridge]
