
(defrule sweep0
(declare (salience 5000))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sweeping )
(id-cat_coarse ?id adjective)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id mahawwvapUrNa))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sweep.clp  	sweep0   "  ?id "  mahawwvapUrNa )" crlf))
)

;"sweeping","Adj","1.mahawwvapUrNa"
;Teacher has sweeping power on children.
;
(defrule sweep1
(declare (salience 4900))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-word ?id sweeping )
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_word_mng ?id saPAI_karanA))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_word_mng  " ?*wsd_dir* "  sweep.clp  	sweep1   "  ?id "  saPAI_karanA )" crlf))
)

;"sweeping","N","1.saPAI_karanA"
;Sweeping the home is the best work for a lady.
;
(defrule sweep2
(declare (salience 4800))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id noun)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id PElAva))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweep.clp 	sweep2   "  ?id "  PElAva )" crlf))
)

;"sweep","N","1.PElAva"
(defrule sweep3
(declare (salience 4700))
(id-root ?id sweep)
?mng <-(meaning_to_be_decided ?id)
(id-cat_coarse ?id verb)
=>
(retract ?mng)
(assert (id-wsd_root_mng ?id saPZAI_kara))
(if ?*debug_flag* then
(printout wsd_fp "(dir_name-file_name-rule_name-id-wsd_root_mng   " ?*wsd_dir* "  sweep.clp 	sweep3   "  ?id "  saPZAI_kara )" crlf))
)

;"sweep","V","1.saPZAI_karanA"
;I use to sweep my cycle everyday.
;
