
(defrule breed0
(declare (salience 5000))
(id-root ?id breed)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id breeding )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id uccavaMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  breed.clp  	breed0   "  ?id "  uccavaMSa )" crlf))
)

;"breeding","N","1.uccavaMSa"
;A woman of breeding && refinement
;
(defrule breed1
(declare (salience 4900))
(id-root ?id breed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id vaMSa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breed.clp 	breed1   "  ?id "  vaMSa )" crlf))
)

;"breed","N","1.vaMSa"
;A breed of Americans
;He experimented on a particular breed of white rats
;
(defrule breed2
(declare (salience 4800))
(id-root ?id breed)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id pExA_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  breed.clp 	breed2   "  ?id "  pExA_kara )" crlf))
)

;"breed","VT","1.pExA_karanA[karavAnA]"
;She breeds dogs
;
