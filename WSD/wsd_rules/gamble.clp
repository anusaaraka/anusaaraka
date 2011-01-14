
(defrule gamble0
(declare (salience 5000))
(id-root ?id gamble)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id gambling )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id juA_KelanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  gamble.clp  	gamble0   "  ?id "  juA_KelanA )" crlf))
)

;"gambling","N","1.juA_KelanA"
;Gambling is very common all over the world.
;
(defrule gamble1
(declare (salience 4900))
(id-root ?id gamble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id juA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gamble.clp 	gamble1   "  ?id "  juA )" crlf))
)

;"gamble","N","1.juA"
;He has played a gamble by investing in stock market.
;
(defrule gamble2
(declare (salience 4800))
(id-root ?id gamble)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id juA_Kela))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  gamble.clp 	gamble2   "  ?id "  juA_Kela )" crlf))
)

;"gamble","V","1.juA_KelanA"
;People gamble a lot on festivals.
;--"2.xAzva_para_lagAnA"
;Yudhishthir gambled even his brothers && wife in the game of choupad.
;
