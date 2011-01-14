
(defrule rank0
(declare (salience 5000))
(id-root ?id rank)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id ranking )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id paxa_ke_anusAra_SreNI_krama_meM_raKanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  rank.clp  	rank0   "  ?id "  paxa_ke_anusAra_SreNI_krama_meM_raKanA )" crlf))
)

;"ranking","N","1.paxa_ke_anusAra_SreNI_krama_meM_raKanA"
;Steffi Graf retained her no.1 world ranking.
;
(defrule rank1
(declare (salience 4900))
(id-root ?id rank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id paxavI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rank.clp 	rank1   "  ?id "  paxavI )" crlf))
)

(defrule rank2
(declare (salience 4800))
(id-root ?id rank)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kisI_viReSa_SreNI_me_A))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  rank.clp 	rank2   "  ?id "  kisI_viReSa_SreNI_me_A )" crlf))
)

;"rank","VTI","1.kisI_viReSa_SreNI_me_AnA"
;He ranks well ahead of his classmates in mathematics. 
;--"2.paxa_me_UzcA_honA"   
;She ranks a good position in her field.
;--"3.viSeRa_SreNI_me_raKanA"
;He was ranked among the best dressed men.
;--"4.paxa_me_UzcA_honA"  
;The colonel ranks all other officers in the squadron. 
;
;