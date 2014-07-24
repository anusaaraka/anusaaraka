

;@@@ Added by jagriti(8.1.2014)
;She was stirred by his sad story.[oald]
;वह उसकी दुखद कहानी से उत्तेजित हो गया.
(defrule stir1
(declare (salience 4900))
(id-root ?id stir)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(or(kriyA-by_saMbanXI  ?id ?id1)(kriyA-subject ?id ?id1))
(id-root ?id1 story|book)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id uwwejiwa_kara ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stir.clp 	stir1   "  ?id "  uwwejiwa_kara)" crlf))
)

;@@@ Added by jagriti(8.1.2014)
;A feeling of guilt began to stir in her.[oald] 
;अपराध की भावना उसके अंदर उमड़ना शुरू हुईं.
(defrule stir2
(declare (salience 4800))
(id-root ?id stir)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
(kriyA-in_saMbanXI  ?id ?id1)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id umadZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stir.clp 	stir2   "  ?id "  umadZa)" crlf))
)
;@@@ Added by jagriti(8.1.2014)
;The students created a huge stir over the principal's remark.
;छात्रों ने प्रिंसिपल की टिप्पणी पर बतंगड़ खड़ा कर दिया. 
(defrule stir3
(declare (salience 4600))
(id-root ?id stir)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
(id-root ?id1 create)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id bawaMgadZa ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stir.clp 	stir3   "  ?id "  bawaMgadZa)" crlf))
)
;@@@ Added by jagriti(8.1.2014)
;The news created a stir in the locality. 
;खबर ने इलाके में एक सनसनी पैदा कर दी.
(defrule stir4
(declare (salience 4700))
(id-root ?id stir)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
(kriyA-object ?id1 ?id)
;(id-root ?id1 create)
(kriyA-subject  ?id1 ?id2)
(id-root ?id2 news|fire)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sanasanI))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stir.clp 	stir4   "  ?id "  sanasanI)" crlf))
)
;.....Default rule....
;"stir","N","1.halacala"
;I gave a stir to the tea in order to dissolve the sugar.
;--"2.hilA_xenevAlA"
;Her sudden death was quite a stir.
;$$$ Modified by jagriti(3.4.2014).halacala instead of vidolana. 
;A fire at a fireworks shop in Dehradun road has caused quite a stir.[news-dev]
;देहरादून मार्ग स्थित एक पटाखे की दुकान में आग लगने से हलचल मच गयी। 
(defrule stir5
(declare (salience 1))
(id-root ?id stir)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id halacala))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stir.clp 	stir5   "  ?id "  halacala)" crlf))
)
;"stir","V","1.hilanA"
;He sat there for two hours without stirring.
;--"2.hilAnA"
;She stirred the tea with a spoon.
;Slight music stirred him into action.
;I've put sugar in your tea but I havn't stir it. 
;मैंने अापकी चाय में चीनी डाल दिया है, लेकिन हिलाया नहीं है.
;A gentle breeze stirred the leaves.
;एक अच्छी हवा ने पत्तों को हिला दिया.
(defrule stir6
(declare (salience 1))
(id-root ?id stir)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id hilA ))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  stir.clp 	stir6   "  ?id "  hilA )" crlf))
)
;The story of the beggar was quite stirring.
(defrule stir7
(declare (salience 1))
(id-root ?id stir)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id stirring)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saxamA_pahuzcAnevAlA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  stir.clp  	stir7   "  ?id "  saxamA_pahuzcAnevAlA)" crlf))
)





