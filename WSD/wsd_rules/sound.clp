
(defrule sound0
(declare (salience 5000))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sounding )
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id jisakI_eka_KAsa_Xvani_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sound.clp  	sound0   "  ?id "  jisakI_eka_KAsa_Xvani_ho )" crlf))
)

;"sounding","Adv","1.jisakI eka KAsa Xvani ho"
;We heard a loud sounding pop music.
(defrule sound1
(declare (salience 4900))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-word =(+ ?id 1) like )
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound1   "  ?id "  laga )" crlf))
)

;Added by Meena(9.11.09)
;They were awakened by the sound of a gun . 
(defrule sound4
(declare (salience 4800))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-RaRTI_viSeRaNa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp     sound4   "  ?id "  AvAjZa )" crlf))
)


;Added by sheetal(4-03-10)
;Monday sounds good for the meeting .
(defrule sound7
(declare (salience 4800))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root =(+ ?id 1) good)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawIwa_ho))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp     sound7   "  ?id "  prawIwa_ho )" crlf))
)
;@@@ Added by jagriti(6.3.2014)
;His explanation sounds reasonable to me.[oald]
;उसकी व्याख्या मुझे पर्याप्त लगती है . 
;You sounded just like your father when you said that.[oald]
;आप आपके पिता की तरह लगे जब आपने वह कहा  . 
(defrule sound8
(declare (salience 4700))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(id-cat_coarse =(+ ?id 1) adjective)(id-root =(+ ?id 1) as|like|alike|just))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id laga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound8   "  ?id "  laga)" crlf))
)
;@@@ Added by jagriti(6.3.2014)
;They are free to sound their opinions.[rajpal]
;वे अपनी राय व्यक्त करने के लिए स्वतन्त्र हैं . 
(defrule sound9
(declare (salience 4700))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 opinion|idea)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vyakwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound9   "  ?id "  vyakwa_kara)" crlf))
)
;@@@ Added by jagriti(6.3.2014)
;Let me first sound the person.[rajpal]
;व्यक्ति को मन टटोलने दो पहले मुझे . 
(defrule sound10
(declare (salience 4700))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id mana_tatola))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound10   "  ?id "  mana_tatola)" crlf))
)
;@@@ Added by jagriti(6.3.2014)
;Now it is not difficult to sound the deep seas.[rajpal]
;अब गहरे समुद्र की गहराई नापना मुश्किल नहीं है . 
(defrule sound11
(declare (salience 4600))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object  ?id ?id1)
(id-root ?id1 sea|lake|river)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharAI_nApa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound11   "  ?id "  gaharAI_nApa)" crlf))
)
;@@@ Added by jagriti(6.3.2014)
;The judge has given a sound judgment.[wordnet]
;न्यायाधीश ने एक सही निर्णय दिया है . 
(defrule sound12
(declare (salience 4500))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 judgement|opinion|idea|view|argument|approach)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound12   "  ?id "  sahI)" crlf))
)
;@@@ Added by jagriti(6.3.2014)
;Sound mind in sound body.[rajpal]
;स्वस्थ शरीर में स्वस्थ मन . 
(defrule sound13
(declare (salience 4400))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 mind|body|heart)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound13   "  ?id "  svasWa)" crlf))
)
;@@@ Added by jagriti(6.3.2014)
;A sound sleep.[rajpal] 
(defrule sound14
(declare (salience 4400))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 sleep)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound14   "  ?id "  gaharI)" crlf))
)
;@@@ Added by jagriti(6.3.2014)
;A sound relation between mother and daughter.[wordnet]
;माँ और बेटी के बीच एक गहरा सम्बन्ध . 
(defrule sound15
(declare (salience 4300))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 relation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound15   "  ?id "  gaharA)" crlf))
)
;@@@ Added by jagriti(6.3.2014)
;He is a sound member of gang.[rajpal]
;वह दल का एक विश्वसनीय व्यक्ति है . 
(defrule sound16
(declare (salience 4200))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvasanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound16   "  ?id " viSvasanIya)" crlf))
)
;@@@ Added by jagriti(6.3.2014)
;Sound beating.[rajpal]
;खूब पिटाई . 
(defrule sound17
(declare (salience 4200))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(viSeRya-viSeRaNa  ?id1 ?id)
(id-root ?id1 beating)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound17   "  ?id " KUba)" crlf))
)

;.....default rule...
(defrule sound2
(declare (salience 100))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id yukwiyukwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound2   "  ?id "  yukwiyukwa )" crlf))
)

;"sound","Adj","1.yukwiyukwa"
;His views on morality are very sound.

(defrule sound6
(declare (salience 100))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound6   "  ?id "  bajA )" crlf))
)
;"sound","V","1.bajAnA"
;The bell is sounded every hour.

;Salience reduced by Meena(9.11.09)
(defrule sound5
(declare (salience 100))
;(declare (salience 4600))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Xvani))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound5   "  ?id "  Xvani )" crlf))
)

;"sound","N","1.Xvani/AvAjZa"
;He could hear a faint sound from the bushes.

(defrule sound3
(declare (salience 100))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adverb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharAI_ke_sAWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound3   "  ?id "  gaharAI_ke_sAWa )" crlf))
)

;"sound","Adv","1.gaharAI_ke_sAWa/acCI_waraha"
;He was sound awake.


;--"2.uccAriwa_karanA"
;The 'b' in'dumb' is not sounded.
;--"3.laganA"
;It sounds to me like you need a holiday.
;--"4.samuxra_kI_gaharAI_ko_upakaraNOM_se_nikAlanA"
;We can sound the depth of thw sea with the help of an echo-sounder.


;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sound12
(declare (salience 4500))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 judgement|opinion|idea|view|argument|approach)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   sub_samA_sound12   "   ?id " sahI)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sound12
(declare (salience 4500))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 judgement|opinion|idea|view|argument|approach)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sahI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   obj_samA_sound12   "   ?id " sahI)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sound13
(declare (salience 4400))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mind|body|heart)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   sub_samA_sound13   "   ?id " svasWa)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sound13
(declare (salience 4400))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 mind|body|heart)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id svasWa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   obj_samA_sound13   "   ?id " svasWa)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sound14
(declare (salience 4400))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 sleep)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   sub_samA_sound14   "   ?id " gaharI)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sound14
(declare (salience 4400))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 sleep)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   obj_samA_sound14   "   ?id " gaharI)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sound15
(declare (salience 4300))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 relation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   sub_samA_sound15   "   ?id " gaharA)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sound15
(declare (salience 4300))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 relation)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id gaharA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   obj_samA_sound15   "   ?id " gaharA)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sound16
(declare (salience 4200))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvasanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   sub_samA_sound16   "   ?id " viSvasanIya)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sound16
(declare (salience 4200))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1  ?str&:(and (not (numberp ?str))(gdbm_lookup_p "human.gdbm" ?str)))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viSvasanIya))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   obj_samA_sound16   "   ?id " viSvasanIya)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule sub_samA_sound17
(declare (salience 4200))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(subject-subject_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 beating)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   sub_samA_sound17   "   ?id " KUba)" crlf))
)

;@@@ Added by Sukhada (12-05-14). Automatically generated this rule.
(defrule obj_samA_sound17
(declare (salience 4200))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
(object-object_samAnAXikaraNa ?id1 ?id)
(id-root ?id1 beating)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id KUba))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng " ?*wsd_dir* " sound.clp   obj_samA_sound17   "   ?id " KUba)" crlf))
)
