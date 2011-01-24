
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
;
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

(defrule sound2
(declare (salience 4800))
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
;
(defrule sound3
(declare (salience 4700))
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


;Added by Meena(9.11.09)
;They were awakened by the sound of a gun . 
(defrule sound4
(declare (salience 4600))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-of_saMbanXI  ?id ?id1)(viSeRya-RaRTI_viSeRaNa ?id ?id1))
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AvAjZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp     sound4   "  ?id "  AvAjZa )" crlf))
)

;Salience reduced by Meena(9.11.09)
(defrule sound5
(declare (salience 1000))
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
;
(defrule sound6
(declare (salience 4500))
(id-root ?id sound)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bajA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sound.clp 	sound6   "  ?id "  bajA )" crlf))
)

;Added by sheetal(4-03-10)
;Monday sounds good for the meeting .
(defrule sound7
(declare (salience 4500))
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

;"sound","V","1.bajAnA"
;The bell is sounded every hour.
;--"2.uccAriwa_karanA"
;The 'b' in'dumb' is not sounded.
;--"3.laganA"
;It sounds to me like you need a holiday.
;--"4.samuxra_kI_gaharAI_ko_upakaraNOM_se_nikAlanA"
;We can sound the depth of thw sea with the help of an echo-sounder.
;
