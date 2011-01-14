
(defrule dedicate0
(declare (salience 5000))
(id-root ?id dedicate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dedicated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samarpiwa_kiyA_huA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dedicate.clp  	dedicate0   "  ?id "  samarpiwa_kiyA_huA )" crlf))
)

(defrule dedicate1
(declare (salience 4900))
(id-root ?id dedicate)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id dedicated )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id samarpiwa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  dedicate.clp  	dedicate1   "  ?id "  samarpiwa )" crlf))
)

;"dedicated","Adj","1.samarpiwa"
;He is a dedicated worker.
;
;
(defrule dedicate2
(declare (salience 4800))
(id-root ?id dedicate)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id samarpiwa_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  dedicate.clp 	dedicate2   "  ?id "  samarpiwa_karanA )" crlf))
)

;"dedicate","N","1.samarpiwa karanA"
;Gandhiji dedicated his life for his country.
;
;
