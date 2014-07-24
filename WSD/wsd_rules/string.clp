

;Her fingers are running on guitar's string like an expert gitarist.
;उसकी उंगलिया  एक निपुण  गिटार वादक की तरह गिटार के तार पर चल रही हैं.
;added by Rashmi Ranjan
(defrule string0
(declare (salience 5000))
(id-root ?id string)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?id1)
(id-root ?id1 guitar|cello|violin|piano)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kA_wAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  string.clp 	string0   "  ?id "  kA_wAra )" crlf))
)
;@@@ Added by jagriti(10.2.2014)
;A string of insults .[iit-bombay wordnet]
;अपमानों का सिलसिला . 
(defrule string1
(declare (salience 4900))
(id-root ?id string)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 insult)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id silasilA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  string.clp 	string1   "  ?id "  silasilA )" crlf))
)
;@@@ Added by jagriti(10.2.2014)
;A string of visitors.[iit-bombay wordnet]
;दर्शकों की कतार . 
(defrule string2
(declare (salience 4800))
(id-root ?id string)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-root ?id1 visitor)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id kawAra))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  string.clp 	string2   "  ?id "  kawAra )" crlf))
)


;The band had a string of hits in the 1990s.
;1990 के दशक में  बैंड के पास हिट की श्रृंखला थी.
;A long string of names.
;नामों की एक लंबी श्रृंखला.
;A string of robberies.
;डकैती की एक श्रृंखला.
;A computer has two strings of number.
;कंप्यूटर के पास अंको की दो श्रृंखला होती है.
;Added by Rashmi Ranjan
(defrule string3
(declare (salience 4700))
(id-root ?id string)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id SrqMKalA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  string.clp 	string3   "  ?id "  SrqMKalA )" crlf))
)
;@@@ Added by jagriti(10.2.2014)
;To string flowers in wreath.[rajpal]
;फूलों के हार में फूल पिरोना . 
(defrule string4
(declare (salience 4900))
(id-root ?id string)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 flower|perl|bead)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id piro))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  string.clp 	string4   "  ?id "  piro )" crlf))
)
;;@@@ Added by jagriti(10.2.2014)
;The boy can not string the bow.[rajpal]
;लडका धनुष नहीं चढा सकता है . 
(defrule string5
(declare (salience 4800))
(id-root ?id string)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-object ?id ?id1)
(id-root ?id1 bow)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id caDZA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  string.clp 	string5   "  ?id "  caDZA )" crlf))
)
;@@@ Added by jagriti(10.2.2014)
;The convict was strung up.[rajpal]
;दोषी को फांसी दी जा रही था .
(defrule string6
(declare (salience 4700))
(id-root ?id string)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(id-root ?id1 up)
(kriyA-upasarga ?id ?id1)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id ?id1 PAMsI_xiyA_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " string.clp	string6  "  ?id "  " ?id1 "  PAMsI_xiyA_jA )" crlf))
)
;..............default rule..........
;I tied up my luggage with a string.
;मैंने रस्सी से अपना सामान बांधा .
(defrule string7
(declare (salience 100))
(id-root ?id string)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id rassI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  string.clp 	string7   "  ?id "  rassI )" crlf))
)
;"string","N","1.rassI"
;I tied up my luggage with a string.
;--"2.gitAra_yA_vayolina_kA_wAra"
;Her fingers are running on gitar's string like an expert gitarist.
;--"3.SrqMKalA"
;A string of imported beads is used to make the necklace.
;--"4.guNoM_kI_SrufKalA"

;modified by Rashmi Ranjan
(defrule string8
(declare (salience 100))
(id-root ?id string)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAzXA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  string.clp 	string8   "  ?id "  bAzXA_huA )" crlf))
)

;"string","V","1.ko_rassI_se_bAzXanA"
; Lamps were string on the pole.
;--"2.Cote_Cote_cIjZoM_ko_sUwra_meM_PironA"
;Fibers strung together to form rope.
;
