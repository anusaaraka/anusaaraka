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

;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith) 6-Feb-2014
;Acharya Satyabrata Samasrami was appointed for advanced instruction in the Vedas and Pandeya Ramavatar Sarma to lecture on Vednata Philosophy.[gyanannidhi]
;वेदों में उच्च शिक्षा के लिए आचार्य सत्यव्रत समाश्रमी को नियुक्त किया गया और वेदांत दर्शन पर व्याख्यान देने के लिए पाण्डेय रामावतार शर्मा को।
(defrule advanced1
(declare (salience 5000))
(id-word ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  =(+ ?id 1) ?id )
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advanced.clp    advanced1   "  ?id "  ucca )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith) 6-Feb-2014
;The lectures were attended by advanced students and teachers of the colleges and aroused great interest in research.[gyananidhi]
;इन व्याख्यानों को उच्च कक्षाओं के छात्रों और कालिजों के अध्यापकों ने सुना और इनसे शोधकार्य में रूचि जागृत हुई।
(defrule advanced2
(declare (salience 5000))
(id-word ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  =(+ ?id 1) ?id )
(id-root =(+ ?id 1) student|teacher)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca_kakRAo_ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advanced.clp    advanced2   "  ?id "  ucca_kakRAo_ke )" crlf))
)

;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith) 6-Feb-2014
;Today's advanced technology has made the world smaller.[old example]
;आज की उन्नत प्रौद्योगिकी ने दुनिया को छोटा बना दिया है.
(defrule advanced3
(declare (salience 5000))
(id-word ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  =(+ ?id 1) ?id )
(id-root =(+ ?id 1) technology)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unnawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advanced.clp    advanced3   "  ?id "  unnawa )" crlf))
)


;@@@ Added by Garima Singh(M.Tech-C.S,Banasthali Vidyapith) 6-Feb-2014
;His advanced age does not prevent him from singing.[old example]
;उसकी बढ़ी उम्र उसे गाने से नहीं रोकती है. 
(defrule advanced4
(declare (salience 5000))
(id-word ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  =(+ ?id 1) ?id )
(id-root =(+ ?id 1) age)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  advanced.clp    advanced4   "  ?id "  baDZa )" crlf))
)

;***************************DEFAULT RULE******************************

;$$$ Modified by Garima Singh(M.Tech-C.S, Banasthali Vidyapith)31-jan-2014
;changed the meaning from 'unnawa' to 'pUrva'
;Please give us advance warning of any changes.[oald]
;कृपया हमें किसी भी परिवर्तन की पूर्व चेतावनी दीजिए . 
;We need advance notice of the numbers involved.[oald]
;हमें सम्मिलित अंको की पूर्व सूचना की जरूरत है . 
(defrule advanced5
(declare (salience 4800))
(id-word ?id advanced )
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id pUrva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  advanced.clp   advanced5   "  ?id "  pUrva )" crlf))
)

;**************************EXAMPLES************************************

;The protestors advanced their leader to talk with the minister.
;The date of the trial has been advanced by one week.
;Our knowledge of the disease has advanced considerably over recent years.
;The mob advanced on us, shouting angrily.
;She closed the door firmly and advanced towards the desk.
;The lectures were attended by advanced students and teachers of the colleges and aroused great interest in research.
;Acharya Satyabrata Samasrami was appointed for advanced instruction in the Vedas and Pandeya Ramavatar Sarma to lecture on Vednata Philosophy.
;The company's shares advanced after the new director joined.
;The corporation has advanced a new policy for regularizing illegal constructions
;The time of the meeting was advanced in view of the night curfew in the city.
;Today's advanced technology has made the world smaller.
;This dictionary is meant for an advanced learner.
;Though attractive,most of Mr.Gupta's very advanced ideas about traffic regulation are impractical.
;His advanced age does not prevent him from singing.
;The army was ordered to advance.
;The protestors advanced their leader to talk with the minister.
;The man advanced towards her menacingly.
;The company's shares advanced after the new director joined.
;The corporation has advanced a new policy for regularising illegal constructions.
;The time of the meeting was advanced in view of the night curfew in the city.


;"pragawi karanA" 
;The company's shares advanced after the new director joined.
;naye nixeSaka ke kampanI kA kAryaBAra lene ke bAxa se Seyarsa pragawi kara gaye.
;-pragawi karanA-Age baDZanA


;vicAra/suJAva xenA 
;The corporation has advanced a new policy for regularizing illegal constructions
;nigama ne gErakAnUnI nirmANoM ko niyamiwa karane ke liye naye suJAva xiye.-suJAva xenA-suJAva Age baDZAnA 



;"niSciwa samaya se pUrva karanA"  
;The time of the meeting was advanced in view of the night curfew in the city.
;nagara meM rAwa ke karPyu ko xeKawe huye goRTI kA samaya niSciwa samaya se pUrva kara xiyA gayA.-pahale se Age kara xiyA gayA. 


;"advanced","Adj","1.unnawa"
;Today's advanced technology has made the world smaller.

;--"2.ucca_SreNI_ke"
;This dictionary is meant for an advanced learner.

;--"3.nayA/aBI_waka_sAmAnya_rupa_se_svIkqwi_nA_milA_huA"
;Though attractive,most of Mr.Gupta's very advanced ideas about traffic regulation are impractical.

;--"4.baDZA_huA"
;His advanced age does not prevent him from singing.


;default_sense && category=verb	Age_baDZanA[baDAnA]	0
;"advance","V","1.Age_baDZanA[baDAnA]"
;The army was ordered to advance.
;The protestors advanced their leader to talk with the minister.
;The man advanced towards her menacingly.

;--"2.pragawi_karanA"
;The company's shares advanced after the new director joined.

;--"4.vicAra_yA_suJAva_xenA"
;The corporation has advanced a new policy for regularising illegal
;constructions.

;--"5.niSciwa_samaya_se_pUrva_karanA"
;The time of the meeting was advanced in view of the night curfew in the city.

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_advanced2
(declare (salience 5000))
(id-word ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa =(+ ?id 1) ?id )
(id-root =(+ ?id 1) student|teacher)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca_kakRAo_ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " advanced.clp   sub_samA_advanced2   "   ?id " ucca_kakRAo_ke )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_advanced2
(declare (salience 5000))
(id-word ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa =(+ ?id 1) ?id )
(id-root =(+ ?id 1) student|teacher)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id ucca_kakRAo_ke))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " advanced.clp   obj_samA_advanced2   "   ?id " ucca_kakRAo_ke )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_advanced3
(declare (salience 5000))
(id-word ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa =(+ ?id 1) ?id )
(id-root =(+ ?id 1) technology)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unnawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " advanced.clp   sub_samA_advanced3   "   ?id " unnawa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_advanced3
(declare (salience 5000))
(id-word ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa =(+ ?id 1) ?id )
(id-root =(+ ?id 1) technology)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id unnawa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " advanced.clp   obj_samA_advanced3   "   ?id " unnawa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_advanced4
(declare (salience 5000))
(id-word ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(subject-subject_samAnAXikaraNa =(+ ?id 1) ?id )
(id-root =(+ ?id 1) age)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " advanced.clp   sub_samA_advanced4   "   ?id " baDZa )" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_advanced4
(declare (salience 5000))
(id-word ?id advanced)
?mng <-(meaning_to_be_decided ?id)
(object-object_samAnAXikaraNa =(+ ?id 1) ?id )
(id-root =(+ ?id 1) age)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " advanced.clp   obj_samA_advanced4   "   ?id " baDZa )" crlf))
)
