
(defrule poise0
(declare (salience 5000))
(id-root ?id poise)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id poised )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saMwuliwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  poise.clp  	poise0   "  ?id "  saMwuliwa )" crlf))
)

;"poised","Adj","1.saMwuliwa"
;The cup poised on the edge of the table.
;--"2.wEyAra"
;He is poised on the edge of the swimming pool.
;--"3.saMyamI"
;The student talked to the principal in a poised manner.
;
(defrule poise1
(declare (salience 4900))
(id-root ?id poise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwulana))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poise.clp 	poise1   "  ?id "  saMwulana )" crlf))
)

;"poise","N","1.saMwulana"
;He seemed violent for a moment, but quickly recovered his poise.
;She is a woman of great poise.
;
(defrule poise2
(declare (salience 4800))
(id-root ?id poise)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saMwuliwa_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  poise.clp 	poise2   "  ?id "  saMwuliwa_kara )" crlf))
)

;"poise","V","1.saMwuliwa_karanA"
;A diver poised his body before taking a dive.
;
