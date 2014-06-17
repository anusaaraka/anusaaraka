
;@@@ Added by Anita-24.4.2014
;There's a lot of resistance to the idea of a united Europe. [cambridge dictionary]
;संयुक्त यूरोप के विचार के लिए बहुत सारी बाधाएं हैं ।
;The car's speed was reduced by air/wind resistance. [cambridge dictionary]
;हवा की बाधा के कारण कार की गति कम हो गई थी ।
(defrule resistance0
(declare (salience 3500))
(id-root ?id resistance)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-to_saMbanXI  ?id ?)(kriyA-by_saMbanXI  ?kri ?id)(kriyA-with_saMbanXI  ? ?id))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bAXA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resistance.clp 	resistance0   "  ?id "  bAXA)" crlf))
)
;@@@ Added by Anita-25.4.2014
;Copper has (a) low resistance. [cambridge dictionary]
;कॉपर में प्रतिरोधकता कम होती है।
;The Mahatma instigated several campaigns of passive resistance against the British government in India. [cambridge ;dictionary]
;महात्मा ने भारत में ब्रिटिश सरकार के खिलाफ निष्क्रिय प्रतिरोधकता के कई अभियानों को उकसाया ।
(defrule resistance1
(declare (salience 4000))
(id-root ?id resistance)
?mng <-(meaning_to_be_decided ?id)
(or(viSeRya-viSeRaNa ?id ?)(saMjFA-to_kqxanwa  ?id ?))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiroXakawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resistance.clp 	resistance1   "  ?id "  prawiroXakawA)" crlf))
)
;@@@ Added by Anita-25.4.2014
;I took the path of least resistance and agreed with the others. [cambridge dictionary]
;मैंने कम से कम अवरोध का मार्ग अपनाया और अन्य लोगों के साथ सहमत हो गया ।
(defrule resistance2
(declare (salience 4100))
(id-root ?id resistance)
?mng <-(meaning_to_be_decided ?id)
(id-root =(- ?id 1) least)
;(viSeRya-viSeRaNa  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (affecting_id-affected_ids-wsd_group_root_mng ?id =(- ?id 1) kama_se_kama_AvaroXa_kA_mArga))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-affecting_id-affected_ids-wsd_group_root_mng   " ?*wsd_dir* " resistance.clp  resistance2 "  ?id "  " (- ?id 1) "  kama_se_kama_AvaroXa_kA_mArga )" crlf))
)


;@@@ Added by Anita-25.4.2014
;Resistance to change has nearly destroyed the industry. [oxford learner's dictionary]
;परिवर्तन के विरोध ने उद्योग को लगभग नष्ट कर दिया है ।
;The defenders put up a strong resistance. [oxford learner's dictionary]
;रक्षकों ने एक मजबूत प्रतिरोध लगाया ।
;The demonstrators offered little or no resistance to the police. [oxford learner's dictionary]
;प्रदर्शनकारियों ने पुलिस से बहुत कम या बिल्कुल भी प्रतिरोध नहीं किया ।
(defrule resistance3
(declare (salience 4500))
(id-root ?id resistance)
?mng <-(meaning_to_be_decided ?id)
(or(saMjFA-to_kqxanwa  ?id ?)(viSeRya-det_viSeRaNa  ?id ?))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resistance.clp 	resistance3   "  ?id "  prawiroXa)" crlf))
)

;@@@ Added by Anita-25.4.2014
;AIDS lowers the body's resistance to infection. [oxford learner's dictionary]
;एड्स संक्रमण शरीर की प्रतिरोधक क्षमता को कम करता है।
(defrule resistance4
(declare (salience 5000))
(id-root ?id resistance)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-RaRTI_viSeRaNa  ?id ?)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id prawiroXaka_kRamawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resistance.clp 	resistance4   "  ?id "  prawiroXaka_kRamawA)" crlf))
)
;####################################default-rule#####################################

;@@@ Added by Anita-24.4.2014
;Government troops offered no resistance . [cambridge dictionary]
;सरकारी सेनाओं ने कोई विरोध नहीं किया ।
;There has been a lot of resistance to this new law. [oxford learner's dictionary]
;इस नए कानून का बहुत कुछ विरोध किया गया है ।
(defrule resistance_default-rule
(declare (salience 0))
(id-root ?id resistance)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id viroXa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  resistance.clp 	resistance_default-rule   "  ?id "  viroXa )" crlf))
)
