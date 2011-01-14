
(defrule swell0
(declare (salience 5000))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id swollen )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sUjA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  swell.clp  	swell0   "  ?id "  sUjA_huA )" crlf))
)

;"swollen","Adj","1.sUjA huA"
;He could not write with his swollen finger.
;
(defrule swell1
(declare (salience 4900))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id swelling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id sUjana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  swell.clp  	swell1   "  ?id "  sUjana )" crlf))
)

;"swelling","N","1.sUjana"
;Wasp things cause swelling && sharp pain.
;
;
(defrule swell2
(declare (salience 4800))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id1 heart)
(kriyA-subject ?id ?id1)
;(id-cat_coarse ?id verb) this and the above line are automatically modified using a program by Sukhada
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id Pula))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swell.clp 	swell2   "  ?id "  Pula )" crlf))
)

(defrule swell3
(declare (salience 4700))
(id-root ?id swell)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id sUja))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  swell.clp 	swell3   "  ?id "  sUja )" crlf))
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
