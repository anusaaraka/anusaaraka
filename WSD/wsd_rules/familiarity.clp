;________________________________________________________________
;@@@ Added by Krithika 10/03/2014
;His familiarity with the language helped him enjoy his stay.	[OALD]
;वहाँ की  भाषा की जानकारी ने उसको वहाँ पर रहने का आनंद लेने में सहायता की ( लुफ्त उठाने में सहायता की )
(defrule familiarity1
(declare (salience 4900))
(id-root ?id familiarity)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-with_saMbanXI  ?id ?id1)
(id-root ?id1  ?str)
(test (and (neq (numberp ?str) TRUE) (neq (gdbm_lookup_p "animate.gdbm" ?str) TRUE)))
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnakAri))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiarity.clp  	familiarity1   "  ?id "  jAnakAri )" crlf))
)
;--------------------------------------------------
;@@@ Added by Krithika 10/03/2014
;When she saw the house, she had a feeling of familiarity.	[OALD]	
;जब उसने घर देखा , तो उसे ऐसा महसूस हुआ जैसे उसका जाना पहचाना हुआ (घर ) था . 
(defrule familiarity2
(declare (salience 4900))
(id-root ?id familiarity)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id1 ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id jAnA_pahacAnA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiarity.clp  	familiarity2   "  ?id "  jAnA_pahacAnA )" crlf))
)

;--------------------------------------------------
;@@@ Added by Krithika 10/03/2014
; She addressed me with an easy familiarity that made me feel at home.	[OALD]
; उसने मुझे इतनी आत्ममियता से सम्बोधित किया कि मुझे अपने घर जैसा ही महसूस हुआ (अपनापन महसूस हुआ )
(defrule familiarity3
(declare (salience 4900))
(id-root ?id familiarity)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-viSeRaNa  ?id ?id1)
(viSeRya-det_viSeRaNa  ?id ?id2)
(id-cat_coarse ?id1 adjective)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id AwmIyawA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiarity.clp  	familiarity3   "  ?id "  AwmIyawA )" crlf))
)
;--------------------------------------------------
;@@@ Added by Krithika 10/03/2014
; I love the familiarity of my old chair.	[Cambridge]
; मुझे अपनी पुरानी कुर्सी से बहुत लगाव है .
(defrule familiarity4
(declare (salience 4900))
(id-root ?id familiarity)
?mng <-(meaning_to_be_decided ?id)
(viSeRya-of_saMbanXI  ?id ?id1)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id apanApana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiarity.clp  	familiarity4   "  ?id "  apanApana )" crlf))
)

; ######################Default rules###################
;@@@ Added by Krithika 10/03/2014
; His familiarity with influential people helps him in his career.	[Hinkhoj]
;  उसकी जानपहचान (उसका हेल –मेल)  प्रभावशाली लोगों में होने से उसे अपना कैरियर बनाने में सहायता मिलती है        
(defrule familiarity0
(id-root ?id familiarity)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hela_mela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  familiarity.clp  	familiarity0   "  ?id "  hela_mela )" crlf))
)
;################### Additional examples #####################
; His excessive familiarity offended her.
; I love the familiarity of my mother's voice.
; His long familiarity with the Calcutta University, his wide grasp of educational problems and his extraordinary capacity of dealing with them, made Sir Asutosh the most commending figure in the University.
;Ellen's familiarity with pop music is astonishing. 
