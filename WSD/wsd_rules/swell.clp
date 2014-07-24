
(defrule swell0
(declare (salience 5000))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id swollen )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUjA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng  " ?*wsd_dir* "  swell.clp  	swell0   "  ?id "  sUjA_huA )" crlf))
)

;"swollen","Adj","1.sUjA huA"
;He could not write with his swollen finger.

(defrule swell1
(declare (salience 4900))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id swelling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUjana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   "?*wsd_dir* "  swell.clp  	swell1   "  ?id "  sUjana )" crlf))
)

;"swelling","N","1.sUjana"
;Wasp things cause swelling && sharp pain.
;
;$$$ Modified by jagriti(6.2.2014)....balloon is added in to the list..
;How can balloon swell so much.[rajpal]
;गुब्बारा इतना ज्यादा कैसे फूल सकता है . 
(defrule swell2
(declare (salience 4800))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 heart|balloon)
(kriyA-subject ?id ?id1)
(id-cat_coarse ?id verb) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   "?*wsd_dir* "  swell.clp 	swell2   "  ?id "  PUla )" crlf))
)

;@@@ Added by jagriti(6.2.2014)
;The river swelled after the rain.[rajpal]
;नदी वर्षा के बाद बढ गयी .
;The crowd at fair is swelling.[rajpal]
;भीड मेले में बढ् रही है.  
(defrule swell3
(declare (salience 4700))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 river|crowd)
(kriyA-subject ?id ?id1)
(id-cat_coarse ?id verb) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id baDa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   "?*wsd_dir* "  swell.clp 	swell3   "  ?id "  baDa )" crlf))
)
;@@@ Added by jagriti(6.2.2014)
;His love swelled over her.[rajpal]
;उसका प्रेम उसके प्रति उमड़ पड़ा. 
(defrule swell4
(declare (salience 4600))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 love|feeling)
(kriyA-subject ?id ?id1)
(id-cat_coarse ?id verb) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id umadZa_padZa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   "?*wsd_dir* "  swell.clp 	swell4   "  ?id "  umadZa_padZa )" crlf))
)
;@@@ Added by jagriti(6.2.2014)
;He was swelled with pride.[rajpal]
;वह गर्व से फूल गया.
(defrule swell5
(declare (salience 4500))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-root ?id1 pride)
(kriyA-with_saMbanXI ?id ?id1)
(id-cat_coarse ?id verb) 
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PUla_jA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   "?*wsd_dir* "  swell.clp 	swell5   "  ?id "  PUla_jA )" crlf))
)
;....Default rule....
;$$$ Modified by jagriti(6.2.2014)...default meaning from sUjA_huA to acCA.
;We had a swell time.[oald]
;हमारे पास अच्छा समय था.
(defrule swell6
(declare (salience 100))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id acCA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   "?*wsd_dir* "  swell.clp  	swell6  "  ?id "  acCA )" crlf))
)

(defrule swell7
(declare (salience 100))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng    "?*wsd_dir* "  swell.clp 	swell7   "  ?id "  sUja )" crlf))
)

;"swell","V","1.sUjanA"
;His legs got swelled.
;His eyes swelled with tears.
;--"2.baDanA"
;The group of onlookers soon swelled to a crowd.
;--"3.PUla jAnA"
;Her heart swelled with pride at his achievement.
;
;
